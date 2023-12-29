<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, java_review.Person"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL:forEach문</title>
</head>
<body>
	<h3>일반 for문 형태의 forEach 태그</h3>
	<hr>
	
	<h4>1부터 5까지의 정수 출력하기</h4>
	<%-- <c:forEach var="i" begin="1" end="5" step="1" varStatus="i_status">
		<p> ${i} </p>
	</c:forEach> --%>
	<c:forEach var="i" begin="1" end="5">
		<p> ${i} </p>
	</c:forEach>

	<h4>1부터 100까지의 정수 중 홀수의 합 출력하기(step속성을 이용하지 않고)</h4>
	<c:forEach var="j" begin="1" end="100">
<%-- 		<c:if test="${i mod 2 eq 1}">
			<c:set var="sum" value="${sum +j}"/>
		</c:if>
 --%>	</c:forEach>
	합계: ${sum} <br>

	<h4>0부터 10까지의 정수 중 3의 배수를 출력하고 개수도 출력하기</h4>
	<c:forEach var="k" begin="0" end="10" step="3" varStatus="k_status">
		${k}<c:if test="${not k_status.last}">, </c:if>
	</c:forEach>

	<h4>아래의 색상이름 배열의 각 단어를 각각의 색깔로 출력하기</h4>
	<% String [] colors = {"Red", "Green", "Blue", "Black"}; 
	pageContext.setAttribute("colors", colors);
	%>
	<c:forEach var="color" items="${colors}">
		<span style="color:${color};"> ${color}</span>
	</c:forEach>

	<h4>List컬랙션에 저장된 객체 출력하기</h4>
	<% 
	List<Person> lists = new ArrayList<Person>();
	lists.add(new Person("홍길동", 20));
	lists.add(new Person("이순신", 30));
	lists.add(new Person("강감찬", 40));
	%>
	<c:forEach var="person" items="<%= lists %>">
		<p> 이름: ${person.name}, 나이: ${person.age}</p>
	</c:forEach>
	
	<h4>회원정보 테이블에 저장된 회원정보를 목록으로 출력하기</h4>
	<h4>(출력양식)헤더 제목: 구분, 이름, 아이디, 비밀번호, 핸드폰, 이메일, 가입일</h4>
	<jsp:useBean id="dao" class="human.dao.MemberDAO" />
	<c:set var="members" value="${dao.getMembers()}"/>
	<table border="1">
		<tr>
			<th>구분</th><th>이름</th><th>아이디</th>
			<th>비밀번호</th><th>핸드폰</th><th>이메일</th>
			<th>가입일</th>
		</tr>
		<c:forEach var="member" items="${members}" varStatus="m_status">
			<tr>
				<th>${m_status.count}</th><th>${member.member_name}</th><th>${member.member_id}</th>
				<th>${member.member_pw}</th><th>${member.handphone}</th><th>${member.email}</th>
				<th>${member.reg_date}</th>
			</tr>
		</c:forEach>
	</table>
	

	<h4>Map컬랙션에 저장된 객체 출력하기</h4>
	<% 
	Map<String, Person> Maps = new HashMap<String, Person>();
	Maps.put("1st", new Person("홍길동", 20));
	Maps.put("2nd", new Person("이순신", 30));
	Maps.put("3rd", new Person("강감찬", 40));
	%>
	<c:forEach var="Map" items="<%= Maps %>">
		<p>키값: ${Map.key}, 이름: ${Map.value.name}, 나이: ${Map.value.age}</p>
	</c:forEach>
</body>
</html>