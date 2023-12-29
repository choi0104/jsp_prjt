package ShowSite;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ShowFind")
public class S_Infofind extends HttpServlet {
	private static final long serialVersionUID = -1741697916716234822L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String member_id = request.getParameter("member_id");
		String handphone = request.getParameter("handphone");
		S_DTO dto = null;
		S_DAO dao = new S_DAO();
		try {
			dto = dao.logfind(member_id, handphone);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		if(dto != null && dto.getCancel_or_not() == 0) {
			HttpSession session = request.getSession();
			session.setAttribute("member", dto);
			response.sendRedirect("/human/Showsite/main/S_Findresult.jsp");
		}else{
			response.sendRedirect("/human/Showsite/main/S_Infofind.jsp");
		}
	}
}