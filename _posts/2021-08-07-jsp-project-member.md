---
title: JSP - 회원가입, 로그인, 로그아웃 기능 만들기
key: 20210807
tags: Java project JSP Servlet Oracle Html CSS Javascript JDBC MVC jQuery Eclipse
categories: Java
---


사이트 운용에서 고객들을 관리하기 위해 회원가입, 로그인, 로그아웃 기능은 꼭 구현해두어야 합니다.  
프로젝트 때 만들었던 기능을 재구성해보겠습니다.  

# 회원가입

회원가입 기능의 원리는 사용자가 아이디나 닉네임, 비밀번호 등의 값을 입력하고 가입완료 버튼을 눌렀을 때 입력한 값이 데이터베이스로 전송되어 회원 데이터를 생성하는 것입니다.  

먼저 뷰 작업(디자인)을 해야겠죠. jsp 파일을 만들어 html, css 등을 사용해 데이터를 받을 회원가입 폼을 만듭니다.  
![joinForm](/assets/images/post/2021-08-11-jsp-joinform.png)  

대강 폼이 만들어지면 jsp 안에서 데이터를 전송할 준비를 합니다.  
여기서 해야 할 것이 두 가지인데 1. form 태그 사용 2. 자바스크립트로 '가입하기'버튼 동작하기


우선 데이터가 입력될 태그들(이름~이메일)을 form 태그로 감싸줍니다.  

저는 데이터 전송처리를 joinProc라는 가상의 페이지로 보낼것이기 때문에 form 태그의 action 주소를 해당 경로로 입력했습니다.  

~~~html
<form method="post" id="frm" name="frm" action="(joinProc 경로)">

	<label for="name">이름 : </label>
	<div class="input-group mb-3">
		<input type="text" class="form-control" id="name" name="name">
	</div>

	...

	<label for="email">이메일 : </label>
	<div class="input-group mb-3">
		<input type="text" class="form-control" id="email" name="email">
	</div>

</form>
~~~

그리고 '가입하기' 버튼을 눌렀을 때 저 form 안의 데이터가 보내지도록 처리할 것입니다.  

~~~javascript
	$('#button').click(function(){		
		$('#frm').submit();		
	});
~~~


그리고 회원가입 jsp가 서버를 통해 보여질 수 있도록 `컨트롤러` 작업을 합니다.  
컨트롤러는 서블릿 메소드가 있는 Controller 인터페이스를 구현해서 오버라이딩 했습니다.  

~~~java
public class Join implements Controller {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp)
     throws ServletException, IOException {
		String view = "(회원가입페이지 경로)";	//기본적으로 보여질 뷰
		if(req.getSession().getAttribute("SID") != null) {
			req.setAttribute("isRedirect", true);
			view = "(메인페이지 경로)";	//만약 로그인되지 않으면 메인페이지로 돌아가기
		}
		
		return view;
	}
}
~~~



# 로그인

# 로그아웃
