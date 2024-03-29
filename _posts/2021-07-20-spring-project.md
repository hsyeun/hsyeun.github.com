---
title: Spring 프로젝트 - 전시플랫폼 사이트
key: 20210720
tags: Spring project Oracle SQL Html CSS Javascript JDBC MVC jQuery pay API
categories: Spring
image: assets/images/spring.jpg
---
  

웹 프로젝트  
주제 : 전시회 안내  
기간 : 2021.06.01 ~ 2021.06.16(11일 간 일 5~8시간)  
개발인원 : 5명  
환경 : Apache Tomcat 8.0, Chrome 브라우저  
개발 : Eclipse, Oracle  
사용 언어 : Spring, Oracle SQL(11g Express), Html5, CSS3, Javascript  
사용 기술 : JDBC, MVC모델2, jQuery, KakaoPay API  

  
내가 맡은 역할 :  
    1. 최신 전시 작품 & 게시판 리스트 조회  
    2. 전시 분류 & 페이징 처리  
    3. 상세 검색 기능 제작  
{:.info}

저번에 jsp 프로젝트로 만들었던 전시플랫폼 사이트를 spring으로 변환시키면서 기능을 더 추가하는 작업으로 진행했습니다.  


# 프로젝트 소개

현재 국내에서 진행중인 전시 정보를 한 곳에 모아 보고, 예매할 수 있도록 제작한 **전시플랫폼 홈페이지**입니다.  
다양한 전시를 분류 작업을 통해 원하는 상품을 쉽게 찾을 수 있도록 하였고 사이트 자체에서 진행하는 이벤트를 통해 소비자의 니즈에 한발 더 다가가도록 하였습니다.  

---

앞서 언급했듯이 기존에 만들어뒀던 jsp 프로젝트를 spring으로 변환시키는 것이 기본 작업이었기 때문에 세부 계획서, 스토리보드, er model, er diagram, 테이블 명세서는 이전 것에서 거의 변화가 없었습니다.  

[기존 jsp 프로젝트 바로가기](https://hsyeun.github.io/java/2021/07/18/jsp-project-moa1.html)  

다만, 기능면에서 약간 차이가 있는데 이전에 없었던 `결제 기능, 상세 검색 기능` 등이 추가되었습니다.  