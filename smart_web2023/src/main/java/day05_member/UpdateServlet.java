package day05_member;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import human.dao.MemberDAO;
import human.dto.MemberDTO;

@WebServlet("/memberUpdate")
public class UpdateServlet extends HttpServlet {
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
		
		MemberDTO dto = new MemberDTO();
		dto.setM_idx(m_idx);
		dto.setMember_id(member_id);
		dto.setMember_pw(member_pw);
		dto.setMember_name(member_name);
		dto.setHandphone(handphone);
		dto.setEmail(email);
		
		MemberDAO dao = new MemberDAO();
		MemberDTO newDto = null;
		try {

			newDto = dao.updateMember(dto);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//회원정보 변경 성공시 메인페이지로 이동
		//회원정보 변경 실패시 회원정보 변경 페이지로 이동
		//페이지 이동: 새로운 페이지로 이동 - response.sendRedirect(페이지URL)
		//- 서버에 새로운 페이지 요청을 하는 것과 같기 때문에 기존의 요청은 결과값 없이 응답되고
		//  바로 서버로 요청을 보냄
		//(기존의 request, response객체는 소멸하고 새로운 request, response객체 생성됨)
		//기존외 요청을 유지하면서 다른 페이지로 이동하는 경우
		//request.getRequestDispatcher(이동할 URL).forward(request, response)
		//- 기존의 request객체는 유지됨. request객체에 정보를 저장해서 활용할 경우 유용
		//- 회원정보 변경 실패시 회원에게 안내 메시지를 출력할 수 있도록 request객체에 데이터 저장
		if(newDto != null) {//회원정보 변경 성공
			//세션객체에 저장된 기존의 회원정보를 삭제함
			HttpSession session = request.getSession();//처음인 경우에는 새로운 세션객체를
			//생성하고 기존의 세션 객체가 잇으면 기존의 세션객체를 반환함
			session.removeAttribute("member");
			//세션객체에 새로운 회원정보를 저장함
			session.setAttribute("member", newDto);
			response.sendRedirect("/human/main/index.jsp");
		}else {//회원정보 변경 실패
			//회원정보 실패에 대한 안내 메시지를 request객체에 저장함
			String msg = "시스템 문제로 회원정보가 정상적으로 변경되지 못했습니다. 다음에 다시 변경해주세요.";
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("/human/day05_member/update.jsp").forward(request, response);
		}
	
	}

}