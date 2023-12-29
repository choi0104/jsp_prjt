<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그 : include</title>
</head>
<body>

    <h3>페이지 실행결과를 포함시키는 include()메소드를 대체하는 include액션태그</h3>
    <hr>
    <%
    request.setAttribute("nickname", "홍장군");
    
    //include액션태그에 의해 교체된 자바코드
    //pageContext.include("include01.jsp");
    %>
    
    <jsp:include page="include01.jsp" />
    
    <hr>
    include액션태그에 의해 포함된 페이지에 정의된 member_name은 현재 페이지에서 사용할 수 없다.<br>
    include액션태그로 페이지에 포함되는 내용은 실행 결과만을 포함시키는 모듈화된 내용이다.
    
    <hr>
    <%@ include file="include02.jsp" %>
    
    <hr>
    include지시자에 의해 포함된 코드에 정의된 member_id는 현재 페이지에서 사용할 수 있다.<br>
    include지시자로 페이지에 포함되는 내용은 현재 페이지를 구성하는 조각코드이다.<br>
    member_id : <%= member_id %>

</body>
</html>