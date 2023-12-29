<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 테스트2</title>
</head>
<body>
	<h3>사용자의 쿠키정보 확인하기</h3>
	<hr>
	<%
	Cookie [] cookies = request.getCookies();
	for(Cookie cookie : cookies){
		out.print(cookie.getName() + " : " + cookie.getValue() + "<br>");
	}
	%>
	
</body>
</html>