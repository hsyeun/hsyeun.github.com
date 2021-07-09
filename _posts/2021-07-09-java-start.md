---
title: 자바(Java) 설치 및 환경변수 설정
key: 20210709
tags: Java 설치
categories: Java
---




자바를 설치하고 환경변수 설정하는 방법을 알아봅시다.



## JAVA SE 다운로드

### SE란?
먼저 설명하자면 자바에는 SE, EE, ME가 있습니다.

```
SE(Standard Edition)
    - 일반적으로 사용되는 기본 에디션. 자바의 기본적인 기능이 모두 포함되어 있으며 자바 언어의 대부분의 API를 제공해줍니다.

EE(Enterprise Edition)
    - 자바를 이용한 서버 개발을 편리하게 하기 위해 JSP나 Servlet 등의 기술들이 포함되어 있습니다.
    SE에 서버 기능을 포함한 것으로 볼 수 있습니다.

ME(Micro Edition)
    - 임베디드를 위한 에디션입니다.
```


여기서는 SE를 설치해보겠습니다.




### ORACLE 사이트에서 다운로드


자바 설치는 오라클 사이트에서 합니다.


https://www.oracle.com/java/technologies/javase-downloads.html

> Java SE 16 버전의 다운로드 목록을 보여주는 링크입니다.



```
이미지
```
여기서 JDK Download를 눌러 각 컴퓨터에 해당하는 운영체제에 따라 다운받습니다.<br>
저는 윈도우를 쓰고 있어서 Windows x64 Installer 를 다운받았습니다.


다운로드가 완료되면 C드라이브에 설치해주세요.




## 환경변수 설정


내PC 파일을 우클릭 > 속성 클릭 > 고급 시스템 설정에서 '환경 변수'를 클릭해주세요.<br>
여기서 할 일은 두 가지 입니다.



### 1. 시스템 변수 새로 만들기


시스템 변수에서 새로 만들기를 클릭해 다음과 같이 입력합니다.

```
이미지
```
변수 이름 : JAVA_HOME
변수 값 : (좀전에 설치한 jdk 폴더로 설정)



### 2. 시스템 변수의 path를 편집하기


마찬가지로 시스템 변수에서
이번에는 path라는 변수를 편집할게요.

```
이미지
```

path 편집을 눌렀을때 나오는 화면에서 새로 만들기를 클릭해
%JAVA_HOME%\bin
을 입력하고 확인을 누릅니다.



이렇게 하면 자바 설치와 환경변수 설정이 완료됩니다. 참 쉽죠?