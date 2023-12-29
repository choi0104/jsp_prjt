<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%//영역별로 객체에 동일한 이름의 속성 추가
pageContext.setAttribute("name","홍길동p");
request.setAttribute("name","홍길동r");
session.setAttribute("name","홍길동s");
application.setAttribute("name","홍길동a");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 영역별 내장객체</title>
</head>
<body>
<h3>EL영역별 내장객체: 각 영역에 저장된 동일한 이름의 속성 가져오기</h3>
<ul>
<li>페이지 영역의 name 속성값: ${pageScope.name}</li>
<li>request 영역의 name 속성값: ${requestScope.name}</li>
<li>session 영역의 name 속성값: ${sessionScope.name}</li>
<li>application 영역의 name 속성값: ${applicationScope.name}</li>
</ul>

<hr>
<h3>영역 지정없이 name속성을 가져오면 가장 좁은 영역에서부터 속성을 가져옴</h3>
${name}


</body>
</html>