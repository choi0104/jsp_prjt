<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 테스트</title>
</head>
<body>
	<h3>사용자의 세션ID를 쿠키를 통해서 확인하기</h3>
	<hr>
	<%
	Cookie [] cookies = request.getCookies();
	for(Cookie cookie : cookies){
		//서버에서 세션객체가 생성되면서 만들어지는 세션ID를 JSESSINONID라는 이름으로 쿠키객체를
		//만들어서 응답객체(response)에 추가함
		if("JSESSIONID".equals(cookie.getName())){
			out.print("쿠키에 저장된 세션ID : " + cookie.getValue());
		}
	}
	%>

	<h3>새로운 쿠키를 생성해서 사용자에게 전달하기</h3>
	<hr>
	<%
	//name = "pid0001", value = "M0001"
	Cookie cookie01 = new Cookie("pid0001", "M0001");
	Cookie cookie02 = new Cookie("pid0002", "M0002");
	//쿠키 유지시간(유효기간) 설정
	cookie01.setMaxAge(60*60);//60분
	cookie02.setMaxAge(60*60);//60분
	//response객체에 쿠키 추가하기\
	response.addCookie(cookie01);
	response.addCookie(cookie02);
	
	%>
</body>
</html>