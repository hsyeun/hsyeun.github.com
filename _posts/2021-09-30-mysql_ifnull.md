---
title: 프로그래머스 Lv.2| MySQL - NULL 처리하기  
key: 20210930  
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

입양 게시판에 동물 정보를 게시하려 합니다. 동물의 생물 종, 이름, 성별 및 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성해주세요. 이때 프로그래밍을 모르는 사람들은 NULL이라는 기호를 모르기 때문에, 이름이 없는 동물의 이름은 "No name"으로 표시해 주세요.  

**예시**  

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면  

|ANIMAL_ID|ANIMAL_TYPE|DATETIME|INTAKE_CONDITION|NAME|SEX_UPON_INTAKE|
|--|--|--|--|--|--|
|A350276|Cat|2017-08-13 13:50:00|Normal|Jewel|Spayed Female|
|A350375|Cat|2017-03-06 15:01:00|Normal|Meo|Neutered Male|
|A368930|Dog|2014-06-08 13:20:00|Normal|NULL|Spayed Female|

마지막 줄의 개는 이름이 없기 때문에, 이 개의 이름은 "No name"으로 표시합니다. 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.  

|ANIMAL_TYPE|NAME|SEX_UPON_INTAKE|
|--|--|--|
|Cat|Jewel|Spayed Female|
|Cat|Meo|Neutered Male|
|Dog|No name|Spayed Female|

## 풀이

~~~sql
SELECT
    ANIMAL_TYPE, IFNULL(NAME, 'No name') NAME, SEX_UPON_INTAKE
FROM
    ANIMAL_INS
ORDER BY
    ANIMAL_ID
;
~~~

1.  null 처리 방법으로 MySQL에선 IFNULL 함수를, Oracle에선 NVL 함수를 사용합니다. NVL은 자주 사용해봤으니 문제없는데 IFNULL은 전에 자격증 공부할 때 익히고 쿼리로 직접 작성하는 것은 이번이 처음이네요. 잘 새겨 둬야겠습니다.  