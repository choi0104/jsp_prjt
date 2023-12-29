package day04_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import day02_collection.MemberDAO;

@WebServlet("/joinservlet")
public class Joinservlet extends HttpServlet {

	private static final long serialVersionUID = -6708166879777936180L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // post방식으로 넘어온 데이터의 한글꺠짐 방지: request.setCharacterEncoding("UTF-8")
        request.setCharacterEncoding("UTF-8");

        // Retrieve form parameters
        String member_id = request.getParameter("member_id");
        String member_pw = request.getParameter("member_pw");
        String member_name = request.getParameter("member_name");
        String handphone = request.getParameter("handphone");
        String email = request.getParameter("email");

        // Check if the member ID already exists
        MemberDAO dao = new MemberDAO();
        int result = 0;
        try {
            result = dao.checkId(member_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Generate response
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head><title>회원가입 결과</title></head>");
        out.println("<body>");
        out.println("<h3>회원가입 결과</h3><hr>");
        out.println("아이디:" + member_id);
        out.println("<br>비밀번호:" + member_pw);
        out.println("<br>이름:" + member_name);
        out.println("<br>핸드폰:" + handphone);
        out.println("<br>이메일:" + email);

        if (result == 1) {
            out.println("<br>아이디 사용여부: 사용 중인 아이디입니다.");
        } else {
            out.println("<br>아이디 사용여부: 사용 가능한 아이디입니다. (회원가입 성공)");
        }

        out.println("</body></html>");
        out.close();
    }
}



