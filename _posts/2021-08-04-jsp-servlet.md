---
title: JSP - Servlet 작성하기
key: 20210804
tags: Java project JSP Servlet Oracle Html CSS Javascript DBCP MVC jQuery Eclipse
categories: Java
---


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