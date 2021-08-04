---
title: JSP 프로젝트1 - 개요 및 준비
key: 20210716
tags: Java project JSP Servlet Oracle Html CSS Javascript JDBC MVC jQuery
categories: Java
---

현재 국내에서 진행중인 전시 정보를 한 곳에 모아 보고, 예매할 수 있도록 제작한 **전시플랫폼 홈페이지**입니다.  
다양한 전시를 분류 작업을 통해 원하는 상품을 쉽게 찾을 수 있도록 하였고 사이트 자체에서 진행하는 이벤트를 통해 소비자의 니즈에 한발 더 다가가도록 하였습니다. 

웹 프로젝트  
주제 : 전시회 안내  
기간 : 2021.05.03 ~ 2021.05.13(11일 간 일 5~8시간)  
개발인원 : 5명  
환경 : Apache Tomcat 8.0, Chrome 브라우저  
개발 : Eclipse, Oracle  
사용 언어 : JAVA(JDK 1.8), Oracle SQL(11g Express), Html5, CSS3, Javascript, JSP&Servlet  
사용 기술 : JDBC, MVC모델2, jQuery, Ajax, Mail API  


내가 맡은 역할 : 서버에 데이터 연결, 연결된 데이터 활용, 총 감독  
{:.info}

# 프로젝트 소개

# 설계 작업
## 스토리보드

## er model

## er diagram

## 테이블명세서


---

# 개발 준비

## Tomcat 설치

톰캣이란 아파치 소프트웨어에서 제공하는 웹서버 프로그램으로, JSP와 Servlet을 구동하게 해주면서 DB 등의 연결을 가능하게 해줍니다. 따라서 프로젝트를 진행하려면 꼭 설치해주어야 합니다.

[Apache Tomcat](https://tomcat.apache.org/download-80.cgi) 사이트에서 컴퓨터 운영체제에 맞는 tomcat 8.5.65 64-bit Windows.zip을 다운받아 c드라이브에 압축을 풀었습니다.

## 환경변수 설정

압축 푼 파일을 사용하려면 환경변수 설정을 해줘야 합니다.  
자바를 설치했을 때처럼 **내 PC 우클릭 -> 속성 -> 고급 시스템 설정 -> 환경변수**로 들어갑니다.  

### CATALINA_BASE 만들기

시스템 변수에서 새로 만들기를 클릭해 다음과 같이 설정합니다.  
1. 변수 이름 : CATALINA_BASE  
2. 변수 값 : (아파치 톰캣 폴더)  

[CATALINA_BASE](/assets/images/post/2021-08-04-CATALINA_BASE.png)

### CATALINA_HOME 만들기

마찬가지로 시스템 변수에서 새로 만들기를 클릭해 다음과 같이 설정합니다.  
주의할 것은 변수 이름만 다르고 변수 값은 CATALINA_BASE의 설정 값과 같은 폴더로 설정해야한다는 것입니다.  
1. 변수 이름 : CATALINA_HOME  
2. 변수 값 : (아파치 톰캣 폴더)  

[CATALINA_HOME](/assets/images/post/2021-08-04-CATALINA_HOME.png)

### path 편집

톰캣 폴더 안에 있는 bin 폴더를 사용하기 위해서 path 변수에 bin 폴더를 등록해야 합니다.  
시스템 변수에서 path 변수를 찾아 편집을 눌러 ** %CATALINA_BASE%\bin\ **을 입력합니다.  

[tomcat_path](/assets/images/post/2021-08-04-path.png)  

좀전에 변수를 ~BASE와 ~HOME 두 개를 만들었었는데 path에는 하나만 입력하는게 맞나? 하시는 분이 있을지 모르겠는데요 하나만 입력합니다. 변수 값을 같은 폴더로 입력해줬기 때문이죠.  

---

톰캣 설치가 잘 되었는지 확인해보려면 cmd 창을 열어 아래 명령어를 실행해봅니다.  
~~~
version.bat
~~~