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

각각의 키워드를 설명하자면  

1. DECLARE는 선언부로 실행에 사용될 변수, 상수, 커서 등을 선언합니다.  
2. BEGIN은 실행부로, PL/SQL을 작성할 때 필수로 입력합니다. 조건문, 반복문, 함수 등을 정의합니다.  
3. EXCEPTION은 예외처리부로, 실행 도중 발생하는 예외 상황을 해결하는 문장이 들어갑니다.  

필요에 따라 블록 안에 다른 블록을 포함할 수도 있는데 이것을 `중첩 블록`이라고 합니다.  


PL/SQL을 사용해서 Hello, World!를 출력해보겠습니다.  
PL/SQL의 실행 결과를 화면에 출력시키려면 우선 `SERVEROUTPUT` 환경 변수 값을 ON으로 변경해주어야 합니다.  

~~~sql
SET SERVEROUTPUT ON;
BEGIN
   DBMS_OUTPUT.PUT_LINE('Hello, World!');
END;
/
~~~