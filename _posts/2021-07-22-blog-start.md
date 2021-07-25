---
title: 깃허브 블로그 - 시작하기
key: 20210722
tags: github blog jekyll minimal-mistakes
categories: blog
---
  

초보 개발자로서 독학으로 끙끙대면서 만들다가 아무래도 블로그 제작과정을 기록해야할 것 같다는 생각이 들었다. 

# 블로그 리포지토리 생성

깃허브 블로그는 깃허브에 저장된 파일들을 웹에서 볼 수 있도록 제공하는 무료 호스팅 서비스이기 때문에 기본적으로 깃허브 계정이 있어야 한다.  

1. 계정을 만들었다면 블로그로 쓰일 리포지토리를 새로 만들어주자.  
리포지토리 이름은 **(자신의 username).github.com** 형식으로 만든다.  

2. 그리고 아래의 README 체크를 잊지 말자.

![new-repository](/assets/images/post/2021-07-24-blog-repository.png)  

## 블로그 주소 확인

리포지토리가 생성되었다면 **Settings**에서 왼쪽 메뉴 중 **Pages**에 들어가보자.  
url이 형성된 것을 볼 수 있다. 저 url이 자신의 블로그 호스팅 주소다.  

![url](/assets/images/post/2021-07-24-blog-io.png) 

## 로컬저장소 연결

깃배쉬를 사용해 리포지토리와 로컬저장소를 연결한다.  
(깃배쉬 기본설정에 대해선 따로 포스팅할 계획이다.)


# Jekyll 테마 적용
> [기록하는 개발자 블로그](https://honbabzone.com/jekyll/start-gitHubBlog/#step-2-gitblog%EC%99%80-jekyll)를 참고했다.

블로그 페이지를 처음 들어가보면 아무런 디자인이나 기능이 없어 허전할 것이다.  
여기에 Jekyll 테마를 적용해보자.  

<http://jekyllthemes.org/>  

우선 공유된 테마들 중에 원하는 것을 고른다.  
나는 블로거들이 많이 사용하는 minimal-mistakes 테마를 골랐다.  

Jekyll 테마를 내 블로그에 적용하는 방법은 두 가지가 있다.  
테마를 Fork 뜨는 방법과 Download 하는 방법인데 이 페이지에선 Download로 진행하고자 한다.  

![down1](/assets/images/post/2021-07-25-mndown1.png)  
아까 링크 올린 지킬 테마 사이트에서 다운로드를 바로 누르거나

![down2](/assets/images/post/2021-07-25-mndown2.png)  
테마 깃허브에서 Download ZIP을 눌러서 다운받는다.  

리포지토리와 연결한 로컬저장소에 압축을 풀고 커밋&푸시를 한다.  
이제 블로그 url로 들어가면 테마가 적용된 것을 볼 수 있다.

## 루비 설치

로컬 개발 환경 설정을 위해 루비를 설치한다.  


# 블로그 설정

# 샘플 게시물 확인
> [기록하는 개발자 블로그](https://honbabzone.com/jekyll/start-gitHubBlog/#step-2-gitblog%EC%99%80-jekyll)를 참고했다.

막상 사용하려고 보니 블로그 레이아웃이 맘에 들지 않아서 조금씩 수정하다가  
이러다간 수정만하느라 시간 다 가겠다 싶어 테마 변경하기로 결정.