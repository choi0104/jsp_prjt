<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- JSTL을 사용하기 위해서는 jstl-1.2.jar 파일을 다운로드 받아서 WEB-INF/lib폴더에 추가해줘야함
https://mvnrepository.com/artifact/javax.servlet/jstl/1.2
 -->
 <%@ page import="java.util.*, java_review.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>set태그를 이용해서 컬렉션을 저장하고 이용하기</h3>
<%
ArrayList<Person> pList = new ArrayList<Person>();
pList.add(new Person("홍길동", 20));
pList.add(new Person("이순신", 30));
%>

<c:set var="personList" value="<%= pList %>" scope="request"/>
<hr>
<h4>EL을 이용한 변수 출력</h4>
나이 : ${personList[0].name} <br>
이름 : ${personList[0].age} <br>



</body>
</html>