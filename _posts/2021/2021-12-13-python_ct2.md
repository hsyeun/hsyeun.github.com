---
layout: post
title: 프로그래머스 Lv.2| Python - 최솟값 만들기
key: 20211213
tags: Python Programmers codingtest
categories: codingtest
---

![pg](/assets/images/post/2021/2021-12-13-pg2.png)

## 풀이
~~~python
def solution(A,B):
    sum = 0
    
    A.sort()
    B.sort(reverse=True)

    for i in range(len(A)):
        sum += (A[i] * B[i])

    return sum
~~~ 
