---
layout: page
title: Profile
permalink: "/profile/"
# image: assets/images/screenshot.png
---

**리사의 개발 블로그**에 오신 것을 환영합니다.  
저는 **프론트엔드를 중심으로 백엔드까지 아우르는 웹 개발자**입니다.  

React와 TypeScript를 활용한 UI/UX 중심의 프론트엔드 개발을 주력으로 하며,  
Spring Boot와 Kotlin, Java 기반의 백엔드 API 설계·구현 경험도 갖추고 있습니다.  
데이터 분석·CRM 솔루션(예: Tableau, Salesforce)과의 연동 프로젝트에도 참여하여  
**데이터와 사용자 경험을 연결하는 서비스**를 만들어 왔습니다.  

이 블로그에서는  
- 개발 과정에서 얻은 인사이트  
- 기술 적용 사례와 문제 해결 과정  
- 프론트엔드/백엔드 아키텍처 설계 노트  

등을 기록하며, 제 개인 포트폴리오 역할도 겸합니다.

[**Github**](https://github.com/hsyeun)


## 주요 기술

| Category           | Skills                                                                                                      |
|--------------------|-------------------------------------------------------------------------------------------------------------|
| **Frontend**       | `React` `React Query` `Styled-Components` `Typescript` `Javascript` `HTML` `CSS` `jQuery`                   |
| **Backend**        | `Kotlin` `Java` `Spring Boot` `Spring Security` `JSP`                                                       |
| **DB**             | `MySql` `MariaDB` `Oracle`                                                                                  |
| **API & Architecture** | `REST API`                                                                                              |
| **OS & Infra**     | `Linux`                                                                                                     |
| **VCS**            | `Git` `GitHub Actions` `Jenkins`                                                                            |
| **UI/UX**          | `Figma` `Adobe Photoshop` `Adobe Illustrator`                                                               |


{% assign start1 = '2019-01-21' | date: "%s" %}
{% assign end1   = '2020-10-19' | date: "%s" %}
{% assign start2 = '2022-06-13' | date: "%s" %}
{% assign end2   = 'now' | date: "%s" %}

{% assign diff1 = end1 | minus: start1 %}
{% assign diff2 = end2 | minus: start2 %}

{% assign total_seconds = diff1 | plus: diff2 %}
{% assign total_days = total_seconds | divided_by: 86400 %}
{% assign total_months = total_days | divided_by: 30 %}
{% assign years = total_months | divided_by: 12 %}
{% assign months = total_months | modulo: 12 %}

## 경력 사항 (총 경력 : {{ years }}년 {{ months }}개월)

{% assign milvus_total_days = diff2 | divided_by: 86400 %}
{% assign milvus_total_months = milvus_total_days | divided_by: 30 %}
{% assign milvus_years = milvus_total_months | divided_by: 12 %}
{% assign milvus_months = milvus_total_months | modulo: 12 %}

### 데이터 분석 · CRM 전문 기업 (Tableau · Salesforce 공식 파트너사)
- **기간** : 2022.06 ~ 재직중 ({{ milvus_years }}년 {{ milvus_months }}개월)
- **직무/직급** : 웹 개발자 / 대리
- **담당 업무**
  - Web Portal 개발에서 **프론트엔드와 백엔드 전반** 담당
  - `React`, `JavaScript`, `Java`, `Kotlin`을 활용한 기능 구현
  - `Git`, `Linux` 기반 환경에서 안정적인 서비스 운영
  - 기획 및 디자인 검수 참여를 통한 **UI/UX 품질 개선**
  - 프로젝트 관리 및 협업을 통해 팀 목표 달성 기여

{% assign foodjang_total_days = diff1 | divided_by: 86400 %}
{% assign foodjang_total_months = foodjang_total_days | divided_by: 30 %}
{% assign foodjang_years = foodjang_total_months | divided_by: 12 %}
{% assign foodjang_months = foodjang_total_months | modulo: 12 %}

### 온라인 커머스 기업
- **기간** : 2019.01 ~ 2020.10 ({{ foodjang_years }}년 {{ foodjang_months }}개월)
- **직무/직급** : 웹 디자이너&퍼블리셔 / 사원
- **담당 업무**
  - 자사몰 운영을 위한 **웹디자인 및 퍼블리싱** 담당
  - 외부몰의 웹디자인 작업 수행
  - `Photoshop`, `Illustrator` 기반 시각 디자인 제작
  - `HTML`, `CSS` 기반 퍼블리싱으로 온라인 콘텐츠 품질 강화
  - 브랜드 아이덴티티를 고려한 디자인으로 브랜드 이미지 제고


