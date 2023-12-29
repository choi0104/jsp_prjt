<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "human.dto.MemberDTO, human.dao.MemberDAO, java.sql.SQLException"%>

<%
//로그인 정보를 받아서 로그인 실행결과를 화면에 출력하되
//정상적으로 로그인되었으면 '로그인 성공'을 출력하고, 그렇지 않으면 '로그인 실패'를 출력하도록 구현하시오.
//post방식으로 넘어온 데이터의 한글깨짐 방지: request.setCharacterEncoding("UTF-8")
request.setCharacterEncoding("UTF-8");

String member_id = request.getParameter("member_id");
String member_pw = request.getParameter("member_pw");

MemberDTO dto = null;
MemberDAO dao = new MemberDAO();
try {			
	dto = dao.login(member_id, member_pw);	
} catch (SQLException e) {
	e.printStackTrace();
}

//응답 페이지 작성하기-response객체에 작성, PrinterWriter객체를 이용
//페이지 양식과 문자셋 지정: setContentType()
//response.setContentType("text/html;charset=UTF-8");
//PrintWriter out = response.getWriter();
//out.println("<!DOCTYPE html>");
//out.println("<html><head><title>로그인 여부에 대한 응답</title></head>");
//out.println("<body>");
//out.println("<h3>로그인 여부에 대한 응답</h3><hr>");
////out.println("<br>로그인 여부: "+((result==1)?"로그인 성공":"로그인 실패"));
//out.println("<br>로그인 여부: "+((dto != null)?"로그인 성공<br><a href='/human/update?m_idx="+dto.getM_idx()+"'>회원정보 변경</a>":"로그인 실패"));
//out.println("</body></html>");
//out.close();


//로그인 성공시 dto에 MemberDTO객체가 저장이 됨
//로그인 실패시 dto는 초기값 그대로 null이 됨
if(dto != null ) {//로그인 성공
	//회원정보를 세션 객체에 저장함:setAttribute()
	//HttpSession session = request.getSession();
	//jSP페이지가 Servlet으로 자동변환되면서 session객체를 생성해줌
	//_jspService() 메소드내에 session 생성구문
	//
	session.setAttribute("member", dto);
	//메인페이지로 이동
	response.sendRedirect("/human/main/index.jsp");
}else{//로그인 실패
	//로그인페이지로 이동
	//response.sendRedirect("/human/day06_jsp/login.jsp");

	//로그인 페이지로 이동: fowar로 페이지 이동
	//request객체르 이용해서 로그인 실패시 안내 메시지를 로근인 페이지에 출력하고자 함
	String msg = "아이디나 비밀번호가 일치하지 않습니다.";
	request.setAttribute("msg", msg);
	//1. RequestDispatcher객체를 이용한 방법(서블릿, JSP 모두 가능)
	//request.getRequestDispatcher("login.jsp").forward(request, response);

	//2. pageContext객체를 이용한 방법(JSP에서만 가능)
	pageContext.forward("login.jsp");
}

%>
