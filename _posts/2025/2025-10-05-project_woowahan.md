---
layout: post
title:  "[2023년 ~ 현재] 우아한형제들 BI Portal 구축 및 기능 고도화"
categories: project
tags: [project, React, TypeScript, React Query, Styled-components, Kotlin, Spring Boot, MariaDB, UI/UX, Tableau, BI, BI Portal, Frontend]
image: assets/images/post/2025/2025-10-05-project_woowahan1.jpg
pin: true
published: true
---

## 프로젝트 개요
- **프로젝트명** : 우아한형제들 BI Portal 구축 및 기능 고도화 (전사 내부 Portal)
- **기간** : 2023.12 ~ 현재 (진행중)  
- **소속/고객사** : (주)밀버스 / 우아한형제들  

우아한형제들 임직원이 사용하는 BI Portal은 Tableau 기반의 리포트를 통합 관리하고 데이터 조회 및 시각화 리포트를 웹에서 효율적으로 확인할 수 있도록 지원하는 내부 BI 플랫폼입니다.  
본 프로젝트는 React 기반 신규 포털 구축 및 기능 고도화를 목표로 진행되고 있습니다.  
저는 구축 단계에서 **PL(Project Leader)로서 프론트엔드·백엔드 개발팀 리드 및 협업 관리를 수행**하였고, 
이후에는 **개발 단독 운영 전담자로서 기능 개선과 유지보수를 지속적으로 진행**하고 있습니다.

## 사용 기술  

| 구분 | 기술 및 도구 | 주요 역할 및 사용 목적 |
|------|---------------|-------------------------|
| **Frontend** | React, React Query, Styled-components, TypeScript, Axios | 컴포넌트 설계, 상태 관리, 비동기 데이터 통신, 실시간 모니터링, UI 스타일링 |
| **Backend** | Kotlin, Java, Spring Boot | 데이터 연동 및 비즈니스 로직 처리 |
| **Database** | MariaDB | 데이터 저장 및 조회, 쿼리 검증 |
| **BI & Visualization** | Tableau (REST/Embedded API, Connected App), Superset, Redash | 리포트 임베딩, 사용자 접근 제어, 필터 연동 |
| **Infra** | AWS, Nginx, QueryPie | 배포 및 서비스 운영 환경 관리 |
| **Design & Collaboration** | GitLab, Figma, Slack, Jira, Google Sheets | 형상 관리, UI 시안 리뷰, 이슈 관리, 개발 문서화 및 일정 관리 |


## 담당 역할
* **구축 단계 – 개발 리더 (Frontend + Backend 총괄)**  
  * 개발 일정 조율 및 업무 분배, 기술 의사결정 주도, 코드 리뷰 및 품질 관리 수행  
  * 프론트엔드·백엔드 간 협업 구조 정립 및 인터페이스 조율  
* **운영 단계 – 단독 운영 전담자**  
  * 신규 기능 개발, 성능 최적화, 사용자 피드백 반영 및 유지보수 수행  
* **디자인/기획/고객사 커뮤니케이션 주도**  
  * 요구사항 분석 및 UI 개선 주도  


## 주요 업무

### 1. React 기반 UI 설계 및 컴포넌트 개발
- Figma 시안을 기반으로 컴포넌트 단위 UI 구조 설계 및 구현  
- `Styled-components`를 활용한 모듈화된 스타일링 구성  
- 재사용 가능한 컴포넌트 시스템 구축으로 개발 생산성 및 유지보수성 향상  

### 2. 데이터 통신 및 상태 관리 구조 고도화
- Axios 기반 공통 통신 모듈을 설계하여 API 호출 로직 일원화  
- `React Query`를 활용한 비동기 상태 관리 및 폴링(Polling) 기능을 적용해 시스템 상태 자동 갱신 구현  

### 3. BI 리포트 임베딩 및 사용자 접근 제어
- Tableau REST/Embedded API를 활용해 리포트 임베딩·접근 제어·렌더링 최적화와 웹 필터 연동 기능 구현  
- Superset 및 Redash 리포트 임베딩으로 다중 시각화 플랫폼 통합    
- Connected App 기반 인증 구조 적용으로 보안성과 사용자 관리 효율 향상  

### 4. 외부 데이터 포털 연동 및 스케줄 관리
- 외부 Data Portal과의 REST API 인터페이스 설계 및 연동 구현  
- 정기 배치 스케줄링 기능을 통해 주기적 데이터 동기화 및 리포트 자동 갱신 지원  

### 5. 개발 리더십 및 협업 관리
- 개발자 관리 및 코드 리뷰 진행  
- PM과 협력하여 개발 일정 조율 및 리소스 관리    
- 기획·디자인·백엔드 간 커뮤니케이션 허브 역할 수행   

### 6. 운영 및 기능 고도화
- 단독 운영 전담자로서 신규 요구사항 반영, 오류 대응, 성능 개선 지속 수행  
- 사용자 피드백 및 로그 분석을 기반으로 UI/UX 개선 및 기능 고도화 지속 수행


## 프로젝트 결과
- React 기반 BI Portal 구축 및 안정적 운영 체계 확립  
- React Query 기반 실시간 상태 관리 구조로 운영 효율성 강화  
- Tableau·Superset·Redash 통합 임베딩 구조로 시각화 확장성 확보  
- Styled-components 기반 디자인 시스템으로 UI 일관성 확보  
- 전사 BI Portal 메인 플랫폼 구축 및 개발 PL로서 리드 역량 입증  
- 단독 운영 체계 수립으로 장기적 안정성 확보  


## 성과 및 성장
- 프론트엔드·백엔드 통합 개발 PL로서 기술 리드 및 협업 관리 경험 확보  
- React 중심의 상태 관리·컴포넌트 구축 역량 강화  
- Tableau Embedded API 기반 리포트 임베딩 및 사용자 제어 로직 설계 경험 축적  
- AWS 환경 수동 배포 및 서버 운영 관리 경험  
- 사용자 중심 UI 개선 및 장기적 서비스 안정화 경험 강화  
- 요구사항을 기술적 솔루션으로 전환하는 리더십 역량 강화  

본 프로젝트는 **React 컴포넌트 설계, 실시간 상태 관리, BI 임베딩(Tableau, Superset, Redash), 사용자 중심 UI 설계**를 결합한 사례로, 프론트엔드 중심의 기술 리더십과 데이터 기반 서비스 구축 능력을 입증한 대표 프로젝트입니다.


## 주요 화면

![woowahan1](/assets/images/post/2025/2025-10-05-project_woowahan2.png) *Home 화면*


![woowahan2](/assets/images/post/2025/2025-10-05-project_woowahan3.png) *리포트 조회 화면*


![woowahan3](/assets/images/post/2025/2025-10-05-project_woowahan4.jpg) *관리자 메뉴 화면*