<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 기타 내장객체: cookie, header, pageContext</title>
</head>
<body>
	<h3>쿠키값을 읽을 때 사용하는 cookie 내장객체</h3>
	쿠키값: ${cookie.JSESSIONID.value}<br>
	
	<h3>HTTP 헤더값을 읽을 때 사용하는 header 내장객체</h3>
	host: ${header.host} <br>
	user-agent: ${header['user-agent']} <br>
	cookie: ${header.cookie} <br>
	
	<h3>JSP의 pageContext 내장객체와 동일한 역할을 하는 pageContext내장객체</h3>
	컨텍스트 패스: ${pageContext.request.contextPath} <br>
	
</body>
</html>