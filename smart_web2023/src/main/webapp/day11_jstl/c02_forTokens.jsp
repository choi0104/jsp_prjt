<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL:forTokens</title>
</head>
<body>

<%
	String subjects = "java, HTML, CSS3, Javascript, SQL, Servlet, JSP";
%>

	<h4>forTokens태그를 이용해서 문자열을 토큰으로 출력하기</h4>
	<c:forTokens var="subject" items="<%= subjects %>" delims=", ">
		${subject}<br>
	</c:forTokens>

	<hr>
	
	<h4>URL과 함께 넘어온 각각의 쿼리스트링을 구분하여 출력하기</h4>
	<%
	String url = "http://localhost:9090/human/main/index.jsp?pageNum=2&pageBlock=1";
	%>
	<c:forTokens var="url_str" items="<%= url %>" delims="?" varStatus="u_status">
		<c:if test="${u_status.last}">
			<c:set var="queryString" value="${url_str}"/>
		</c:if>
	</c:forTokens>
	
	<c:forTokens var="query_str" items="${queryString}" delims="&">
		${query_str} <br>
	</c:forTokens>
</body>
</html>