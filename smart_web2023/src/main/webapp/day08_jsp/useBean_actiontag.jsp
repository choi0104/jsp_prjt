<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈과 액션태그: useBean, setProperty, getProperty</title>
</head>
<body>
	<h3>자바빈과 액션태그</h3>
	<hr>
	useBean액션태그는 자바 객체를 생성하는 자바코드를 대체함<br>
	setProperty액션태그는 setter메소드로 파라미터를 자바DTO 객체에 세팅하는 자바코드를 대체함
	getProperty액션태그는 자바객체를 출력하는 표현식을 대체함
	
	<%
	//회원가입정보를 받아서 DB에 입력하고 입력된 결과를 화면에 출력하되
	//정상적으로 회원 가입되었으면 '회원가입 성공'을 출력하고 그렇지 않으면 '회원가입 실패'를 출력하도록 구현하시오.
	//post방식으로 넘어온 데이터의 한글깨짐 방지: request.setCharacterEncoding("UTF-8")
	request.setCharacterEncoding("UTF-8");

/* 	
//<jsp:useBean id="dto" class="human.dto.MemberDTO"/>: 아래 자바코드를 대체함
MemberDTO dto = new MemberDTO();

//<jsp:setProperty name ="dto" property="*"/>: 아래 자바코드를 대체함
String member_id = request.getParameter("member_id");
String member_pw = request.getParameter("member_pw");
String member_name = request.getParameter("member_name");
String handphone = request.getParameter("handphone");
String email = request.getParameter("email");

dto.setMember_id(member_id);
dto.setMember_pw(member_pw);
dto.setMember_name(member_name);
dto.setHandphone(handphone);
dto.setEmail(email); */
%>
	<jsp:useBean id="dto" class="human.dto.MemberDTO"/>
	<jsp:setProperty name="dto" property="*"/>
	
	<hr>
	아이디:<jsp:getProperty name="dto" property="member_id"/><br>
	비밀번호:<jsp:getProperty name="dto" property="member_pw"/><br>
	이름:<jsp:getProperty name="dto" property="member_name"/><br>
	핸드폰:<jsp:getProperty name="dto" property="handphone"/><br>
	이메일:<jsp:getProperty name="dto" property="email"/><br>
	
	<a herf="javascript:history.back()">이전 페이지</a>
	
</body>
</html>