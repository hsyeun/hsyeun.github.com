---
title: 깃허브 블로그 - 로고와 파비콘 변경하기
key: 20210723
tags: github blog jekyll TeXt logo favicon
categories: blog
---
  

TeXt 테마의 기본 파비콘을 원하는 그림으로 변경하기로 했다.

우선, <https://favicon.io/emoji-favicons/> 에서 원하는 이미지를 다운받았다.
> 트위터에 저작권이 있는 오픈소스 그래픽인데 어떤 목적으로도 사용 가능하다고 한다. (항상 저작권을 확인해야한다.)

# 파비콘 변경하기

![favicon](/assets/images/post/2021-07-23-favicon.png)

압춘 푼 폴더에 있는 **favicon.ico** , **favicon-16x16.png** , **favicon-32x32.png** 를  
assets 폴더로 덮어쓰기 했더니 손쉽게 해결!

# 로고 변경하기

## 첫번째 시도


[syki66님 블로그](https://syki66.github.io/blog/2020/04/16/TeXt-theme-config.html#4-%EB%A1%9C%EA%B3%A0-%EB%B0%8F-favicon-%EB%B3%80%EA%B2%BD%ED%95%98%EA%B8%B0)를 참고해 작업했다.

/assets/safari-pinned-tab.svg의 svg 태그를 복사해서  
**assets/images/logo/logo.svg** 와 **_includes/svg/logo.svg** 에 복사한다.  

![finding-logo](/assets/images/post/2021-07-23-finding-logo.png)  

그랬더니 로고가 자리만 남기고 사라졌다.  

## 두번째 시도