<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포워드(포워딩) 결과확인</title>
</head>
<body>
	<%
	String age = request.getParameter("age");
	String name = (String)request.getAttribute("name");
	
	out.print("나이 : " + age +", 이름 : " + name);
	%>

</body>
</html>