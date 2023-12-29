<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java_review.Person" %>
    
<%
List<Object> arrList = new ArrayList<Object>();
arrList.add("이순신");
arrList.add(new Person("김유신", 30)); 

pageContext.setAttribute("hero", arrList);

Map<String, String> map = new HashMap<String, String>();
map.put("Kor", "한국어");
map.put("Eng", "영어");

pageContext.setAttribute("lang", map);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 Collection</title>
</head>
<body>
	<h3>EL을 이용해서 컬렉션에 저장된 값 가져오기</h3>
	<hr>
	<h3>List컬렉션에 저장된 값 가져오기: 반드시 대괄호로 각각의 저장된 데이터에 접근</h3>
	0번째 요소: ${hero[0]} <br>
	1번째 요소: ${hero[1].name}, ${Ocean[0].age} <br>
	2번째 요소: ${hero[2]} <br>
	EL을 통해서 컬렉션에 접근할 때 없는 컬렉션에 대해서 접근하면 내용을 출력시키지 않고 에러는 발생하지 않음<br>
	<hr>
	<h3>Map컬렉션에 저장된 값 가져오기: 대괄호나 닷(.)연산자 중 하나를 이용해서 데이터에 접근</h3>
	key(Kor): ${lang["Kor"]}, ${lang['Kor']}, ${lang.Kor}   

</body>
</html>