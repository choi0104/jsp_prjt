<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL:if문</title>
</head>
<body>

<!-- 변수 선언 -->
<c:set var="num" value="101" />
<c:set var="str" value="JSP" />

<h4>if태그를 이용한 홀수, 짝수 판단하기</h4>
<!-- (형식)<c:if test="조건식" var="조건식의 결과를 저장할 변수명"> 조건식이 true일 때 실행내용 </c:if> -->
<hr>
<c:if test="${(num mod 2) eq 0}" var="result">${num} : 짝수</c:if>
<c:if test="${not result}" var="result">${num} : 홀수</c:if>
result : ${result} <br>

<hr>
<h4>조건식 사용시 유의사항</h4>
<c:if test="100" var="result3"> EL이 아닌 정수를 지정하면 false값을 결과값으로 냄: ${result3}</c:if>
EL이 아닌 정수를 지정하면 false값을 결과값으로 냄: ${result3}<br>
<c:if test="tRuE" var="result4"> 대소문자 구분 없이 조건식에 "true"를 입력하면 true 결과값을 냄: ${result4}</c:if>
<%-- <c:if test="${true}" var="result5"> EL 양쪽에 공백이 있으면 false값을 결과값으로 냄: ${result5}</c:if>
 --%>
</body>
</html>