package booklog;

import java.sql.SQLException;
import java.util.ArrayList;

public class bookDAO extends DBbook{
	public int join(bookDTO dto) throws SQLException{
		int result = 0;
		
		String sql = "insert into tb_book (m_idx, member_id, member_pw, member_name, handphone, email) "
				+ " values(book_seq.nextval, ?,?,?,?,?)";
		pstmt2 = conn2.prepareStatement(sql);
		pstmt2.setString(1, dto.getMember_id());
		pstmt2.setString(2, dto.getMember_pw());
		pstmt2.setString(3, dto.getMember_name());
		pstmt2.setString(4, dto.getHandphone());
		pstmt2.setString(5, dto.getEmail());
		result = pstmt2.executeUpdate();
		return result;
	}
	public bookDTO logfind(String member_id, String handphone) throws SQLException{
		bookDTO dto = null;
		String sql = "select m_idx from tb_book where member_id=? and handphone=?";
		pstmt2 = conn2.prepareStatement(sql);
		pstmt2.setString(1, member_id);
		pstmt2.setString(2, handphone);
		rs2 = pstmt2.executeQuery();
		System.out.println(rs2);
		if(rs2.next()) {
			int m_idx = rs2.getInt(1);
			dto = getMember2(m_idx);
		}
		return dto;
		
	}
	public bookDTO getMember(int m_idx) throws SQLException{
		String sql = "select * from tb_book where m_idx = ?";
		pstmt2 = conn2.prepareStatement(sql);
		pstmt2.setInt(1, m_idx);
		rs2 = pstmt2.executeQuery();
		
		bookDTO dto = null;
		if(rs2.next()) {
			dto = new bookDTO();
			dto.setM_idx(rs2.getInt("m_idx"));
			dto.setMember_id(rs2.getString("member_id"));
			dto.setMember_pw(rs2.getString("member_pw"));
			dto.setMember_name(rs2.getString("member_name"));
			dto.setHandphone(rs2.getString("handphone"));
			dto.setEmail(rs2.getString("email"));
			dto.setGrade(rs2.getInt("grade"));
			dto.setReg_date(rs2.getDate("reg_date"));
			dto.setLast_modified_date(rs2.getDate("last_modified_date"));
			dto.setCancel_or_not(rs2.getInt("cancel_or_not"));
		}
		return dto;
	}
	

public bookDTO getMember2(int m_idx) throws SQLException {
    String sql = "select member_id, member_pw, cancel_or_not from tb_book where m_idx = ?";
    pstmt2 = conn2.prepareStatement(sql);
    pstmt2.setInt(1, m_idx);
    rs2 = pstmt2.executeQuery();

    bookDTO dto = null;
    if (rs2.next()) {
        dto = new bookDTO();
        dto.setMember_id(rs2.getString("member_id"));
        dto.setMember_pw(rs2.getString("member_pw"));
        dto.setCancel_or_not(rs2.getInt("cancel_or_not"));
    }
    return dto;
}
	//모든 회원정보 가져오기:getMembers2():ArrayList<bookDTO>
	public ArrayList<bookDTO> getMembers2() throws SQLException{
		ArrayList<bookDTO> members2 = new ArrayList<>();
		
		String sql = "select * from tb_book";
		pstmt2 = conn2.prepareStatement(sql);
		rs2 = pstmt2.executeQuery();
		
		while(rs2.next()) {
			bookDTO dto = new bookDTO();
			dto.setM_idx(rs2.getInt("m_idx"));
			dto.setMember_id(rs2.getString("member_id"));
			dto.setMember_pw(rs2.getString("member_pw"));
			dto.setMember_name(rs2.getString("member_name"));
			dto.setHandphone(rs2.getString("handphone"));
			dto.setEmail(rs2.getString("email"));
			dto.setGrade(rs2.getInt("grade"));
			dto.setReg_date(rs2.getDate("reg_date"));
			dto.setLast_modified_date(rs2.getDate("last_modified_date"));
			dto.setCancel_or_not(rs2.getInt("cancel_or_not"));
			members2.add(dto);
		}
		
		return members2;
	}

