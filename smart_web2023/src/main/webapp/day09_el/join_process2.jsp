<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.SQLException" %>   
    
<%
//회원가입정보를 받아서 DB에 입력하고 입력된 결과를 화면에 출력하되
//정상적으로 회원 가입되었으면 '회원가입 성공'을 출력하고 그렇지 않으면 '회원가입 실패'를 출력하도록 구현하시오.
//post방식으로 넘어온 데이터의 한글깨짐 방지: request.setCharacterEncoding("UTF-8")
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dto" class="human.dto.MemberDTO" scope="session"/>
<jsp:setProperty name="dto" property="*" />

<jsp:useBean id="dao" class="human.dao.MemberDAO" />

<%
int result = 0;
try {
    
    result= dao.join(dto);
    
} catch (SQLException e) {
    e.printStackTrace();
}

//회원가입 성공시 메인페이지로 이동
//회원가입 실패시 회원가입페이지로 이동
//페이지 이동: 새로운 페이지로 이동 - response.sendRedirect(페이지URL)
//- 서버에 새로운 페이지 요청을 하는 것과 같기 때문에 기존의 요청은 결과값 없이 응답되고
//  바로 서버로 요청을 보냄
//(기존의 request, response객체는 소멸하고 새로운 request, response객체 생성됨)
if(result == 1) {
    response.sendRedirect("/human/main/index.jsp");
}else {
    response.sendRedirect("/human/day06_jsp/join.jsp");
}



%>