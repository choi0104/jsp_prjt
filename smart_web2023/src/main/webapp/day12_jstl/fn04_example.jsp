<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL: functions 태그 라이브러리</title>
</head>
<body>
	<h3>문자열 변수 정의 및 EL에서 JSTL함수 사용</h3>
	<hr>
	<c:set var="str" value="Java based Smart Web Programming  " />
	원 문자열 : ${str} <br>
	문자열 앞뒤의 공백 제거 : ${fn:trim(str)} <br>
	모두 대문자로 : ${fn:toUpperCase(str)} <br>
	모두 소문자로 : ${fn:toLowerCase(str)} <br>
	Smart의 위치 : ${fn:indexOf(str, "Smart")} <br>
	Web의 포함여부 : ${fn:contains(str, "Web")} <br>
	Web의 포함여부(대소문자 구분 없음) : ${fn:containsIgnoreCase(str, "Web")} <br>
	Web을 App으로 바꿈 : ${fn:replace(str, "Web", "App")} <br>
	문자열의 길이 : ${fn:length(str)} <br>
	
	<hr>
	
	<h4>Smart문자열 추출하기:substring함수 사용</h4>
	<c:set var="smart_idx" value="${fn:indexOf(str, 'Smart')}" />
	<c:set var="smart_length" value="${fn:length('Smart')}" />
	${fn:substring(str, smart_idx, (smart_idx + smart_length))} <br>
	
	<hr>
	
	<h4>문자열 배열을 생성해서 forEach문으로 요소값 출력하기</h4>
	<c:set var="words" value="${fn:split(str, ' ') }" />
	<c:forEach var="word" items="${words}" >
		${word} <br>
	</c:forEach>
	
	배열의 각 항목을 콤마로 구분하고 결합해서 표시: ${fn:join(words, ", ")} <br>
	
	
</body>
</html>