---
title: JSP - Servlet 작성하기
key: 20210804
tags: Java project JSP Servlet Oracle Html CSS Javascript DBCP MVC jQuery Eclipse
categories: Java
---

# 서블릿(Servlet)이란?

클라이언트가 요청하는 요소(HTTP)를 웹 서버를 통해 동적인 Html 문서로 생성하여 그 결과를 전달해주는 자바 클래스입니다. 일반적인 자바 프로그램과는 달리 웹 서버에서 실행되어지는 프로그램이기 때문에 지정된 특정 클래스를 상속받아 사용합니다.[^1]  

[^1]: *참고) `JSP`는 서블릿 기반의 웹 프로그래밍 기술이기 때문에 내부적으로 서블릿으로 변환되어 실행됩니다.  

# 서블릿의 장점

* 순수 자바 프로그램이기 때문에 모든 자바 API를 사용할 수 있습니다.  
* 개발된 프로그램은 운영체제의 종류에 구애받지 않고 다양한 서버 환경에서 실행할 수 있습니다.  


~~~java
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet({"/css/*", "/js/*", "/img/*", "/static/*"})
public class Resrc extends HttpServlet {

	public void service(HttpServletRequest req, HttpServletResponse resp) {
		
		String url = req.getRequestURI(); 
						
		url = url.substring(url.indexOf("/", 1));	
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/resources" + url);
		try {
			rd.forward(req, resp);
		} catch(Exception e) {
			e.printStackTrace();
		}		
	}
}
~~~