package ShowSite;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ShowJoin")
public class S_Join extends HttpServlet {

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
		
		S_DTO dto = new S_DTO();
		dto.setMember_id(member_id);
		dto.setMember_pw(member_pw);
		dto.setMember_name(member_name);
		dto.setHandphone(handphone);
		dto.setEmail(email);
		S_DAO dao = new S_DAO();
		int result = 0;
		try {
			result= dao.join(dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(result == 1) {
			try {
				dto = dao.login(member_id, member_pw);	
			} catch (SQLException e) {
				e.printStackTrace();
			}
			HttpSession session = request.getSession();
			session.setAttribute("member", dto);
			response.sendRedirect("/human/Showsite/main/S_Main.jsp");
		}else {
			response.sendRedirect("/human/Showsite/main/S_Join.jsp");
		}
		
	}

}
