<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL: import</title>
</head>
<body>
	<h3>import태그</h3>
	<hr>
	import태그는 jsp:include태그나 RequestDispatcher.include(), pageContext.include()의 역할을 함<br>
	JSP페이지에 포할시킬 내용을 변수에 저장하고 원하는 위치에 포함시킬 수 있음
	<h4>footer영역의 내용을 import 태그를 이용해서 원하는 위치에 포함시키기</h4>
	<c:import var="footer" url="../common/footer.jsp"/>
	내용<br>
	내용<br>
	내용<br>
	내용<br>
	${footer}
	
</body>
</html>