---
layout: article
titles:
  # @start locale config
  en      : &EN       Category
  en-GB   : *EN
  en-US   : *EN
  en-CA   : *EN
  en-AU   : *EN
  ko      : &KO       카테고리
  ko-KR   : *KO
  # @end locale config
key: page-category
---

{% for category in site.categories %}
{% capture category_name %}{{ category | first }}{% endcapture %}
<h3 class="category-head">{{ category_name }}</h3>
<a name="{{ category_name | slugize }}"></a>
{% for post in site.categories[category_name] %}
<article class="archive-item">
  <p style="line-height:1.5rem">
    <a href="{{ site.baseurl }}{{ post.url }}">{{post.title}}</a>
    <span style="font-size: 1rem; font-weight:normal">{{post.date | date: "%b %d %Y"}}</span>
  </p>
</article>
{% endfor %}
{% endfor %}