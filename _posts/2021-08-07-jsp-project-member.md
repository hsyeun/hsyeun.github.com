---
title: JSP - 회원가입, 로그인, 로그아웃 기능 만들기
key: 20210807
tags: Java project JSP Servlet Oracle Html CSS Javascript JDBC MVC jQuery Eclipse
categories: Java
---


사이트 운용에서 고객들을 관리하기 위해 회원가입, 로그인, 로그아웃 기능은 꼭 구현해두어야 합니다.  
프로젝트 때 만들었던 기능을 재구성해보겠습니다.  

# 회원가입

우선 뷰 작업을 해야겠죠. html, css 등을 사용해 데이터를 받을 회원가입 폼을 만듭니다.  
(뷰 작업은 생략하겠습니다.)  

그리고 그 회원가입 뷰가 서버를 통해 보여질 수 있도록 `컨트롤러` 작업을 합니다.  
컨트롤러는 서블릿 메소드가 있는 Controller 인터페이스를 구현해서 오버라이드 했습니다.  

~~~java
public class Join implements Controller {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp)
     throws ServletException, IOException {
		String view = "(회원가입페이지 경로)";	//기본적으로 보여질 뷰
		if(req.getSession().getAttribute("SID") != null) {
			req.setAttribute("isRedirect", true);
			view = "(메인페이지 경로)";	//가입완료 후(자동로그인x) 메인페이지로 돌아가기
		}
		
		return view;
	}
}
~~~

# 로그인

# 로그아웃
