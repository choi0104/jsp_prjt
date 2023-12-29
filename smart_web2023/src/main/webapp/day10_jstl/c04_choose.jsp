<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL:choose,when,otherwise</title>
</head>
<body>
<!-- set태그로 num이라는 변수를 선언하고 100을 값으로 추가 -->
<c:set var="num" value="100"/>

<h4>choose, when,otherwise 태그로 홀수, 짝수 판단하기</h4>
<c:choose>
<c:when test="${(num mod 2) eq 0}" > ${num}: 짝수</c:when>
<c:otherwise>${num}: 홀수</c:otherwise>
</c:choose>

<hr>
<h4>국어, 영어, 수학 점수를 입력해서 평균을 내고 이에 대한 학점을 출력</h4>
<form>
국어: <input type="text" name="kor"><br>
영어: <input type="text" name="eng"><br>
수학: <input type="text" name="math"><br>
<input type="submit" value="학점구하기"><br>
</form>

<!-- form에서 action속성을 생략하면 현재 JSP페이지를 요청하고 입력된 값을 전달해줌 
	method속성을 생략하면 get방식으로 입력값을 전송함
	EL의 param객체를 이용해서 전달값을 받아서 평균을 구하고 평균이 90점 이상이면 A를 출력하고
	80점 이상이면 B를 출력하고 70점 이상이면 C를 출력하는 구문을 작성하기
	(출력형식) 평균: 85
	학점: B
-->
<!-- 평균 구하기 => 변수에 저장 -->
<c:set var="avg" value="${(param.kor + param.eng + param.math) div 3}"/>
평균: ${avg} <br>
평균:
<c:choose>
	<c:when test="${avg >= 90}"> A </c:when>
	<c:when test="${avg ge 80}"> B </c:when>
	<c:when test="${avg >= 70}"> C </c:when>
</c:choose>





</body>
</html>