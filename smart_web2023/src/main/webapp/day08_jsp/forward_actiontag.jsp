<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그: forward</title>
</head>
<body>
	<!-- 액션태그: 자바코드 대체용 태그로 JSP페이지에 적용됨 
		-형식: jsp:액션태그명 속성> 내용 /jsp:액션태그명> 또는 jsp:액션태그명 속성 />
		-forward : request객체를 유지하면서 다른 페이지로 이동하게 함
		-include: 포함되는 페이지의 실행결과를 포함하는 페이지에 포함시킴
		-useBean: 자바 객체 생성
		-setProperty: 생성된 객체의 필드에 값 세팅(request객체에 저장된 파라미터를 이용함)
		-getProperty: 생성된 객체의 필드 가져오기
	-->
	<%
	//request 객체에 nickname속성으로 "홍장군"을 추가함
	request.setAttribute("nickname", "홍장군");
	
	//forward시키는 자바코드: pageContext, RequestDispatcher 이용
	//pageContext.forward("forward.jsp");
	//request.getRequestDispatcher("forward.jsp").forward(request, response);
	%>
	<!-- forward액션태그로 포워드/포워딩하기 -->
	<jsp:forward page="forward.jsp"/>
</body>
</html>