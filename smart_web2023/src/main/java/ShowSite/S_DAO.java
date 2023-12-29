package ShowSite;

import java.sql.SQLException;

public class S_DAO extends S_DBconnection{
	public int join(S_DTO dto) throws SQLException{
		int result = 0;
		
		String sql = "insert into tb_show (s_idx, member_id, member_pw, member_name, handphone, email) "
				+ " values(show_seq.nextval, ?,?,?,?,?)";
		S_pstmt = S_conn.prepareStatement(sql);
		S_pstmt.setString(1, dto.getMember_id());
		S_pstmt.setString(2, dto.getMember_pw());
		S_pstmt.setString(3, dto.getMember_name());
		S_pstmt.setString(4, dto.getHandphone());
		S_pstmt.setString(5, dto.getEmail());
		result = S_pstmt.executeUpdate();
		return result;
	}
	public S_DTO logfind(String member_id, String handphone) throws SQLException{
		S_DTO dto = null;
		String sql = "select s_idx from tb_show where member_id=? and handphone=?";
		S_pstmt = S_conn.prepareStatement(sql);
		S_pstmt.setString(1, member_id);
		S_pstmt.setString(2, handphone);
		S_rs = S_pstmt.executeQuery();
		System.out.println(S_rs);
		if(S_rs.next()) {
			int s_idx = S_rs.getInt(1);
			dto = getMember(s_idx);
		}
		return dto;
		
	}
	public S_DTO getMember(int s_idx) throws SQLException{
		String sql = "select * from tb_show where s_idx = ?";
		S_pstmt = S_conn.prepareStatement(sql);
		S_pstmt.setInt(1, s_idx);
		S_rs = S_pstmt.executeQuery();
		
		S_DTO dto = null;
		if(S_rs.next()) {
			dto = new S_DTO();
			dto.setS_idx(S_rs.getInt("s_idx"));
			dto.setMember_id(S_rs.getString("member_id"));
			dto.setMember_pw(S_rs.getString("member_pw"));
			dto.setMember_name(S_rs.getString("member_name"));
			dto.setHandphone(S_rs.getString("handphone"));
			dto.setEmail(S_rs.getString("email"));
			dto.setGrade(S_rs.getInt("grade"));
			dto.setReg_date(S_rs.getDate("reg_date"));
			dto.setLast_modified_date(S_rs.getDate("last_modified_date"));
			dto.setCancel_or_not(S_rs.getInt("cancel_or_not"));
		}
		return dto;
	}
	public S_DTO updateMember(S_DTO dto) throws SQLException{
		S_DTO newDto = null;
		
		String sql = "update tb_show  set member_pw=?, member_name=?, handphone=?, email=?, last_modified_date=sysdate"
				     + " where s_idx=?";
		S_pstmt = S_conn.prepareStatement(sql);
		S_pstmt.setString(1, dto.getMember_pw());
		S_pstmt.setString(2, dto.getMember_name());
		S_pstmt.setString(3, dto.getHandphone());
		S_pstmt.setString(4, dto.getEmail());
		S_pstmt.setInt(5, dto.getS_idx());
		if(S_pstmt.executeUpdate() == 1) {//회원정보 엽데이트 성공
			newDto = getMember(dto.getS_idx());
		}
		
		return newDto;
	}
	public void memberquit(String member_id, String member_pw) throws SQLException{
		String sql = "DELETE FROM tb_show WHERE member_id = ? AND member_pw = ?";
		S_pstmt = S_conn.prepareStatement(sql);
		S_pstmt.setString(1, member_id);
		S_pstmt.setString(2, member_pw);
	    S_pstmt.executeUpdate();
	}
	public S_DTO login(String member_id, String member_pw) throws SQLException{
		S_DTO dto=null;
		String sql = "select s_idx from tb_show where member_id=? and member_pw=?";
		S_pstmt = S_conn.prepareStatement(sql);
		S_pstmt.setString(1, member_id);
		S_pstmt.setString(2, member_pw);
		S_rs = S_pstmt.executeQuery();
		if(S_rs.next()) {
			int s_idx = S_rs.getInt(1);
			dto = getMember(s_idx);
		}
		return dto;
	}
	public void cancel(String member_id, String member_pw) throws SQLException{
		String sql = "UPDATE TB_SHOW SET cancel_or_not  = 1 WHERE member_id = ? and member_pw = ?";
		S_pstmt = S_conn.prepareStatement(sql);
		S_pstmt.setString(1, member_id);
		S_pstmt.setString(2, member_pw);
	    S_pstmt.executeUpdate();
	}

}
