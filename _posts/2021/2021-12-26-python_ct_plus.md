---
layout: post
title: 프로그래머스 Lv.1| Python - 자릿수 더하기
key: 20211226
tags: Python Programmers codingtest
categories: codingtest
published: false
---

![pg](/assets/images/post/2021/2021-12-26-pg1.png)

## 풀이(
~~~python
def solution(n):

    answer = list(map(int, str(n)))

    return sum(answer)
~~~ 
