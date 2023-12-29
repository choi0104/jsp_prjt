package booklog;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/bookupdate")
public class bookupdate extends HttpServlet {
	private static final long serialVersionUID = -5921205705386345181L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int m_idx = Integer.parseInt(request.getParameter("m_idx"));
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		String member_name = request.getParameter("member_name");
		String handphone = request.getParameter("handphone");
		String email = request.getParameter("email");
		
		bookDTO dto = new bookDTO();
		dto.setM_idx(m_idx);
		dto.setMember_id(member_id);
		dto.setMember_pw(member_pw);
		dto.setMember_name(member_name);
		dto.setHandphone(handphone);
		dto.setEmail(email);
		
		bookDAO dao = new bookDAO();
		bookDTO newDto = null;
		try {
			newDto = dao.updateMember(dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

		if(newDto != null) {
			HttpSession session = request.getSession();
			session.removeAttribute("member");
			session.setAttribute("member", newDto);
			response.sendRedirect("/human/main/book.jsp");
		}else {
			String msg = "시스템 문제로 회원정보가 정상적으로 변경되지 못했습니다. 다음에 다시 변경해주세요.";
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("/human/main/book_update.jsp").forward(request, response);
		}
	}
}