package ShowSite;

import java.util.ArrayList;

public class Snews_DAO extends S_DBconnection {
	
	public int insert(Snews_DTO dto) {
		int result = 0;//실패 시의 값
		
		try {
			if(dto.getOriginfile_name() != null) {
				//파일 업로드가 이루어질 경우의 insert문
				String sql = "insert into SNEWS_BOARD (b_idx, s_idx, writer, title, content, originfile_name, savefile_name) "
						     + " values(board_seq.nextval, ?,?,?,?,?,?)";
					
				S_pstmt = S_conn.prepareStatement(sql);
				S_pstmt.setInt(1, dto.getS_idx());
				S_pstmt.setString(2, dto.getWriter());
				S_pstmt.setString(3, dto.getTitle());
				S_pstmt.setString(4, dto.getContent());
				S_pstmt.setString(5, dto.getOriginfile_name());
				S_pstmt.setString(6, dto.getSavefile_name());
				
			}else {
				//파일 업로드가 이루어지지 않은 경우의 insert문
				String sql = "insert into SNEWS_BOARD (b_idx, s_idx, writer, title, content) "
						     + " values(board_seq.nextval, ?,?,?,?)";
					
				S_pstmt = S_conn.prepareStatement(sql);
				S_pstmt.setInt(1, dto.getS_idx());
				S_pstmt.setString(2, dto.getWriter());
				S_pstmt.setString(3, dto.getTitle());
				S_pstmt.setString(4, dto.getContent());
			}
		
		result = S_pstmt.executeUpdate();//executeUpdate() 실행 결과 적용된 행의 수 반환
		//성공 시 1 반환
			
		}catch(Exception e) {
			System.out.println("게시글 등록 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
	//모든 게시글 조회
	public ArrayList<Snews_DTO> getBoards(){
		ArrayList<Snews_DTO> boardList = new ArrayList<Snews_DTO>();
		
		String sql = "select * from SNEWS_BOARD "
				+ " where del_or_not = 1 "
				+ " order by b_idx desc";
		//order by b_idx desc: 게시판의 글 목록은 최근 글이 위에 위치하므로 
		//게시글 번호를 기준으로 내림차순 정렬하여 조회함
		try {
			S_pstmt = S_conn.prepareStatement(sql);
			S_rs = S_pstmt.executeQuery();//조회된 결과를 ResultSet객체에 담음
			
			while(S_rs.next()) {
				Snews_DTO dto = new Snews_DTO();
				dto.setB_idx(S_rs.getInt("b_idx"));
				dto.setS_idx(S_rs.getInt("s_idx"));
				dto.setWriter(S_rs.getString("writer"));
				dto.setTitle(S_rs.getString("title"));
				dto.setContent(S_rs.getString("content"));
				dto.setPost_date(S_rs.getDate("post_date"));
				dto.setRead_cnt(S_rs.getInt("read_cnt"));
				dto.setOriginfile_name(S_rs.getString("originfile_name"));
				dto.setSavefile_name(S_rs.getString("savefile_name"));
				
				boardList.add(dto);
			}
		
		}catch(Exception e) {
			System.out.println("게시글 목록 조회 중 예외 발생");
			e.printStackTrace();
		}
		
		return boardList;
	}
	

	//검색관련 데이터를 적용하여 모든 게시글 조회
	public ArrayList<Snews_DTO> getBoards(S_SearchDTO sDto){
		ArrayList<Snews_DTO> boardList = new ArrayList<Snews_DTO>();
		
		try {
			//검색어가 입력되었는지 여부에 따라 SQL문을 구분함
			String sql = null;
			if(sDto.getSearchWord() != null) {//검색어가 입력된 경우
				//검색영역에 따라 구분을 나눔:switch
				String searchField = null;
				switch(sDto.getSearchField()) {
					case "title" : searchField = "title"; break;
					case "content" : searchField = "content"; break;
					case "writer" : searchField = "writer";
				}
				
				sql = "select * from SNEWS_BOARD "
						+ " where del_or_not = 1 "
						+ " and "+searchField+" like '%'||?||'%' "
						+ " order by b_idx desc";
				
				S_pstmt = S_conn.prepareStatement(sql);
				S_pstmt.setString(1, sDto.getSearchWord());
				
			}else {//검색어가 입력되지 않은 경우
				sql = "select * from SNEWS_BOARD "
						+ " where del_or_not = 1 "
						+ " order by b_idx desc";
				S_pstmt = S_conn.prepareStatement(sql);
			}
			
			S_rs = S_pstmt.executeQuery();//조회된 결과를 ResultSet객체에 담음
			
			while(S_rs.next()) {
				Snews_DTO dto = new Snews_DTO();
				dto.setB_idx(S_rs.getInt("b_idx"));
				dto.setS_idx(S_rs.getInt("s_idx"));
				dto.setWriter(S_rs.getString("writer"));
				dto.setTitle(S_rs.getString("title"));
				dto.setContent(S_rs.getString("content"));
				dto.setPost_date(S_rs.getDate("post_date"));
				dto.setRead_cnt(S_rs.getInt("read_cnt"));
				dto.setOriginfile_name(S_rs.getString("originfile_name"));
				dto.setSavefile_name(S_rs.getString("savefile_name"));
				
				boardList.add(dto);
			}
		
		}catch(Exception e) {
			System.out.println("게시글 목록 조회 중 예외 발생");
			e.printStackTrace();
		}
		
		return boardList;
	}	
	
	//조회수 업데이트
	public void updateRead_cnt(int b_idx) {
		
		String sql = "update SNEWS_BOARD set read_cnt = (read_cnt + 1) where b_idx = ?";
		
		try {
			S_pstmt = S_conn.prepareStatement(sql);
			S_pstmt.setInt(1, b_idx);
			S_pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("조회수 업데이트 중 예외 발생");
			e.printStackTrace();
		}
	}
	
	//하나의 게시글 조회
	public Snews_DTO getBoard(int b_idx){
		Snews_DTO dto = null;
		
		String sql = "select * from SNEWS_BOARD where b_idx = ?";
		
		try {
			S_pstmt = S_conn.prepareStatement(sql);
			S_pstmt.setInt(1, b_idx);
			S_rs = S_pstmt.executeQuery();//조회된 결과를 ResultSet객체에 담음
			
			if(S_rs.next()) {
				dto = new Snews_DTO();
				dto.setB_idx(S_rs.getInt("b_idx"));
				dto.setS_idx(S_rs.getInt("s_idx"));
				dto.setWriter(S_rs.getString("writer"));
				dto.setTitle(S_rs.getString("title"));
				dto.setContent(S_rs.getString("content"));
				dto.setPost_date(S_rs.getDate("post_date"));
				dto.setRead_cnt(S_rs.getInt("read_cnt"));
				dto.setOriginfile_name(S_rs.getString("originfile_name"));
				dto.setSavefile_name(S_rs.getString("savefile_name"));
			}
		
		}catch(Exception e) {
			System.out.println("게시글 조회 중 예외 발생");
			e.printStackTrace();
		}
		
		return dto;
	}
	
	//게시글 수정하기
	public int update(Snews_DTO dto) {
		int result = 0;//실패 시의 값
		
		try {
			if(dto.getOriginfile_name() != null) {
				//파일 업로드가 이루어질 경우의 update문
				String sql = "update SNEWS_BOARD set title=?, content=?, originfile_name=?, savefile_name=? "
						     + " where b_idx=?";
					
				S_pstmt = S_conn.prepareStatement(sql);
				S_pstmt.setString(1, dto.getTitle());
				S_pstmt.setString(2, dto.getContent());
				S_pstmt.setString(3, dto.getOriginfile_name());
				S_pstmt.setString(4, dto.getSavefile_name());
				S_pstmt.setInt(5, dto.getB_idx());
				
			}else {
				//파일 업로드가 이루어지지 않은 경우의 update문
				String sql = "update SNEWS_BOARD set title=?, content=? "
					     + " where b_idx=?";
				
				S_pstmt = S_conn.prepareStatement(sql);
				S_pstmt.setString(1, dto.getTitle());
				S_pstmt.setString(2, dto.getContent());
				S_pstmt.setInt(3, dto.getB_idx());
			}
		
		result = S_pstmt.executeUpdate();//executeUpdate() 실행 결과 적용된 행의 수 반환
		//성공 시 1 반환
			
		}catch(Exception e) {
			System.out.println("게시글 등록 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int delete(int b_idx) {
		int result = 0;//게시글 삭제 처리 실패 시 결과값
		
		try {
			//게시글 삭제 처리 update문: del_or_not(1:유지, -1:삭제 요청)
			String sql = "update SNEWS_BOARD set del_or_not=-1 "
				     + " where b_idx=?";
			
			S_pstmt = S_conn.prepareStatement(sql);
			S_pstmt.setInt(1, b_idx);
	
			result = S_pstmt.executeUpdate();//executeUpdate() 실행 결과 적용된 행의 수 반환
			//성공 시 1 반환
		
		}catch(Exception e) {
			System.out.println("게시글 삭제 처리 중 예외 발생");
			e.printStackTrace();
		}
		
		
		return result;
	}
}
