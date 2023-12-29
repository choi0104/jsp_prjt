package booklog;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/booklogout")
public class bookLogout extends HttpServlet {


	private static final long serialVersionUID = -4402754007092302619L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 기존의 세션객체에 저장된 내용을 초기화시킴: invalidate()
		HttpSession session = request.getSession();
		session.invalidate();
		// 메인 페이지로 이동
		response.sendRedirect("/human/Showsite/main/S_Main.jsp");
	}
}