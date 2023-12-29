package booklog;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/bookJoin")
public class bookjoin extends HttpServlet {

	private static final long serialVersionUID = 8259704377039656631L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//회원가입정보를 받아서 DB에 입력하고 입력된 결과를 화면에 출력하되
		//정상적으로 회원 가입되었으면 '회원가입 성공'을 출력하고 그렇지 않으면 '회원가입 실패'를 출력하도록 구현하시오.
		//post방식으로 넘어온 데이터의 한글깨짐 방지: request.setCharacterEncoding("UTF-8")
		request.setCharacterEncoding("UTF-8");
		
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		String member_name = request.getParameter("member_name");
		String handphone = request.getParameter("handphone");
		String email = request.getParameter("email");
		
		bookDTO dto = new bookDTO();
		dto.setMember_id(member_id);
		dto.setMember_pw(member_pw);
		dto.setMember_name(member_name);
		dto.setHandphone(handphone);
		dto.setEmail(email);
		bookDAO dao = new bookDAO();
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
			try {
				dto = dao.login(member_id, member_pw);	
			} catch (SQLException e) {
				e.printStackTrace();
			}
			HttpSession session = request.getSession();
			session.setAttribute("member", dto);
			response.sendRedirect("/human/main/book.jsp");
		}else {
			response.sendRedirect("/human/main/book_join.jsp");
		}
		
	}

}
