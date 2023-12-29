<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>request객체를 유지하면서 페이지 이동이 이루어졌는지 확인하기</h3>
	<hr>
	<%
	String nickname = (String)request.getAttribute("nickname");
	out.print("별명 : " + nickname);
	%>
	
</body>
</html>