package day02_collection;

import java.sql.SQLException;
import java.util.ArrayList;

//DAO(Data Access Object): 데이터베이스와 연결해서 SQL작업을 하는 자바클래스
public class MemberDAO extends DBConnection{
	
	//회원정보 입력하기: join(MemberDTO dto): int
	public int join(MemberDTO dto) throws SQLException{
		int result = 0;
		
		//MemberDTO에 아이디,비밀번호,이름,핸드폰,이메일이 저장된 것으로 가정하고
		//tb_member테이블에 데이터를 추가하는 구문 작성하기
		String sql = "insert into tb_member (m_idx, member_id, member_pw, member_name, handphone, email) "
				+ " values(member_seq.nextval, ?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getMember_id());
		pstmt.setString(2, dto.getMember_pw());
		pstmt.setString(3, dto.getMember_name());
		pstmt.setString(4, dto.getHandphone());
		pstmt.setString(5, dto.getEmail());
		result = pstmt.executeUpdate();	
		
		return result;
	}
	
	//모든 회원정보 가져오기:getMembers():ArrayList<MemberDTO>
	public ArrayList<MemberDTO> getMembers() throws SQLException{
		ArrayList<MemberDTO> members = new ArrayList<>();
		
		String sql = "select * from tb_member";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			MemberDTO dto = new MemberDTO();
			dto.setM_idx(rs.getInt("m_idx"));
			dto.setMember_id(rs.getString("member_id"));
			dto.setMember_pw(rs.getString("member_pw"));
			dto.setMember_name(rs.getString("member_name"));
			dto.setHandphone(rs.getString("handphone"));
			dto.setEmail(rs.getString("email"));
			dto.setGrade(rs.getInt("grade"));
			dto.setReg_date(rs.getDate("reg_date"));
			dto.setLast_modified_date(rs.getDate("last_modified_date"));
			dto.setCancel_or_not(rs.getInt("cancel_or_not"));
			members.add(dto);
		}
		return members;
	}

	public int updateMember(MemberDTO dto) throws SQLException{
		int result = 0;
		
		String sql = "update tb_member  set member_pw=?, member_name=?, handphone=?, email=?, last_modified_date=sysdate "
				     + " where m_idx=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getMember_pw());
		pstmt.setString(2, dto.getMember_name());
		pstmt.setString(3, dto.getHandphone());
		pstmt.setString(4, dto.getEmail());
		pstmt.setInt(5, dto.getM_idx());
		result = pstmt.executeUpdate();	
		
		return result;
	}
	public int checkId(String member_id) throws SQLException{
		int result = 0;
		
		String sql = "select * from tb_member where member_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, member_id);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			result = rs.getInt(1);
		}
		return result;
	}
	
	
	
	
	
	
	

}
