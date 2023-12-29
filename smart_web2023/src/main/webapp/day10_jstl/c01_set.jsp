<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- JSTL을 사용하기 위해서는 jstl-1.2.jar 파일을 다운로드 받아서 WEB-INF/lib폴더에 추가해줘야함
https://mvnrepository.com/artifact/javax.servlet/jstl/1.2
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>core라이브러리를 이용해서 변수를 선언할 수 있도록 지원하는 set태그</h3>
<c:set var="var1" value="100"/>
<c:set var="var2" value="${directVar mod 5}"/>
<c:set var="var3" value="<%= new java.util.Date() %>"/>
<c:set var="var4">JSTL</c:set>
<hr>
<h4>EL을 이용한 변수 출력</h4>
var1 : ${var1} <br>
var2 : ${var2} <br>
var3 : ${var3} <br>
var4 : ${var4} <br>
<hr>
<h4>자바객체(자바빈으로 정의) 생성하기</h4>
<c:set var="person" value='<%= new java_review.Person("홍길동", 20) %>' scope="request"/>
이름: ${person.name} <br>
나이: ${person.age} <br>

</body>
</html>