	public bookDTO updateMember(bookDTO dto) throws SQLException{
		bookDTO newDto = null;
		
		String sql = "update tb_book  set member_pw=?, member_name=?, handphone=?, email=?, last_modified_date=sysdate"
				     + " where m_idx=?";
		pstmt2 = conn2.prepareStatement(sql);
		pstmt2.setString(1, dto.getMember_pw());
		pstmt2.setString(2, dto.getMember_name());
		pstmt2.setString(3, dto.getHandphone());
		pstmt2.setString(4, dto.getEmail());
		pstmt2.setInt(5, dto.getM_idx());
		if(pstmt2.executeUpdate() == 1) {//회원정보 엽데이트 성공
			newDto = getMember(dto.getM_idx());
		}
		
		return newDto;
	}
	public void memberquit(String member_id, String member_pw) throws SQLException{
		String sql = "DELETE FROM tb_book WHERE member_id = ? AND member_pw = ?";
		pstmt2 = conn2.prepareStatement(sql);
		pstmt2.setString(1, member_id);
		pstmt2.setString(2, member_pw);
	    pstmt2.executeUpdate();
	}
	public void cancel(String member_id, String member_pw) throws SQLException{
		String sql = "UPDATE tb_book SET cancel_or_not  = 1 WHERE member_id = ? and member_pw = ?";
		pstmt2 = conn2.prepareStatement(sql);
		pstmt2.setString(1, member_id);
		pstmt2.setString(2, member_pw);
	    pstmt2.executeUpdate();
	}

	public int updateMember2(bookDTO dto) throws SQLException{
		int result = 0;
		String sql = "update tb_book  set member_pw=?, member_name=?, handphone=?, email=?, last_modified_date=sysdate "
				     + " where m_idx=?";
		pstmt2 = conn2.prepareStatement(sql);
		pstmt2.setString(1, dto.getMember_pw());
		pstmt2.setString(2, dto.getMember_name());
		pstmt2.setString(3, dto.getHandphone());
		pstmt2.setString(4, dto.getEmail());
		pstmt2.setInt(5, dto.getM_idx());
		result = pstmt2.executeUpdate();	
		
		return result;
	}

	public int checkId(String member_id) throws SQLException{
		int result = 0;
		
		String sql = "select COUNT(*) from tb_book where member_id=?";
		pstmt2 = conn2.prepareStatement(sql);
		pstmt2.setString(1, member_id);
		rs2 = pstmt2.executeQuery();
		
		if(rs2.next()) {
			result = rs2.getInt(1);
		}
		return result;
	}
	public int checklog(String member_id , String member_pw) throws SQLException{
		int result = 0;
		
		String sql = "select COUNT(*) from tb_book where member_id=? AND member_pw=?";
		pstmt2 = conn2.prepareStatement(sql);
		pstmt2.setString(1, member_id);
		pstmt2.setString(2, member_pw);
		rs2 = pstmt2.executeQuery();
		
		if(rs2.next()) {
			result = rs2.getInt(1);
		}
		return result;
	}
	public int login2(String member_id, String member_pw) throws SQLException{
		int result = 0;
		
		String sql = "select count(*) from tb_book where member_id=? and member_pw=?";
		pstmt2 = conn2.prepareStatement(sql);
		pstmt2.setString(1, member_id);
		pstmt2.setString(2, member_pw);
		rs2 = pstmt2.executeQuery();
		if(rs2.next()) {
			result = rs2.getInt(1);
		}
		return result;
	}
	
	
	public bookDTO login(String member_id, String member_pw) throws SQLException{
		bookDTO dto=null;
		String sql = "select m_idx from tb_book where member_id=? and member_pw=?";
		pstmt2 = conn2.prepareStatement(sql);
		pstmt2.setString(1, member_id);
		pstmt2.setString(2, member_pw);
		rs2 = pstmt2.executeQuery();
		if(rs2.next()) {
			int m_idx = rs2.getInt(1);
			dto = getMember(m_idx);
		}
		return dto;
	}
}
