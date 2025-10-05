---
layout: post
title:  "신년 분석과 트렌드 예측 프로젝트"
categories: project
tags: [project, Python, Jupyter, HTML, CSS, JavaScript, AmCharts4, BeautifulSoup, Selenium, Pandas, Numpy]
image: assets/images/post/2025/2025-10-03-project_kosa2_data2.jpg
color: "#fff"
published: true
---

## 프로젝트 개요
- **프로젝트명** : 신년 분석과 트렌드 예측 프로젝트 ( [**Github**](https://github.com/hsyeun/Kosa_2_Data_Project) )  
- **기간** : 2022.01 ~ 2022.01(2주)  
- **소속/고객사** : 팀 프로젝트 (데이터 분석 & 웹 구현)
- **사용 기술** : Python, Jupyter, HTML, CSS, JavaScript, AmCharts4, BeautifulSoup, Selenium, Pandas, Numpy 등  

본 프로젝트는 2021년과 2022년 데이터를 수집·분석하여, 사람들의 관심사와 트렌드 방향성을 제시하는 것을 목표로 했습니다.
SNS/OTT/스포츠/팬톤컬러 등 다양한 데이터를 크롤링, 전처리, 분석하여 웹 기반 시각화 서비스로 구현했습니다.

저는 팀장을 맡아 **분석 데이터 정리, Flask 서버 환경 구축, 데이터 시각화, 프론트엔드 전체 구현, Github 및 협업 관리**를 담당했습니다.


## 담당 역할
- **팀장(본인)** : 프로젝트 총괄, DB 설계, Flask 환경 세팅, 프론트엔드 개발/관리, 시각화 구현, GitHub 관리
- 팀원1 : 아이디어 제안, 인스타그램 크롤링/DB 연동, NLP 처리, OTT 데이터 수집
- 팀원2 : 유튜브 댓글 크롤링 & NLP, OTT 전처리/시각화, 스포츠 데이터 수집 및 분석(동계올림픽/월드컵)
- 팀원3 : 페이스북·네이버 블로그 크롤링, DB 연동/정규화, 검색 기능 구현 및 NLP 처리    


## 주요 내용

### 1. 데이터 수집 및 전처리
- **BeautifulSoup, Selenium**으로 유튜브, 페이스북, 네이버 블로그 등 데이터 크롤링  
- 수집 데이터는 CSV 파일로 저장하여 분석 및 웹 시각화에 활용
- **Kkma, FreqDist** 기반 자연어처리로 검색어 키워드 순위화  

### 2. 웹 프론트엔드 구현
- **Flask** 기반 콘텐츠별 페이지 개발  
- **Bootstrap**을 활용한 반응형 레이아웃 구성  
- `{% raw %}{% include %}{% endraw %}` 구조를 적용하여 `head.html`, `nav.html`, `footer.html`을 공통 모듈화  
- 크롤링 및 분석 결과(CSV 데이터)를 웹 페이지에 반영  
- **AmCharts4**와 연동하여 사용자 친화적인 인터랙티브 그래프 제공 (툴팁, 애니메이션, 클릭 이벤트)  

### 3. 데이터 시각화
- **Line Chart** : 신년 계획 키워드 변화량 시각화  
- **Pie / Donut Chart** : OTT 플랫폼별 콘텐츠 분포 및 점유율  
- **Bar Chart & Bubble Chart** : 스포츠 이벤트 데이터 EDA  
- **Swarmplot, Boxplot** (Matplotlib 보조 활용) : 데이터 분포 파악  
- AmCharts의 **반응형/애니메이션 기능**을 활용해 UX 개선  
- OTT 작품 클릭 시 → **실시간 유튜브 인기 영상 연동 기능 추가**  

### 4. 협업 및 관리
- **GitHub**로 버전 관리 및 브랜치 전략 적용  
- 데이터 분석 공유(**Jupyter Lab**) 및 CSV 기반 데이터셋 관리  
- 최종 발표 및 결과 문서화  

 
![Home](/assets/images/post/2025/2025-10-03-project_kosa2_data1.gif)

![ott](/assets/images/post/2025/2025-10-03-project_kosa2_data3.png)

![beijing olympics](/assets/images/post/2025/2025-10-03-project_kosa2_data4.png)

![graph2](/assets/images/post/2025/2025-10-03-project_kosa2_data5.png)