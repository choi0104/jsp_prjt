<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL: out</title>
</head>
<body>
	<c:set var="i_tag">
		i 태그는 <i>기울임</i>을 표현합니다.
	</c:set>
	
	<h4>표현식이나 EL과 동일한 역할을 하는 out태그 사용하기</h4>
	<c:out value="${i_tag}"/>
	
	<h4>출력내용에 포함된 HTML태그를 적용해서 출려하는 out태그 사용하기</h4>
	<c:out value="${i_tag}" escapeXml="false"/>
	<!-- escapeXml속성을 "false"로 지정하면 HTML태그를 해석하여 마크업이 적용된 상태로 출력함 -->
	
	<h4>출력내용이 null일 경우 기본값을 지정해서 출력하는 opt태그 사용하기</h4>
	<c:out value="${param.name }" default="이름 없음"/>
	
	<h4>빈 문자열도 하나의 값이므로(null이 아니므로) default에 지정한 값이 출력되지 않음</h4>
	<c:out value="" default="이름 없음"/>
</body>
</html>