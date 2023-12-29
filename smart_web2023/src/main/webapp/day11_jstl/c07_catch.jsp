<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> 자바코드로 임의로 예외를 발생시키고 에외메시지 출력하기</h3>
	<c:catch var="errorMsg01">
		<%
			int result = 100/0;//산술예외 발생시킴
		%>
	</c:catch>
	예외내용: ${errorMsg01}
	<hr>
	
	<h3>EL에서 임의로 예외를 발생시키고 예외메시지 출력하기</h3>
	<c:catch var="errorMsg02">
		${"일" +100}<!-- EL의 +는 덧셈 연산만 수행함 -->
	</c:catch>
	예외내용: ${errorMsg02}

</body>
</html>