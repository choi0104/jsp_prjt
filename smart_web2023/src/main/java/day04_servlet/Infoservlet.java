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

@WebServlet("/info")
public class Infoservlet extends HttpServlet {

	private static final long serialVersionUID = -3821322837221287111L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//get방식으로 넘어오는 값들 중 한글깨짐 방지: server.xml에 URIEncoding="UTF-8" 추가
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String receive_email= request.getParameter("receive_email");
		String [] items = request.getParameterValues("item");

		//응답 페이지 작성하기-response객체에 작성, PrinterWriter객체를 이용
		//페이지 양식 지정: setContentType()
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head><title>get방식전송에 대한 응답</title></head>");
		out.println("<body>");
		out.println("<h3>get방식전송에 대한 응답</h3><hr>");
		out.println("나이:" + age);
		out.println("<br>성별:"+((gender.equals("M"))?"남자":"여자"));
		out.println("<br>메일정보 수신여부:"+((receive_email.equals("Y"))?"수신":"거부"));
		out.println("<br>관심항목:");
		for(String item : items) {
			out.println(item + " ");
		}
		out.println("</body></html>");
		out.close();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//post방식으로 넘어온 데이터의 한글꺠짐 방지: request.setCharacterEncoding("UTF-8")
		request.setCharacterEncoding("UTF-8");
		
		String member_id = request.getParameter("member_id");
		String address = request.getParameter("address");
		String greet = request.getParameter("greet");
		
		//사용자로부터 넘어온 member_id값을 이용해서 DB에 사용자의 아이디가 있는지 확인해서
		//있으면 사용 중인 아이디입니다.를 출력하고 없으면 사용가능한 아이디입니다를 응답화면에
		//출력할 수 있도록 구현하시오.
		int result = 0;
		MemberDAO dao = new MemberDAO();
		try {
			result = dao.checkId(member_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//응답 페이지 작성하기-response객체에 작성, PrinterWriter객체를 이용
		//페이지 양식 지정: setContentType()
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head><title>post방식전송에 대한 응답</title></head>");
		out.println("<body>");
		out.println("<h3>post방식전송에 대한 응답</h3><hr>");
		out.println("아이디:" + member_id);
		out.println("<br>주소:"+address);
		out.println("<br>가입인사:"+greet);
		out.println("<br>아이디 사용여부:"+((result==1)?"사용 중인 아이디입니다.":"사용 가능한 아이디입니다."));
		out.println("</body></html>");
		out.close();

	}
}