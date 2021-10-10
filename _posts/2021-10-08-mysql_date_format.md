---
title: MySQL - DATE_FORMAT의 구분기호
key: 20211008  
tags: MySQL SQL
categories: SQL
---

날짜를 지정한 형식으로 출력할 때 DATE_FORMAT 함수를 사용합니다.  

`DATE_FORMAT(날짜, 형식)`  

## 구분기호  

|구분기호|역할||구분기호|역할|
|--|--||--|--|
|%Y|4자리 년도(ex. 1999)||%H|24시간(ex. 17)|
|%y|2자리 년도(ex. 99)||%I|12시간(ex. 5)|
|%m|2자리 월(ex. 04)||%i|분|
|%c|1자리 월(ex. 4)||%S|초|
|%M|영문 월(ex. September)||%T|hh:mm:SS|
|%b|짧은 영문 월(ex. Sep)||%r|hh:mm:ss AM,PM|
|%d|2자리 일(ex. 01)||%W|긴 요일(ex. Monday)|
|%e|1자리 일(ex. 1)||%a|짧은 요일(ex. Mon)|
