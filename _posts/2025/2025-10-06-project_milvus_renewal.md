---
layout: post
title:  "[2024년] 사내 HR 시스템 리뉴얼"
categories: project
tags: [project, HR, React, Javascript, Styled-components, Kotlin, Spring Boot, MariaDB, UI/UX, Frontend, Backend, Refactoring, Intranet]
image: assets/images/post/2025/2025-10-06-project_milvus_security_after1.jpg
published: true
---

## 프로젝트 개요
- **프로젝트명** : 사내 HR 시스템 리뉴얼 (UI/UX 리디자인 및 코드 리팩토링)  
- **기간** : 2024.09 ~ 2024.11  
- **소속** : (주)밀버스  

사내 HR(인사관리) 시스템은 근태, 조직, 인사 정보를 통합 관리하는 핵심 인트라넷 시스템입니다.  
기존 시스템은 JSP 기반으로 개발되어 UI 구조의 복잡성과 유지보수성 한계가 존재했습니다.  

시스템을 장기간 운영하며 이러한 문제를 직접 경험하고, 기술적 한계를 근본적으로 해결할 필요성을 느꼈습니다.  
이에 따라 [사내 HR 시스템 장기 운영 및 기능 개선](/project/2025/10/06/project_milvus.html)을 통해 축적한 개선 경험을 바탕으로 React와 Kotlin 기반의 UI/UX, 서비스 로직, 코드 구조를 전면 재설계한 단독 리뉴얼 프로젝트를 주도적으로 추진하였습니다.  

**UI/UX 설계부터 컴포넌트 구조, 백엔드 로직 개발까지 모든 단계를 단독으로 설계·구현·테스트**하였으며, 사용자 중심의 화면 구조와 현대적인 기술 스택을 적용해 시스템 완성도, 성능, 유지보수성을 크게 향상시켰습니다.


## 사용 기술  

| 구분 | 기술 및 도구 | 주요 역할 및 사용 목적 |
|------|---------------|-------------------------|
| **Frontend** | React, Styled-components, JavaScript | UI/UX 리디자인, 컴포넌트 단위 설계, 스타일링 및 반응형 구성 |
| **Backend** | Kotlin, Spring Boot | 서비스 로직 리팩토링, API 재구성, 코드 구조 최적화 |
| **Database** | MariaDB | 데이터 구조 정비, 쿼리 최적화, 스키마 개선 |
| **Infra & DevOps** | Apache Tomcat, Linux, Jenkins | 내부 서버 운영 및 배포 관리 |
| **Design & Collaboration** | Photoshop, GitLab | UI 설계, 버전 관리, 자체 검증 환경 구축 |


## 담당 역할
- **단독 리디자인 및 리팩토링 전담 개발자**  
  - UI/UX 개선, 프론트엔드 컴포넌트 설계, 백엔드 로직 전환까지 모든 개발 단계를 단독 수행  
  - React + Kotlin 기반으로 전체 구조를 재설계하여 유지보수성과 코드 품질 향상  
- **UI/UX 설계 및 구현 담당**  
  - 사용자 피드백과 업무 흐름을 반영하여 HR Portal의 전면적인 화면 리디자인을 주도  
- **백엔드 구조 개선 및 안정화 담당**  
  - Java 기반 코드를 Kotlin으로 전환하고, 중복 로직을 정리하여 서비스 계층을 모듈화


## 주요 업무

### 1. UI/UX 리디자인 및 컴포넌트 아키텍처 설계
- 기존 JSP 기반 UI를 React 기반의 SPA 구조로 전환  
- `Styled-components`를 활용하여 디자인 시스템 기반의 일관된 스타일링 구조를 구축  
- 사용 빈도가 높은 기능(휴가 신청, 승인, 조회 등)을 단일 워크플로우로 재설계하여 UX 효율성 향상  
- 반응형 레이아웃을 적용하여 다양한 해상도 환경에서의 접근성 확보

### 2. React 컴포넌트 구조 및 상태 관리 리팩토링
- 화면 단위를 세분화하여 공통 컴포넌트(모달, 버튼, 테이블 등)를 재정의  
- React Hook과 Context API를 활용하여 데이터 흐름과 이벤트 관리를 단순화  
- 불필요한 렌더링을 제거하고, 렌더링 성능 및 초기 로딩 속도를 최적화  

### 3. 백엔드 로직 리팩토링 및 API 재구성
- 기존 Java 코드를 Kotlin으로 전면 변환하며 서비스 계층을 리팩토링  
- 중복된 로직과 불필요한 DB 호출을 제거하고, 도메인별 API 구조를 표준화  
- Spring Boot 환경에서 Controller–Service–Repository 계층 구조를 재정립하여 유지보수성을 향상  

### 4. 오류 수정 및 사용자 피드백 반영
- 누적된 UI/데이터 오류를 전면 수정하고, 입력·조회 시의 예외 처리 로직을 개선  
- 인사팀 피드백을 반영하여 사용 빈도 높은 기능의 접근성 및 응답 속도를 개선  
- 사용성 테스트를 진행하여 화면 전환, 입력 흐름, 정보 탐색 동선을 최적화   


## 프로젝트 결과
- React + Kotlin 기반의 신규 구조로 HR 시스템을 전면 리뉴얼  
- UI/UX 리디자인을 통해 사용자 만족도 및 업무 효율성 향상  
- 코드 리팩토링 및 모듈화로 유지보수성과 확장성 강화  
- 렌더링 성능 및 로딩 속도 개선으로 체감 성능 대폭 향상  
- 단독 수행을 통해 전 과정(설계~배포)에서 일관된 품질 확보  


## 성과 및 성장
- 프론트엔드·백엔드 전면 리뉴얼을 단독으로 수행하며 풀스택 역량을 강화  
- Kotlin 기반의 서비스 구조 설계 및 코드 품질 개선 노하우를 축적  
- UI/UX 리디자인을 통해 사용자 중심 화면 설계와 접근성 개선 경험을 확보  
- 단독 프로젝트 수행 경험을 통해 문제 해결 능력과 기술적 의사결정 역량을 강화

본 프로젝트는 사내 HR 시스템을 단독으로 리디자인하고 리팩토링한 사례로,  
React + Kotlin 기반으로 기술 스택을 최신화하고, 사용자 중심 설계·구조 개선을 통해 시스템 완성도를 극대화한 프로젝트입니다.


## 주요 화면

![login](/assets/images/post/2025/2025-10-06-project_milvus_security_after2.png) *로그인 화면*

![main](/assets/images/post/2025/2025-10-06-project_milvus_security_after3.png) *메인화면*

![table](/assets/images/post/2025/2025-10-06-project_milvus_security_after4.png) *테이블 화면*

![modal](/assets/images/post/2025/2025-10-06-project_milvus_security_after5.png) *모달 화면*