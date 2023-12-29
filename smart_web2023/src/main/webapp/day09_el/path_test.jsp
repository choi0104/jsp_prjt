<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.File, java.util.Set, java.net.URL" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바소스에서 webapp폴더에 대한 경로 잡기</title>
</head>
<body>

<%
	Set<String> resourcePaths = application.getResourcePaths("/resources");
	for(String resourcePath : resourcePaths){
		out.print("자원경로 : "+ resourcePath+"<br>");
	}

	//자바코드에서 webapp폴더에 있는 resources폴더에 대한 경로를 잡을 때 URL객체를 이용함
	URL resourcesURL = application.getResource("/resources/css");
	String [] files = new File(resourcesURL.getPath()).list();
	if(files != null){
		out.println("폴더 내 파일개수 : "+files.length);
	}else{
		out.println("files값이 null임"); 
	}
	
	//JSP페이지 내에 있는 자바코드에서 정한 값을 JSP페이지에 연결된 자바스크립트에서 사용할 때 유의할 점
	//자바스크립트에서 자바변수 사용하려면 표현식이나 EL을 이용함
	//JSP페이지에서 자바스크립트가 적용되는 순서: Java => JSTL => HTML => Javascript
	

%>

</body>
</html>