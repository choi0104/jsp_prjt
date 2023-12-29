package day05_member;

import java.io.IOException;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import human.dao.MemberDAO;
import human.dto.MemberDTO;

@WebServlet("/memberLogin")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = -626859991547783303L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
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
//		response.setContentType("text/html;charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		out.println("<!DOCTYPE html>");
//		out.println("<html><head><title>로그인 여부에 대한 응답</title></head>");
//		out.println("<body>");
//		out.println("<h3>로그인 여부에 대한 응답</h3><hr>");
//		//out.println("<br>로그인 여부: "+((result==1)?"로그인 성공":"로그인 실패"));
//		out.println("<br>로그인 여부: "+((dto != null)?"로그인 성공<br><a href='/human/update?m_idx="+dto.getM_idx()+"'>회원정보 변경</a>":"로그인 실패"));
//		out.println("</body></html>");
//		out.close();
		
		
		//로그인 성공시 dto에 MemberDTO객체가 저장이 됨
		//로그인 실패시 dto는 초기값 그대로 null이 됨
		if(dto != null ) {//로그이 성공
			//회원정보를 세션 객체에 저장함:setAttribute()
			HttpSession session = request.getSession();
			session.setAttribute("member", dto);
			//메인페이지로 이동
			response.sendRedirect("/human/main/index.jsp");
		}else{//로그인 실패
			//로그인페이지로 이동
			response.sendRedirect("/human/day05_member/login.jsp");
		}
	}
}