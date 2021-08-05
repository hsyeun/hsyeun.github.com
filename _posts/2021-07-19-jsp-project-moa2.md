---
title: [JSP] jsp:include로 공통소스 간편히 사용하기
key: 20210719
tags: Java project JSP Servlet Oracle Html CSS Javascript JDBC MVC jQuery Eclipse
categories: Java
---


메인페이지의 <head> 태그와 헤더, 푸터는 다른 페이지에도 공통으로 사용되는 소스입니다.  
소스 중복을 방지하고 소스의 수정을 간편히 하기 위해 <jsp:include> 라는 액션태그를 사용했습니다.  

~~~jsp
<head>
    <jsp:include page="a_nav/head.jsp" />
</head>
<body>
    <!-- Header -->
	<jsp:include page="a_nav/nav.jsp" />

    ...

    <!-- Footer-->
    <jsp:include page="a_nav/footer.jsp" />
</body>
~~~