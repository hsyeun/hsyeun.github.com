---
layout: post
title:  "우여곡절 블로그 만들기-카테고리 메뉴"
categories: blog
tags: [Affiliates, Jekyll, theme, github, blog, liquid, sidemenu, menu, category]
image: assets/images/1.jpg
color: "#8FC27A"
published: true
---


"색" 위주의 디자인이 맘에 들어서 ["Affiliates" Jekyll Theme](https://github.com/codebygina/affiliates-jekyll-theme) 를 토대로 블로그를 만들고 있다.  
(지금은 관리를 안하시는지 Demo 페이지가 없다.)

블로그를 만든 지는 꽤 됐지만 한참 현생 핑계로 방치하다가 이제야 밀린 블로그 꾸미기를 하고 있다!


여러 부분을 손보고 있는데 그 중에서 **카테고리**를 사이드 메뉴로 만든 과정을 기록하려 한다.


---

![테마 기본 Sidebar](/assets/images/post/2025/2025-10-02-blog_sidebar1.png)*테마 기본 Sidebar(As-is)* 

테마에서 기본으로 제공하는 Sidebar는 원래는 메뉴가 아니라 뉴스레터 구독 용도였는데  
나는 아직 구독 기능을 쓸 계획이 없었고, 이 자리에 [태그나 카테고리를 사이드메뉴로]() 구성하면 좋을 것 같았다.


## 카테고리 링크 만들기
처음에는 단순히 `site.categories`를 사용해서 카테고리 목록을 나타냈다.  
문제는 **링크로 이동할 카테고리별 페이지를 어떻게 구현할지**였다.  


```liquid
// 단순 카테고리 조회
<ul>            
    {% raw %}{% for category in site.categories %}{% endraw %}
        <li>
            <a href="{% raw %}{{ site.baseurl }}{% endraw %}/categories/{% raw %}{{ category[0] | slugify }}{% endraw %}/">
                {% raw %}{{ category[0] }}{% endraw %}
            </a>
        </li>
    {% raw %}{% endfor %}{% endraw %}
</ul>
```

템플릿 역할을 할 `_layouts/categories.html`를 수정해서(원래는 전체 카테고리를 한 페이지에 보여주는 템플릿이었다.)  
단일 카테고리를 인자로 받고, 해당하는 포스트들을 렌더링 해주도록 설정을 했다.  
그 다음, 카테고리 개수만큼 pages 폴더에 md 파일을 만들어 permalink를 설정했다.  

```markdown
---
layout: categories 
title: "CodingTest" 
category: CodingTest 
permalink: /categories/codingtest/ 
---
```

손쉽게 완성되는 줄 알았건만 문제가 있었다. 링크가 연결되지 않는 것이다.  
페이지를 찾지 못하는 문제였는데 원인 파악이 되지 않았다.  

체크해 본 것은 아래와 같다.
- layout: categories 와 파일명이 일치하는지? -> ✅
- permalink와 a href 링크가 매칭하는지? -> ✅

.....?!  

생각 못한 문제가 있었는데
나는 페이지 링크를 소문자로 구성했지만 카테고리는 대문자를 사용했다.  

그러니 `_layouts/categories.html` 에는 소문자로 인자를 받았는데 소문자에 해당하는 카테고리가 없으니 오류가 발생한 거였다.  

카테고리를 모두 소문자로 변경하니 페이지가 정상적으로 동작이 되었다.

```markdown
---
# 실패 예시
category: CodingTest
permalink: /categories/codingtest/   # 대소문자 불일치 → 404

# 성공 예시
category: codingtest
permalink: /categories/codingtest/   # 일치 → 정상 동작
---
```


### 표시 이름 지정하기

그런데 아무래도 카테고리(=메뉴 이름)을 소문자로만 쓰자니 맥이 팍 꺾였다.  
..대문자도 쓰고 싶어...😭

찾아보니 yml 파일에 데이터에 매핑할 이름을 지정해서 사용할 수 있다고 한다.  
```yml
## _data/categories.yml
codingtest: "Coding Test"
project: "Project"
blog: "Blog"
```
`_data/categories.yml` 을 만들어 매핑 데이터를 설정하고 사이드바에 카테고리 이름을 조회하는 부분을 아래처럼 수정했다.
```liquid
<ul>            
    {% raw %}{% for category in site.categories %}{% endraw %}
        <li>
            <a href="{% raw %}{{ site.baseurl }}{% endraw %}/categories/{% raw %}{{ category[0] | slugify }}{% endraw %}/">
                {% raw %}{{ site.data.categories[category[0]] | default: category[0] }}{% endraw %}
            </a>
        </li>
    {% raw %}{% endfor %}{% endraw %}
</ul>
```

한 번에 잘 나왔다면 좋았겠지만 default(소문자) 값으로만 나타나고 매핑 값으로 나타나지 않는 것이다.  
디버깅을 해보니 `site.data.categories`는 읽어지는데 `[category[0]]` 이 부분이 문제인 것 같았다.  
`site.categories` 는 {category_name => [posts...]} 구조인데 Liquid에서 해시 키에 접근할 때는 [0]이 아니라 .first를 써야 한다는 것이다.  

`site.data.categories[category.first]`로 수정하니 해결되었다. 하하


### 알파벳 순으로 정렬하기

이제 알파벳 순으로만 정렬하면 될 것 같았다!  

여기서도 시행착오가 있었는데 `site.categories | sort` 가 동작하지 않았다.  
Liquid로 이리저리 sort를 하고 싶었는데 잘 되지 않았다..  

`site.categories`는 `{key => posts[]}` 구조의 해시라서, sort를 걸면 key가 아니라 value(posts 배열) 기준으로 정렬을 시도한다. 그래서 원하는 결과가 안 나왔고, key만 따로 뽑아 정렬하는 방식으로 해결했다.  

```liquid
{% raw %}{% assign cats = "" | split: "" %}
{% for pair in site.categories %}
    {% if pair[0] != 'project' %} <!-- Project는 별도 메뉴로 구성하기 위해 제외했다. -->
    {% assign cats = cats | push: pair[0] %}
    {% endif %}
{% endfor %}
{% assign cats = cats | sort_natural %}{% endraw %}
<ul>            
    {% raw %}{% for category in cats %}{% endraw %}
        <li>
            <a href="{% raw %}{{ site.baseurl }}{% endraw %}/categories/{% raw %}{{ category | slugify }}{% endraw %}/">
            {% raw %}{{ site.data.categories[category] | default: category }}{% endraw %}
            </a>
        </li>
    {% raw %}{% endfor %}{% endraw %}
</ul>
```

## 최종 결과
![완성한 Sidebar](/assets/images/post/2025/2025-10-02-blog_sidebar2.png)*내 취향 맞춰 완성한 Sidebar(To_be)*

디자인도 수정해서 완성을 했다.  
* 카테고리 페이지용 md 파일 생성
* 표시용 이름 매핑
* 키 배열 추출 후 순차 정렬

아직은 카테고리가 많지 않지만 추후에 계획만큼 늘어나면 아코디언 메뉴나 검색 기능도 붙여볼 생각이다.