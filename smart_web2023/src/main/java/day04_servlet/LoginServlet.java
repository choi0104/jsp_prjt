package day04_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import human.dao.MemberDAO;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = -626859991547783303L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		//로그인 정보를 받아서 로그인 실행결과를 화면에 출력하되
		//정삭적으로 로그인되었으면 '로그인 성공'을 출력하고, 그렇지 않으면 '로그인 실패'를 출력하도록 구현하시오.
		//post방식으로 넘어온 데이터의 한글깨짐 방지: request.setCharacterEncoding("UTF-8")
        request.setCharacterEncoding("UTF-8");
        String member_id = request.getParameter("member_id");
        String member_pw = request.getParameter("member_pw");
        MemberDAO dao = new MemberDAO();
        int result = 0;
        try {
            result = dao.checklog(member_id, member_pw);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head><title>로그인 결과</title></head>");
        out.println("<body>");
        out.println("<h3>회원가입 결과</h3><hr>");
        out.println("아이디:" + member_id);
        out.println("<br>비밀번호:" + member_pw);

        if (result == 1) {
            out.println("로그인 성공.");
        } else {
            out.println("로그인 실패");
        }

        out.println("</body></html>");
        out.close();
    }
}



