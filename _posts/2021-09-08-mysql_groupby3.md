---
title: 프로그래머스 Lv.2| MySQL - 입양 시각 구하기(1)
key: 20210908
tags: MySQL SQL Programmers CodingTest
categories: SQL
---

## 문제 설명

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

|NAME|TYPE|NULLABLE|
|---|---|---|
|ANIMAL_ID|VARCHAR(N)|FALSE|
|ANIMAL_TYPE|VARCHAR(N)|FALSE|
|DATETIME|DATETIME|FALSE|
|INTAKE_CONDITION|VARCHAR(N)|FALSE|
|NAME|VARCHAR(N)|TRUE|
|SEX_UPON_INTAKE|VARCHAR(N)|FALSE|

보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.

**예시**  

SQL문을 실행하면 다음과 같이 나와야 합니다.

|HOUR|COUNT|
|--|--|
|9|1|
|10|2|
|11|13|
|12|10|
|13|14|
|14|9|
|15|7|
|16|10|
|17|12|
|18|16|
|19|2|

## 풀이

~~~sql
SELECT
    HOUR(DATETIME) HOUR, COUNT(DATETIME) COUNT
FROM
    ANIMAL_OUTS
WHERE
    HOUR(DATETIME) BETWEEN 9 AND 20
GROUP BY
    HOUR(DATETIME) 
ORDER BY
    HOUR(DATETIME)
;
~~~

* Oracle이라면 서브쿼리를 이용했겠지만 MySQL에서는 HOUR()이라는 함수가 있어서 시간대를 표현하기가 쉽습니다. 이렇게 Oracle과 MySQL의 방식이 확연히 다르게 나오는 문제는 다음에 다른 언어로 한 번 더 풀어봐야겠네요.  