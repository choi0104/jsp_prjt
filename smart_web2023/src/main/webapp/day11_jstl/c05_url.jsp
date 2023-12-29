<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL: url</title>
</head>
<body>
	<h4>여러 번 사용하는 URL을 변수로 저장해서 사용하기</h4>
	<hr>
	<h5>메인 페이지에 대한 URL을 url_main으로 저장해서 사용하기</h5>
	<c:url var="url_main" value="../main/index.jsp"/>
	<a href="${url_main}">홈</a>
</body>
</html>