---
title: JAVA - 설치 및 환경변수 설정
key: 20210709
tags: Java 설치
categories: Java
image: assets/images/java.jpg
---
  
    
# Java란?

Java의 특징

* 모든 운영체제에서 실행 가능
* 객체 지향 프로그래밍[^1]을 위한 최적의 언어
* 메모리(RAM)를 자동 관리하여 편리함
* 무료 오픈소스 라이브러리가 풍부함
  
[^1]: 객체를 만들고 이 객체들을 서로 연결해서 더 큰 프로그램을 완성하는 기법

자바를 설치하고 환경변수 설정하는 방법을 알아봅시다.
  
  
# JDK[^2] 다운로드
  
[^2]: 자바 개발 도구 = JDK (Java Development Kit)
  
자바를 사용하기 위해서는 JDK를 설치해야 합니다.
  
오라클[^3]에서 배포한 JDK를 다운받아 사용합니다.

[^3]: <https://www.oracle.com>
  
[JDK 다운로드](https://www.oracle.com/java/technologies/javase-downloads.html)
  
> Java SE 16 버전의 다운로드 목록을 보여주는 링크입니다.
  
  
  
![다운로드](/assets/images/post/2021-07-09-java-start-se.png)
  
여기서 JDK Download를 눌러 각 컴퓨터에 해당하는 운영체제에 따라 다운받습니다.<br>
저는 윈도우를 쓰고 있어서 Windows x64 Installer 를 다운받았습니다.
  
  
다운로드가 완료되면 C드라이브(혹은 D드라이브)에 설치해주세요.

cmd에서 **java -version**을 입력했을때 아래처럼 자바 버전이 잘 나온다면 설치가 완료된 것입니다.

![cmd](/assets/images/post/2021-07-09-java-start-cmd.png)


### 잠깐, SE란?
  
자바 에디션에는 SE, EE, ME가 있습니다.
중요하지는 않으니 참고만 하시면 좋을 듯 합니다.

~~~
SE(Standard Edition)
    - 일반적으로 사용되는 기본 에디션. 
      자바의 기본적인 기능이 모두 포함되어 있으며 자바 언어의 대부분의 API를 제공해줍니다.

EE(Enterprise Edition)
    - 자바를 이용한 서버 개발을 편리하게 하기 위해 JSP나 Servlet 등의 기술들이 포함되어 있습니다.
      SE에 서버 기능을 포함한 것으로 볼 수 있습니다.

ME(Micro Edition)
    - 임베디드를 위한 에디션입니다.
~~~
  
  
***
  
# 환경변수 설정
  
  
내PC 파일을 우클릭 > 속성 클릭 > 고급 시스템 설정에서 '환경 변수'를 클릭해주세요.<br>
여기서 할 일은 두 가지 입니다.
  
  
## 1. JAVA_HOME 환경변수 등록
  
  
시스템 변수에서 새로 만들기를 클릭해 다음과 같이 입력합니다.
  
![JAVA_HOME](/assets/images/post/2021-07-09-java-start-javahome.png)


변수 이름 : JAVA_HOME  
변수 값 : (좀전에 설치한 jdk 폴더로 설정)
{:.info}

변수 값은 디렉터리 찾아보기로 폴더를 지정하면 편리합니다.
  
  
## 2. path 환경변수 편집
  
설치한 JDK 폴더 안에는 bin 폴더가 있습니다.  
bin 폴더 안에는 다양한 명령어들이 있는데 이 명령어들을 다른 폴더에서도 사용하려면  
다음과 같이 path 환경변수에 bin 폴더를 등록해야 합니다.

시스템 변수 내에 있는 path 환경변수를 찾아 **편집**을 눌러주세요.  
  
![path](/assets/images/post/2021-07-09-java-start-path.png)
  
  
path 편집을 눌렀을때 나오는 화면에서 새로 만들기를 클릭해
**[%JAVA_HOME%\bin]**
을 입력하고 확인을 누릅니다.
  
  
  
이렇게 하면 자바 설치와 환경변수 설정이 완료됩니다. 참 쉽죠?
  
  