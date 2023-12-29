<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL: redirect</title>
</head>
<body>
	<h3>response객체의 sendRedirect()메소드와 같은 기능을 하는 태그</h3>
	<c:redirect url="../main/index.jsp">
		<c:param name="msg" value="메세지" />
	</c:redirect>
</body>
</html>