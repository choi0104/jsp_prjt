<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
//post방식으로 전달되는 한글 데이터 깨짐 방지
//request.setCharacterEncoding("UTF-8");

//한글깨짐 방지를 위해 일괄적으로 처리하도록 web.xml에 한글필터를 추가함
  <filter>
  	<filter-name>HangulEncoding</filter-name>
  	<filter-class>org.apache.catalina.filters.setCharacterEncodingFilter</filter-class>
  	<init-param>
  		<param-name>encoding</param-name>
  		<param-value>UTF-8</param-value>
  	</init-param>
  </filter>
  
  <filter-mapping>
  	<filter-name>HangulEncoding</filter-name>
  	<url-pattern>/*</url-pattern> <!-- /*: 모든 요청 -->
  </filter-mapping>
--%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 param과 paramValues를 이용해서 값 받기</title>
</head>
<body>
	<h3>EL의 param과 paramValues를 이용해서 값 받기</h3>
	<hr>
	닉네임: ${param.nickname}<br>
	관심사항: ${paramValues.interest[0]}  ${paramValues.interest[1]}
	        ${paramValues.interest[2]}  ${paramValues.interest[3]}
</body>
</html>