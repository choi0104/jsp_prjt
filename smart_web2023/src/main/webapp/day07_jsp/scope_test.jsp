<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>속성(attribute)과 영역(scope) 테스트</title>
</head>
<body>

<h3>각 영역별로 동일한 이름의 속성을 추가하고 테스트하기</h3>
<hr>

<%
pageContext.setAttribute("name", "홍길동p");
request.setAttribute("name", "홍길동r");
session.setAttribute("name", "홍길동s");
application.setAttribute("name", "홍길동a");

//현재 JSP페이지에서 속성으로 저장된 값 유효범위 확인하기
out.println("page영역 : " + pageContext.getAttribute("name")+"<br>");
out.println("request영역 : " + request.getAttribute("name")+"<br>");
out.println("session영역 : " + session.getAttribute("name")+"<br>");
out.println("application영역 : " + application.getAttribute("name")+"<br>");

//포워딩을 통해서 scope_test2.jsp 페이지로 이동해서 유효범위 확인하기
pageContext.forward("scope_test2.jsp");

%>

</body>
</html>