<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL: formatDate, timeZone</title>
</head>
<body>
	<c:set var="today" value="<%= new java.util.Date() %>" />
	
	<h4>날짜를 포맷하여 출력하기</h4>
	전체 : <fmt:formatDate value="${today}" type="date" dateStyle="full" /> <br>
	짧게 : <fmt:formatDate value="${today}" type="date" dateStyle="short" /> <br>
	길게 : <fmt:formatDate value="${today}" type="date" dateStyle="long" /> <br>
	기본 : <fmt:formatDate value="${today}" type="date" dateStyle="default" /> <br>
	
	<h4>시간를 포맷하여 출력하기</h4>
	전체 : <fmt:formatDate value="${today}" type="time" timeStyle="full" /> <br>
	짧게 : <fmt:formatDate value="${today}" type="time" timeStyle="short" /> <br>
	길게 : <fmt:formatDate value="${today}" type="time" timeStyle="long" /> <br>
	기본 : <fmt:formatDate value="${today}" type="time" timeStyle="default" /> <br>
	
	<h4>날짜와 시간를 모두 포맷하여 출력하기</h4>
	전체 : <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/> <br>
	패턴 : <fmt:formatDate value="${today}" type="both" pattern="yyyy-MM-dd hh:mm:ss"/> <br>
	
	<h4>타임존에 대한 날짜와 시간 출력하기</h4>
	<fmt:timeZone value="GMT">
	전체 : <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/> <br>
	</fmt:timeZone>
	
	<fmt:timeZone value="America/Chicago">
	전체 : <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/> <br>
	</fmt:timeZone>
	
	
	
</body>
</html>