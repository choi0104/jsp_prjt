package ShowSite;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ShowQuit")
public class S_Quit extends HttpServlet {
	private static final long serialVersionUID = -1741697916716234822L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
	
		HttpSession session = request.getSession();
		S_DTO dto = (S_DTO)session.getAttribute("member");
		S_DAO dao = new S_DAO();
	

	         
		if (dto.getMember_id().equals(member_id) && dto.getMember_pw().equals(member_pw)) {
			try {
				dao.cancel(member_id, member_pw);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			session.invalidate();
			response.sendRedirect("/human/Showsite/main/S_quit2.jsp");
		}else{
			
			response.sendRedirect("/human/Showsite/main/S_quit.jsp");
		}
	}
}