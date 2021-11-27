---
title: PL/SQL - 기본 구조
key: 20211122
tags: SQL PL/SQL
categories: SQL
---

PL/SQL은 블록 구조를 가지고 있습니다.  

~~~sql
DECLARE
   [실행에 필요한 여러 요소 선언];
BEGIN
   [작업을 위해 실제 진행하는 명령어];
EXCEPTION
   [PL/SQL 수행 도중 발생하는 오류처리];
END;
/
~~~

필요에 따라 블록 안에 다른 블록을 포함할 수도 있는데 이것을 `중첩 블록`이라고 합니다.