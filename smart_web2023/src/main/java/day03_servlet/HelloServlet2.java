package day03_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿 실행시 WEB-INF/lib폴더에 servlet-api.jar파일 추가하기
//@WebServlet("/hello2") //@어노테이션 이름
//요청경로: http://localhost:9090/human/hello
//@WebServlet(URL): 컨텍스트 경로 다음에 오는 사용자 요청 URL에 대해서 서블릿과 매핑시켜줌
//Servlet3.0부터 지원됨
//@WebServlet(URL)을 사용하지 않는 경우에는 서블릿과 URL의 매핑을 WEB-INF폴더에 있는 web.xml파일에 설정함
public class HelloServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 사용자의 요청에 대해서 처리한 결과를 담을 객체: response 객체에 결과를 저장하기 위해 출력객체를 얻음
		// 결과에 대한 형식 지정
		response.setContentType("text/html;charset=utf-8");
		// response.getWriter():PrintWriter객체 얻음
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head><title>Hello Servlet2</title></head>");
		out.println("<body>");
		out.println("<h1>Hello, Servlet2!</h1>");
		out.println("</body></html>");
		out.close();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
