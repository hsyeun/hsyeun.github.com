---
layout: post
title:  "영화 추천 및 정보 제공 챗봇 프로젝트"
categories: project
tags: [project, Python, Flask, MySQL, HTML, CSS, JavaScript, BeautifulSoup, Selenium, Pandas, OpenPyXL, Konlpy, Okt, Tensorflow, Keras, LSTM, PyMySQL]
image: assets/images/post/2025/2025-10-03-project_kosa3_chatbot2.png
published: true
---

## 프로젝트 개요
- **프로젝트명** : 영화 추천 및 정보 제공 챗봇 프로젝트  
- **기간** : 2022.02 ~ 2022.02(2주)  
- **소속/고객사** : 팀 프로젝트
- **사용 기술** : Python, Flask, MySQL, HTML, CSS, JavaScript, BeautifulSoup, Selenium, Pandas, OpenPyXL, Konlpy(코모란, Okt), Tensorflow/Keras(Bi-LSTM), PyMySQL 등   


본 프로젝트는 사용자의 위치와 취향에 따른 **맞춤형 영화 정보를 제공하는 챗봇 시스템**을 구축하는 것을 목표로 했습니다.  
크롤링, 자연어처리, 딥러닝 모델, DB를 결합하여 영화 추천·정보 제공·영화관 안내 기능을 실제 대화형 서비스로 구현했습니다.  


## 주요 내용

### 1. 데이터 수집 및 전처리
- **BeautifulSoup, Selenium, Requests**로 영화 순위, 네이버 영화, CGV/OTT/리뷰 데이터 크롤링  
- OpenPyXL, Pandas를 활용하여 데이터셋 가공 및 CSV/엑셀 저장  
- **Konlpy(Komoran, Okt)** 기반 형태소 분석으로 불용어 제거 및 키워드 추출  
- Kkma, FreqDist를 활용해 **검색어 키워드 순위화**  
- 조합/순열 기반 데이터 증강(`itertools.permutations`)으로 대화 학습데이터 확장  

### 2. DB 설계 및 연동
- 주요 테이블
  - `chatbot_qna_data` : 의도/개체명/질문/답변 관리  
  - `movie_data` : 영화 제목, 장르, 감독, 배우 저장  
  - `theater_data` : 영화관 이름, 주소, 연락처 저장  
- **PyMySQL**을 활용한 DB 초기화 및 학습 데이터 적재
  - 기존 QnA 데이터 삭제 및 auto_increment 초기화  
  - 학습용 Excel 데이터 DB에 Insert  

### 3. 챗봇 엔진
- **Preprocess 모듈**
  - Komoran 형태소 분석 → 품사 필터링 후 키워드 시퀀스로 변환  
  - 사전을 생성해 Word2Index 매핑  
- **IntentModel**
  - Bi-LSTM 기반 의도 분류 모델 로드  
  - 입력 문장에서 의도를 4가지(영화문의, 영화관문의, 영화추천, 상영시간표문의)로 분류  
- **NerModel**
  - Bi-LSTM 기반 개체명 인식 모델  
  - 영화명, 영화관, 장르, 지역 등을 BIO 태그 기반으로 추출  
- 의도/개체명 결과를 기반으로 DB에서 답변 검색   

### 4. 서버 구조
- **Socket 기반 Bot 서버**
  - 클라이언트 연결 대기 → 질문 수신 → NLP 처리 → DB 검색 → 답변 반환  
  - ThreadPool을 활용하여 다중 클라이언트 동시 처리  
- **Flask Web 서버**
  - 사용자의 질문을 챗봇 엔진(Socket 서버)으로 전달  
  - 응답(JSON)을 받아 웹 UI에 표시  
  - Ajax 통신 기반의 실시간 대화 인터페이스 구현  

### 5. 보조 기능
- **규칙 기반 챗봇** : 특정 키워드 매칭을 통해 단순 답변 제공  
- **KOFIC Open API 연동** : 일일 박스오피스, 영화 목록 데이터를 JSON으로 수집

 
![chatbot](/assets/images/post/2025/2025-10-03-project_kosa3_chatbot3.gif)