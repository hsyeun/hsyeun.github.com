---
title: JSP 프로젝트1 - 개요 및 준비
key: 20210718
tags: Java project JSP Servlet Oracle Html CSS Javascript JDBC MVC jQuery
categories: Java
---

웹 프로젝트  
주제 : 전시회 안내  
기간 : 2021.05.03 ~ 2021.05.13(11일 간 일 5~8시간)  
개발인원 : 5명  
환경 : Apache Tomcat 8.0, Chrome 브라우저  
개발 : Eclipse, Oracle  
사용 언어 : JAVA(JDK 1.8), Oracle SQL(11g Express), Html5, CSS3, Javascript, JSP&Servlet  
사용 기술 : JDBC, MVC모델2, jQuery, Ajax, Mail API  

내가 맡은 역할  
    1. 총괄 및 전체 세부계획서 작성  
    2. 메인페이지 뷰 & 공통 소스 제작  
    3. 데이터 최신순으로 불러오기, 분류에 따른 데이터 가져오기, 페이징 처리  
    4. 달력 일정 기능  
{:.info}

# 프로젝트 소개

현재 국내에서 진행중인 전시 정보를 한 곳에 모아 보고, 예매할 수 있도록 제작한 **전시플랫폼 홈페이지**입니다.  
다양한 전시를 분류 작업을 통해 원하는 상품을 쉽게 찾을 수 있도록 하였고 사이트 자체에서 진행하는 이벤트를 통해 소비자의 니즈에 한발 더 다가가도록 하였습니다.  

![moa](/assets/images/post/2021-08-04-moa-main.png)
> 슬라이드에 사용된 이미지의 출처는 [캔고루](https://www.cangoroo.co.kr/main/)이며, 가공 없이 비상업적 목적으로 사용하였습니다.

## 세부 계획서

![detail-plan](/assets/images/post/2021-08-04-detail-plan.png)
> 작성한 세부 계획서의 일부.  

제작할 페이지를 대분류,중분류,소분류로 분류해 뷰 작업시 필요한 내용과 각각 구현해야 할 기능을 세세하게 작성하였습니다. 이에 더해 팀원들의 이해를 돕기 위해 기능을 참고할 url을 첨부하였습니다.

# 설계 작업
## 스토리보드

![storyboard](/assets/images/post/2021-08-04-storyboard.png)
> 스토리보드의 일부.  

뷰 작업을 체계적으로 진행하기 위해 스토리보드를 제작하였습니다.  
페이지마다 디자인을 간략히 구상하고 기능이 들어가야하는 부분에 번호를 표기해 측면에 별도로 기능 설명을 달았습니다. 

## er model

![ermodel](/assets/images/post/2021-08-04-ermodel.png)

er model로 데이터 개체들 간의 속성 및 관계성을 표기하였습니다.  

## er diagram

![erd](/assets/images/post/2021-08-04-erd.png)

er diagram으로 er model을 더 구체화하여 표기하였습니다.  

## 테이블명세서

![table](/assets/images/post/2021-08-04-table.png)
> 테이블명세서의 일부.  

er diagram을 참고하여 테이블명세서를 작성하였습니다. 만들어진 테이블명세서로 Oracle SQL에 테이블 및 데이터를 입력하였고 테이블은 최종적으로 18개가 생성되었습니다.

