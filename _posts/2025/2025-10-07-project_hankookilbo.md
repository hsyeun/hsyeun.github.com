---
layout: post
title:  "[2024 ~  2025년] 한국일보 통합멤버십 구축"
categories: project
tags: [project, Javascript, jQuery, Thymleaf, CSS, Kotlin, Java, Spring Boot, UI/UX, Salesforce, Web Portal]
image: assets/images/post/2025/2025-10-07-project_hankookilbo1.jpg
published: true
---

## 프로젝트 개요
- **프로젝트명** : 한국일보 통합멤버십 구축
- **기간** : 2024.12 ~ 2025.05  
- **소속/고객사** : (주)밀버스 / 한국일보  

본 프로젝트는 한국일보의 통합 멤버십 시스템 구축을 목표로 진행된 Web Portal 개발 프로젝트입니다.  
기존에 분산되어 있던 회원·구독 데이터를 통합하고, 고객 중심의 서비스 접근성과 관리 효율성을 높이기 위해 추진되었습니다.  
저는 **프론트엔드 전담 개발자이자 주요 서비스의 백엔드 로직까지 개발한 풀스택 담당자로서**, UI/UX 설계, 반응형 UI 구현, 주요 서비스 기능(마이페이지, 고객센터, 뉴스레터 구독 관리 등)을 프론트엔드와 백엔드 모두 직접 설계·구현하였습니다.  

## 사용 기술  

| 구분 | 기술 및 도구 | 주요 역할 및 사용 목적 |
|------|---------------|-------------------------|
| **Frontend** | JavaScript, jQuery, Thymeleaf, HTML5, CSS3 | 반응형 UI 구현, 템플릿 모듈화 |
| **Backend** | Kotlin, Spring Boot | 데이터 연동, 비즈니스 로직 처리 |
| **Integration** | Salesforce Service Cloud | 멤버십 데이터 연동, 고객 정보 관리 |
| **Infra** | Apache Tomcat, Nginx | 웹 애플리케이션 배포 및 운영 환경 구성 |
| **Collaboration** | GitLab, Microsoft Teams, Figma | 형상 관리, UI 검토, 고객사 커뮤니케이션 |


## 담당 역할
- **프론트엔드 전담 및 주요 서비스 백엔드 개발 담당자**  
  - Web Portal의 UI/UX 구조 설계와 반응형 컴포넌트 구현을 주도  
  - 마이페이지, 고객센터, 뉴스레터 구독 관리 등 핵심 서비스의 백엔드 로직을 직접 개발하여 프론트-백엔드 간 연동 효율을 극대화  
- **Salesforce 연동 및 데이터 처리 담당**  
  - Salesforce Service Cloud API와 연동하여 회원 정보 및 구독 데이터를 실시간으로 조회·갱신  
  - 백엔드 데이터 모델과 화면단의 데이터 바인딩 구조를 최적화  
- **고객사 커뮤니케이션 및 QA 대응 담당**  
  - 고객사 기획자 및 운영팀과 협업하여 UI/기능 요구사항을 기술적으로 구현  
  - QA 피드백을 신속히 반영하여 오류 및 호환성 문제를 해결  


## 주요 업무

### 1. 반응형 UI 설계 및 프론트엔드 개발
- `Thymeleaf` 템플릿 구조를 공통 레이아웃 + 세부 컴포넌트 단위로 모듈화  
- `JavaScript`와 `jQuery`를 활용하여 동적 UI 요소(모달, 드롭다운 등)를 구현  
- 미디어쿼리 기반 반응형 UI 설계로 PC·모바일 환경에서 일관된 사용자 경험을 제공  
- CSS 구조 리팩토링을 통해 유지보수성과 스타일 일관성을 강화  

### 2. 주요 서비스 개발 (프론트엔드 + 백엔드)
- **마이페이지, 고객센터, 뉴스레터 구독 관리** 등 주요 서비스의 전체 기능 로직을 직접 개발  
- Spring Boot 기반의 Controller–Service–Repository 계층 구조를 적용하여 데이터 처리 효율성을 개선  
- **회원 정보 관리, 구독 신청 및 관리, 문의 내역 조회** 등 사용자의 주요 액션을 안정적으로 지원하는 백엔드 로직을 구현  
- 프론트엔드에서는 `Thymeleaf` 데이터 바인딩을 통해 실시간 데이터 조회·갱신 처리  

### 3. Salesforce 연동 및 데이터 바인딩 처리
- Salesforce Service Cloud의 REST API를 활용하여 멤버십 데이터를 연동  
- Salesforce 응답 구조에 맞춰 DTO 변환 및 비즈니스 로직 매핑을 구현  
- 오류 처리 로직을 최적화하여 데이터 통신 안정성을 확보  

### 4. 브라우저 호환성 및 QA 대응
- Chrome, Edge, Safari 등 주요 브라우저에서의 렌더링 및 스크립트 호환성 테스트를 수행  
- QA 과정에서 제기된 UI/UX 개선 사항을 신속히 반영하였고, 반복 오류를 방지하기 위한 공통 처리 모듈을 추가  
- 폰트, 색상, 인터랙션 효과를 통일하여 디자인 가이드라인 준수  

### 5. 고객사 협업 및 요구사항 반영
- 고객사 담당자 및 기획자와의 협의를 통해 서비스 우선순위를 조정  
- 요구사항 변경 시 기능 영향도를 분석하고, 기술적 제약 내에서 최적의 구현 방안을 제시  
- 배포 전 Preview 단계를 운영하여 고객 승인 절차를 체계화  


## 프로젝트 결과
- 반응형 웹 구축으로 다양한 디바이스에서의 접근성 확보  
- 프론트엔드·백엔드 통합 개발을 통한 서비스 품질 향상  
- Thymeleaf 기반 공통 레이아웃 구조화로 유지보수성 향상  
- Salesforce 연동을 통한 멤버십 데이터 실시간 관리 체계 구축  
- 고객사 요청사항을 신속히 반영하여 만족도 향상 및 안정적 서비스 오픈 완료  


## 성과 및 성장
- 프론트엔드 전담 개발자로서 UI/UX 설계부터 서비스 완성까지 전 과정 주도 경험  
- Thymeleaf 구조 최적화 및 반응형 UI 구현 역량을 강화  
- Salesforce 연동을 포함한 외부 시스템 통합 경험을 축적  
- 고객사 협업 및 피드백 대응 프로세스 구축 경험을 통해 커뮤니케이션 역량을 강화  

본 프로젝트는 한국일보의 통합 멤버십 서비스를 위한 Web Portal 구축 사례로,  
프론트엔드 중심의 기술 구현과 고객사 협업을 통해 UX·기능·운영 효율성을 모두 향상시킨 프로젝트입니다.


## 주요 화면

![hankook1](/assets/images/post/2025/2025-10-07-project_hankookilbo2.png) *로그인 화면*

![hankook2](/assets/images/post/2025/2025-10-07-project_hankookilbo3.png) *회원가입 화면*

![hankook3](/assets/images/post/2025/2025-10-07-project_hankookilbo4.png) *배달사고 신청 화면*

![hankook4](/assets/images/post/2025/2025-10-07-project_hankookilbo5.png) *문의내역 화면*

![hankook5](/assets/images/post/2025/2025-10-07-project_hankookilbo6.png) *FAQ 화면*