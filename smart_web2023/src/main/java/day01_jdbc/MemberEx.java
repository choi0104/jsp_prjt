package day01_jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberEx extends DBConnection3{
	
	public ResultSet getMembers() throws SQLException{
		//DBConnection3에서 연결객체는 생성됨: conn 필드 이용
		//SQL문을 사용할 수 있도록 해주는 PreparedStatement객체는
		//Connection객체의 prepareStatement(SQL문)메소드를 통해서 얻을 수 있음
		String sql = "select * from tb_member";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		return rs;
	}
	
	//아이디 중복검사를 할 수 있는 메소드 정의하기
	//매개변수: String id, 반환값: 숫자형(int)
	public int checkId(String id) throws SQLException{
		int result = 0;
		String sql = "select count(*) from tb_member where member_id = ?";
		pstmt = conn.prepareStatement(sql);
		//입력값이 들어가야할 ?에 대한 처리
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			result = rs.getInt(1);
		}
		
		return result;
	}
	
	//회원정보를 입력할 수 있는 메소드 정의하기:insertMember()
	//아이디, 비밀번호, 이름, 전화번호, 이메일
	public int insertMember(String member_id, String member_pw, String member_name, String handphone, String email) 
			throws SQLException{
		int result = 0;
		String sql = "insert into tb_member (m_idx, member_id, member_pw, member_name, handphone, email) "
				+ " values(member_seq.nextval,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, member_id);
		pstmt.setString(2, member_pw);
		pstmt.setString(3, member_name);
		pstmt.setString(4, handphone);
		pstmt.setString(5, email);
		
	    result = pstmt.executeUpdate();
		
		return result;
	}
	
	//같은 아이디와 비밀번호가 회원테이블에 있는지 확인하는 메소드: 로그인 처리 메소드
	public int login(String member_id, String member_pw) throws SQLException{
		int result = 0;
		String sql = "select count(*) from tb_member where member_id = ? and member_pw = ?";
		pstmt = conn.prepareStatement(sql);
		//입력값이 들어가야할 ?에 대한 처리
		pstmt.setString(1, member_id);
		pstmt.setString(2, member_pw);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			result = rs.getInt(1);
		}
		
		return result;
	}
	

}
