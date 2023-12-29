<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL: setLocale</title>
</head>
<body>
	<h4>언어와 국가코드로 지역을 설정하여 숫자와 날짜 출력하기</h4>
	<jsp:useBean id="date" class="java.util.Date" />
	<c:set var="today" value="${date}" />
	
	한글로 설정 : <fmt:setLocale value="ko_KR" />
	<fmt:formatNumber value="123456789" type="currency" />
	<fmt:formatDate value="${today}" /> <br><br>
	
	일어로 설정 : <fmt:setLocale value="ja_JP" />
	<fmt:formatNumber value="123456789" type="currency" />
	<fmt:formatDate value="${today}" /> <br><br>
	
	영어로 설정 : <fmt:setLocale value="en_US" />
	<fmt:formatNumber value="123456789" type="currency" />
	<fmt:formatDate value="${today}" /> <br>
	
</body>
</html>