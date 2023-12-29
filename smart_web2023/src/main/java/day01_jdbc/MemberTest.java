package day01_jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberTest {

	public static void main(String[] args) {
		MemberEx me = new MemberEx();
		try {
			
			ResultSet rs = me.getMembers();
			//ResultSet객체에 저장된 값을 탐색할 때 사용하는 메소드: next() - true/false
			while(rs.next()) {
				System.out.println("m_idx:"+rs.getInt("m_idx")+", 아이디:"+rs.getString("member_id"));
			}
			
			//아이디가 hong인 회원이 있는지 확인하기			
			int result = me.checkId("hong");
			if(result == 1 ) {
				System.out.println("이미 사용 중인 아이디입니다.");
			}else {
				System.out.println("사용 가능한 아이디입니다.");
			}
			
			//회원테이블에 회원정보 입력하기
//			result = me.insertMember("kang", "1234", "강감찬", "010-3333-3333", "kang@naver.com");
//			if(result == 1 ) {
//				System.out.println("정상적으로 입력되었습니다");
//			}else {
//				System.out.println("입력 실패");
//			}
			
			//회원아이디와 비밀번호를 입력받아서 로그인처리 여부 확인하기
			result = me.login("kang", "2345");
			if(result == 1 ) {
				System.out.println("회원");
			}else {
				System.out.println("비회원");
			}
						
		}catch (SQLException e) {
			e.printStackTrace();
			
		}finally {//외부자원을 사용 후 자원해제시켜줌
//			if(me.conn != null) {try {me.conn.close();} catch (SQLException e) {} }
//			if(me.pstmt != null) { try {me.pstmt.close();} catch (SQLException e) {} }
//			if(me.rs != null) { try {me.rs.close();} catch (SQLException e) {}  }
			me.close();			
		}

	}

}
