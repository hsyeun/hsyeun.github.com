---
layout: post
title:  "cron이 지연된다고?"
categories: devops
tags: [GitHub Actions, cron, CI/CD, schedule, delay]
image: assets/images/post/2025/2025-10-13-devops_github_actions_cron.jpg
published: true
---

Github Profile을 꾸미기 위해 Readme를 만들고, 이 Readme에 오픈소스 활동 내역 내용이 자동으로 작성되도록 `Github Actions`에 배치 설정을 해놓았다.  

![readme](/assets/images/post/2025/2025-10-13-devops_github_actions_cron1.png) *[Github Profile](https://github.com/hsyeun) Readme*


```yml
on:
  schedule:
    - cron: '0 15 * * *'
```

매일 한국시간 자정에 자동 실행되도록 설정했는데, 막상 실행이 되면 0시 정각이 아니라 20~22분씩 지연되어 실행되는 현상을 발견했다.  

![delay](/assets/images/post/2025/2025-10-13-devops_github_actions_cron2.png) *배치를 실행한 이틀동안 실제로 지연되어 실행되었다.*
  
  
지연되는 cron이란 처음 겪었다.  
CI/CD 자동화는 정확한 주기 실행이 핵심인데 GitHub Actions는 왜 지연이 되는 거지? **이유가 너무 궁금했다!!**  


## 원인 분석
[GitHub 공식 문서](https://docs.github.com/en/actions/tutorials/manage-your-work/schedule-issue-creation#expected-results)에서 아래와 같은 문구를 찾았다.

> The schedule event can be delayed during periods of high loads of GitHub Actions workflow runs.  
> High load times include the start of every hour. If the load is sufficiently high enough, some queued jobs may be dropped.  
> To decrease the chance of delay, schedule your workflow to run at a different time of the hour.

즉, GitHub Actions는 정확한 시각 실행을 보장하지 않는다.
GitHub의 글로벌 인프라 환경에서 수많은 워크플로우가 **공용 큐(queue)**에 등록되어 순차적으로 실행되기 때문이다. GitHub는 Jenkins 등과 같이 개별 서버로 사용하는 플랫폼이 아니기 때문에 발생하는 것으로 이해했다. 그렇게 생각하니 어쩌면 당연하네 싶기도 했다.  

결국 '0 15 * * *'로 설정해도 실제로는 `15:10~15:20(한국시간 00:10~00:20)` 에 실행될 수 있는 구조인 것이다.  

### GitHub Actions의 스케줄 구조
GitHub Actions의 스케줄은 이벤트 큐 기반으로 동작한다.

실행 과정은 다음과 같다.  
1. GitHub의 중앙 스케줄러가 매 분마다 전 세계 저장소의 워크플로우를 스캔  
2. 조건(cron)에 맞는 워크플로우를 이벤트 큐에 등록  
3. GitHub Actions Runner Pool에 작업이 할당되기를 대기  
4. 리소스가 확보되면 실제 워크플로우가 실행됨  

이 구조는 안정성과 분산 처리를 위한 설계지만 결국 큐에 대기열 지연이 필연적으로 발생한다.


### 다른 스케줄링 서비스와의 비교

| 서비스 | 구조 | 실행 방식 | 실행 정확도 |
|---|---|---|---|
| GitHub Actions | Event Queue 기반 | 중앙 큐 → Runner 할당 후 실행 | ±20분 |
| Linux Crontab | Local Daemon | OS 내부 프로세스 직접 실행 | ±1초 |
| AWS EventBridge | Serverless Trigger | AWS 내부 타이머 직접 호출 | ±1초 |
| Google Cloud Scheduler | Cloud Trigger | GCP API 직접 호출 | ±1초 |
| Airflow / Jenkins | Worker 기반 | 자체 워커 스케줄링 | ±1초~수초 |  


즉, GitHub Actions만 중앙 큐 기반이고, 다른 스케줄러들은 **직접 실행** 기반이기 때문에 지연이 거의 없다.


## 정확한 스케줄이 필요하다면?

GitHub Actions는 편리하지만 정확성이 중요한 주기 작업에는 적합하지 않다.  

정확한 실행이 필요하다면 다음 대안을 고려할 수 있다.  
* AWS Lambda + EventBridge → 초 단위 정확도
* Google Cloud Scheduler → REST API 기반 자동화에 적합
* 자체 서버 Crontab → 직접 Runner를 운영하는 환경에서 유용


----
GitHub Actions는 CI/CD 자동화에는 탁월하지만 정확한 시각에 반드시 실행되어야 하는 작업에는 부적합하다.  
이 차이를 구조적으로 이해하고 목적에 따라 도구를 올바르게 선택하는 것이 개발자의 본질적인 문제 해결 능력이라고 생각한다.  

나는 아직은 단지 readme에만 사용할 뿐이고, 실행시간이 크게 중요하지 않기 때문에 GitHub Actions를 계속 사용할 예정이지만 이후 또 다른 호기심에 다른 스케줄링 서비스를 기웃거리다가 변경할 수도 있을 것 같다 ㅋㅋ