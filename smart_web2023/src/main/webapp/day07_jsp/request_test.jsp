<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체: request</title>
</head>
<body>
<h3>request객체의 메소드를 이용해서 저장된 정보 확인하기</h3>
<hr>
컨텍스트 패스 : <%= request.getContextPath() %><br>
요청방식 : <%= request.getMethod() %><br>
요정한 URL : <%= request.getRequestURL() %><br> 
요청한 URI : <%= request.getRequestURI() %><br>
서버의 이름 : <%= request.getServerName() %><br>
프로토콜 : <%= request.getProtocol() %>
</body>
</html>