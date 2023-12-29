package human.dao;

import java.util.ArrayList;

import human.dto.BoardDTO;
import human.dto.SearchDTO;
import human.util.DBConnection;


public class BoardDAO extends DBConnection {
	
	public int insert(BoardDTO dto) {
		int result = 0;//실패 시의 값
		
		try {
			if(dto.getOriginfile_name() != null) {
				//파일 업로드가 이루어질 경우의 insert문
				String sql = "insert into tb_board (b_idx, m_idx, writer, title, content, originfile_name, savefile_name) "
						     + " values(board_seq.nextval, ?,?,?,?,?,?)";
					
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, dto.getM_idx());
				pstmt.setString(2, dto.getWriter());
				pstmt.setString(3, dto.getTitle());
				pstmt.setString(4, dto.getContent());
				pstmt.setString(5, dto.getOriginfile_name());
				pstmt.setString(6, dto.getSavefile_name());
				
			}else {
				//파일 업로드가 이루어지지 않은 경우의 insert문
				String sql = "insert into tb_board (b_idx, m_idx, writer, title, content) "
						     + " values(board_seq.nextval, ?,?,?,?)";
					
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, dto.getM_idx());
				pstmt.setString(2, dto.getWriter());
				pstmt.setString(3, dto.getTitle());
				pstmt.setString(4, dto.getContent());
			}
		
		result = pstmt.executeUpdate();//executeUpdate() 실행 결과 적용된 행의 수 반환
		//성공 시 1 반환
			
		}catch(Exception e) {
			System.out.println("게시글 등록 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
	//모든 게시글 조회
	public ArrayList<BoardDTO> getBoards(){
		ArrayList<BoardDTO> boardList = new ArrayList<BoardDTO>();
		
		String sql = "select * from tb_board "
				+ " where del_or_not = 1 "
				+ " order by b_idx desc";
		//order by b_idx desc: 게시판의 글 목록은 최근 글이 위에 위치하므로 
		//게시글 번호를 기준으로 내림차순 정렬하여 조회함
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();//조회된 결과를 ResultSet객체에 담음
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setB_idx(rs.getInt("b_idx"));
				dto.setM_idx(rs.getInt("m_idx"));
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPost_date(rs.getDate("post_date"));
				dto.setRead_cnt(rs.getInt("read_cnt"));
				dto.setOriginfile_name(rs.getString("originfile_name"));
				dto.setSavefile_name(rs.getString("savefile_name"));
				
				boardList.add(dto);
			}
		
		}catch(Exception e) {
			System.out.println("게시글 목록 조회 중 예외 발생");
			e.printStackTrace();
		}
		
		return boardList;
	}

	//검색관련 데이터를 적용하여 모든 게시글 조회
	public ArrayList<BoardDTO> getBoards(SearchDTO sDto){
		ArrayList<BoardDTO> boardList = new ArrayList<BoardDTO>();
		
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
				
				sql = "select * from tb_board "
						+ " where del_or_not = 1 "
						+ " and "+searchField+" like '%'||?||'%' "
						+ " order by b_idx desc";
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, sDto.getSearchWord());
				
			}else {//검색어가 입력되지 않은 경우
				sql = "select * from tb_board "
						+ " where del_or_not = 1 "
						+ " order by b_idx desc";
				pstmt = conn.prepareStatement(sql);
			}
			
			rs = pstmt.executeQuery();//조회된 결과를 ResultSet객체에 담음
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setB_idx(rs.getInt("b_idx"));
				dto.setM_idx(rs.getInt("m_idx"));
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPost_date(rs.getDate("post_date"));
				dto.setRead_cnt(rs.getInt("read_cnt"));
				dto.setOriginfile_name(rs.getString("originfile_name"));
				dto.setSavefile_name(rs.getString("savefile_name"));
				
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
		
		String sql = "update tb_board set read_cnt = (read_cnt + 1) where b_idx = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, b_idx);
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("조회수 업데이트 중 예외 발생");
			e.printStackTrace();
		}
	}
	
	//하나의 게시글 조회
	public BoardDTO getBoard(int b_idx){
		BoardDTO dto = null;
		
		String sql = "select * from tb_board where b_idx = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, b_idx);
			rs = pstmt.executeQuery();//조회된 결과를 ResultSet객체에 담음
			
			if(rs.next()) {
				dto = new BoardDTO();
				dto.setB_idx(rs.getInt("b_idx"));
				dto.setM_idx(rs.getInt("m_idx"));
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPost_date(rs.getDate("post_date"));
				dto.setRead_cnt(rs.getInt("read_cnt"));
				dto.setOriginfile_name(rs.getString("originfile_name"));
				dto.setSavefile_name(rs.getString("savefile_name"));
			}
		
		}catch(Exception e) {
			System.out.println("게시글 조회 중 예외 발생");
			e.printStackTrace();
		}
		
		return dto;
	}
	
	//게시글 수정하기
	public int update(BoardDTO dto) {
		int result = 0;//실패 시의 값
		
		try {
			if(dto.getOriginfile_name() != null) {
				//파일 업로드가 이루어질 경우의 update문
				String sql = "update tb_board set title=?, content=?, originfile_name=?, savefile_name=? "
						     + " where b_idx=?";
					
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getTitle());
				pstmt.setString(2, dto.getContent());
				pstmt.setString(3, dto.getOriginfile_name());
				pstmt.setString(4, dto.getSavefile_name());
				pstmt.setInt(5, dto.getB_idx());
				
			}else {
				//파일 업로드가 이루어지지 않은 경우의 update문
				String sql = "update tb_board set title=?, content=? "
					     + " where b_idx=?";
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getTitle());
				pstmt.setString(2, dto.getContent());
				pstmt.setInt(3, dto.getB_idx());
			}
		
		result = pstmt.executeUpdate();//executeUpdate() 실행 결과 적용된 행의 수 반환
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
			String sql = "update tb_board set del_or_not=-1 "
				     + " where b_idx=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, b_idx);
	
			result = pstmt.executeUpdate();//executeUpdate() 실행 결과 적용된 행의 수 반환
			//성공 시 1 반환
		
		}catch(Exception e) {
			System.out.println("게시글 삭제 처리 중 예외 발생");
			e.printStackTrace();
		}
		
		
		return result;
	}
}
