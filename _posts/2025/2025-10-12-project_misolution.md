---
layout: post
title:  "[2025년 ~ 현재] miSolution | SaaS 플랫폼 초기 개발 및 운영 UI 개선"
categories: project
tags: [project, SaaS, MultiTenant, JavaScript, jQuery, CSS, JSP, PostgreSQL, AWS, Docker, Java, Spring Boot, UI/UX, Web Portal]
image: assets/images/post/2025/2025-10-12-project_misolution.jpg
published: true
---

## 프로젝트 개요
- **프로젝트명** : [miSolution] SaaS 플랫폼 초기 개발 및 운영 UI 개선  
- **기간** : 2025.01 ~ 현재 (진행중)  
- **소속/고객사** : (주)밀버스

본 프로젝트는 기업용 SaaS 다중 테넌트 플랫폼(miSolution) 구축을 목표로 한 신규 서비스 개발 프로젝트입니다.  
각 고객사의 데이터를 독립적으로 관리하면서 공통 플랫폼 구조를 유지할 수 있는 **멀티 테넌트 아키텍처**를 기반으로 설계되었습니다.  
저는 **풀스택 개발자로서 프론트엔드를 전담하며 주요 서비스(크레딧, 데이터 중계 등)의 백엔드 로직까지 직접 개발**하여  
서비스의 UI/UX 품질과 시스템 안정성을 동시에 확보하였습니다. 또한 AWS 환경에서의 배포·운영 및 UI 개선, 그리고 기능 개발로 서비스 추가를 지속적으로 수행하고 있습니다.  

## 사용 기술  

| 구분 | 기술 및 도구 | 주요 역할 및 사용 목적 |
|------|---------------|-------------------------|
| **Frontend** | JavaScript, jQuery, JSP, HTML5, CSS3 | 다중 테넌트 UI 설계, 반응형 화면 구현, 화면 모듈화 |
| **Backend** | Java, Spring Boot | 서비스 로직 처리, 데이터 연동 |
| **Database** | PostgreSQL | 테넌트별 데이터 분리 및 스키마 관리 |
| **Infra & DevOps** | AWS (EC2, S3), Docker, Github Actios | 클라우드 환경 구성 및 배포 자동화 |
| **Design & Collaboration** | Figma, Github, Slack | UI 시안 검토, 형상 관리, 협업 및 요구사항 반영 |


## 담당 역할
- **프론트엔드 전담 및 주요 백엔드 로직 개발**  
  - SaaS 다중 테넌트 환경에 적합한 UI 아키텍처를 설계·구현  
  - 공통 UI를 모듈화, 유지보수성 향상  
  - 크레딧 관리, 데이터 중계 서비스 등 주요 백엔드 로직을 개발하며 프론트-백엔드 간 연동 효율을 극대화  
- **운영 및 기능 고도화**  
  - AWS 기반 인프라에서 UI 개선, 버그 대응, 신규 기능 추가를 지속적으로 수행  
  - Docker 기반 빌드 및 배포 환경을 구성하여 개발-운영 간 전환 효율을 개선  
- **디자인 협업 및 품질 관리**  
  - Figma 기반 UI 시안을 분석하여 구현하고, 디자이너와의 협업 주도    


## 주요 업무

### 1. SaaS 다중 테넌트 Portal UI 설계 및 구현
- JSP 기반 화면을 `Tag Library`와 `Layout Template`로 구성하여 공통 구조와 컴포넌트 재사용성을 확보  
- 테넌트별 접근 권한과 데이터 구성을 반영하는 동적 UI 렌더링 구조를 설계  
- JavaScript와 jQuery를 활용해 비동기 데이터 처리 및 UI 인터랙션 기능을 구현  

### 2. 주요 백엔드 서비스 로직 개발
- **크레딧 관리, 데이터 중계 서비스, 사용자 권한 관리 등 주요 비즈니스 로직**을 설계·구현  
- Spring Boot 기반의 Controller–Service–Repository 구조를 적용하여 데이터 흐름을 정의  
- PostgreSQL 스키마를 활용한 테넌트별 데이터 분리 구조를 적용하여 안정적 다중 환경을 구축  

### 3. AWS 및 Docker 기반 운영 환경 관리
- AWS EC2, S3 환경에서 서비스 빌드 및 배포를 수행  
- Docker 컨테이너 기반 운영으로 버전 관리 및 환경 일관성을 확보  
- 로그 및 서버 상태 모니터링을 통해 운영 중 발생하는 이슈를 즉시 대응  

### 4. UI 개선 및 협업 관리
- Figma 시안을 기반으로 사용자 중심 UI/UX 설계를 구현  
- Github 기반으로 형상 관리 및 이슈 트래킹을 수행하며 개발 프로세스를 표준화  


## 프로젝트 결과
- SaaS 다중 테넌트 Portal 초기 구축 및 안정적 운영 체계 확립  
- 프론트엔드·백엔드 통합 개발을 통한 서비스 품질 및 확장성 강화  
- 크레딧·데이터 중계 서비스 등 핵심 기능의 안정적 운영 구현  
- AWS·Docker 기반 배포 환경 구축으로 개발·운영 효율성 향상  
- 디자인 일관성과 UI/UX 완성도를 높인 Portal 시스템 완성 


## 성과 및 성장
- 프론트엔드 전담과 주요 백엔드 로직 개발을 병행하며 풀스택 역량을 강화  
- SaaS 다중 테넌트 구조 및 UI 모듈화 설계를 통해 플랫폼 아키텍처 설계 능력을 확보  
- AWS·Docker 환경 운영 경험을 통해 DevOps 이해도를 확장  
- 디자인 협업 및 사용자 중심 개선 프로세스를 통해 UI 품질 관리 역량을 강화

본 프로젝트는 SaaS 다중 테넌트 아키텍처 기반 플랫폼의 초기 구축 및 UI 고도화 사례로, 프론트엔드 설계와 백엔드 로직 개발을 모두 주도하며 서비스 안정성과 사용자 경험을 함께 향상시킨 프로젝트입니다.


## 주요 화면

![misolution1](/assets/images/post/2025/2025-10-12-project_misolution1.png) *로그인 화면*

![misolution2](/assets/images/post/2025/2025-10-12-project_misolution2.png) *메뉴 예시 화면*

![misolution3](/assets/images/post/2025/2025-10-12-project_misolution3.png) *알림톡 예시 화면*

![misolution4](/assets/images/post/2025/2025-10-12-project_misolution4.png) *표 예시 화면*

![misolution5](/assets/images/post/2025/2025-10-12-project_misolution5.png) *모달 예시 화면*