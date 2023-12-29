<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include액션태그로 포함될 페이지</title>
</head>
<body>
<%
   //include_actiontag.jsp 페이지에서 가져오는 request객체의 nickname속성
   String nickname = (String)request.getAttribute("nickname");

   //현재 페이지에 정의한 변수 member_name
   String member_name = "홍길동";
   
   out.print("<h3>"+member_name+"의 닉네임 : "+nickname);

%>
</body>
</html>