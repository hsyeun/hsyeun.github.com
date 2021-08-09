---
title: JSP - 회원가입, 로그인, 로그아웃 기능 만들기
key: 20210807
tags: Java project JSP Servlet Oracle Html CSS Javascript JDBC MVC jQuery Eclipse
categories: Java
---


사이트 운용에서 고객들을 관리하기 위해 회원가입, 로그인, 로그아웃 기능은 꼭 구현해두어야 합니다.  
프로젝트 때 만들었던 기능을 재구성해보겠습니다.  

# 회원가입

우선 회원가입 페이지를 보여주는 `컨트롤러`를 만듭니다.  
컨트롤러는 미리 exec를 만들어둔 Controller 클래스를 상속해서 오버라이드 했습니다.  

~~~java
public class Join implements Controller {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp)
     throws ServletException, IOException {
		String view = "(회원가입페이지 주소)";
		if(req.getSession().getAttribute("SID") != null) {  //
			req.setAttribute("isRedirect", true);
			view = "(메인페이지 주소)";
		}
		
		return view;
	}
}
~~~

# 로그인

# 로그아웃
