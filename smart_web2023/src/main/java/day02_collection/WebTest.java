package day02_collection;

import java.sql.SQLException;
import java.util.ArrayList;

public class WebTest {

	public static void main(String[] args) {
		MemberDAO dao = new MemberDAO();
		try {
			//1. 웹브라우저에서 넘어온 데이터를 MemberDTO에 세팅하고 
			//MemberDAO를 이용해서 tb_member테이블에 저장하기
//			MemberDTO dto = new MemberDTO();
//			dto.setMember_id("kim");
//			dto.setMember_pw("1234");
//			dto.setMember_name("김유신");
//			dto.setHandphone("010-4444-4444");
//			dto.setEmail("kim@gmail.com");
//			
//			if(dao.join(dto)==1) {
//				System.out.println("정상 입력");
//			}else {
//				System.out.println("입력 실패");
//			}
			
			//2. 모든 회원정보 가져와서 콘솔창에 출력하기
			ArrayList<MemberDTO> members = dao.getMembers();
			for(MemberDTO member : members) {
				System.out.print(member.getM_idx()+", ");
				System.out.print(member.getMember_id()+", ");
				System.out.print(member.getMember_pw()+", ");
				System.out.print(member.getMember_name()+", ");
				System.out.print(member.getHandphone()+", ");
				System.out.print(member.getEmail()+", ");
				System.out.print(member.getGrade()+", ");
				System.out.print(member.getReg_date()+", ");
				System.out.print(member.getLast_modified_date()+", ");
				System.out.println(member.getCancel_or_not());
			}
			
			//3. 아이디 중복검사하기
			//MemberDAO에 checkID(String member_id):int 정의하고 
			//WebTest클래스에서 확인하기

			
			//4. 로그인하기
			//MemberDAO에 login(String member_id, String member_pw):int 정의하고
			//WebTest클래스에서 확인하기

			
			//5. 회원정보 변경하기 (전제조건: 로그인이 되어야 함)
			//MemberDAO에 updateMember(MemberDTO dto): int 정의하고
			//WebTest클래스에서 확인하기
			//회원정보(m_idx:3)에서 email정보를 kang@naver.com에서 kang@hanmail.net으로 변경하기
			MemberDTO dto = new MemberDTO();
			dto.setM_idx(2);
			dto.setMember_id("kang");
			dto.setMember_pw("1234");
			dto.setMember_name("홍길동");
			dto.setHandphone("010-3333-3333");
			dto.setEmail("kang@hanmail.com");
			dto.setGrade(0);
			dto.setCancel_or_not(0);
			
			int result = dao.updateMember(dto);
			if(result == 1) {
				System.out.println("회원정보 변경 성공");
			}else {
				System.out.println("회원정보 변경 실패");
			}
			
			
			
		}catch(SQLException e) {
			e.printStackTrace();
			
		}finally {//DB관련 작업 종료 시 자원 해제시킴
			dao.close();
		}

	}

}
