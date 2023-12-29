<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="java.io.IOException, java.text.SimpleDateFormat, java.util.Date, java.io.File" %>
<%@ page import="human.dto.BoardDTO, human.dao.BoardDAO" %>
<%
	String uploadPath = application.getRealPath("/uploads");//파일을 업로드할 프로젝트 폴더 내에
	//추가한 uploads 폴더에 대한 실제 경로를 얻음(이클립스에서 사용하는 경로)
	int maxUploadSize = 1024 * 1024 * 5; //업로드하는 파일의 최대크기(5MB)
	String encoding = "UTF-8"; //언코딩 방식
	//BoardDAO객체 생성해서 dto에 저장된 내용을 DB에 저장하기
	BoardDAO dao = new BoardDAO();

	try{
		//MultipartRequest 객체 생성
		MultipartRequest mRequest = new MultipartRequest(request, uploadPath, maxUploadSize, encoding);
		
		//uploads폴더에 저장할 새로운 파일명 생성
		//업로드된 input양식의 name값으로 업로드된 파일이름을 얻음
		String fileName = mRequest.getFilesystemName("uploadFile");
		//BoardDTO에 세팅할 값 가져오기: MultipartRequest객체를 이용함
		String writer = mRequest.getParameter("writer");
		String title = mRequest.getParameter("title");
		String content = mRequest.getParameter("content");
		//BoardDTO객체 생성해서 값 세팅하기
		System.out.println(title);
		if(title == null || title.trim().isEmpty()){
			out.print("<script> alert('제목을 입력해주세요.'); history.back();</script>");
		}else if(content==null || content.trim().isEmpty()){
			out.print("<script> alert('글을 작성해주세요.'); history.back();</script>");			
		}else{
			int m_idx = Integer.parseInt(mRequest.getParameter("m_idx"));
			int b_idx = Integer.parseInt(mRequest.getParameter("b_idx"));

			BoardDTO dto = new BoardDTO();
			dto.setWriter(writer);
			dto.setTitle(title);
			dto.setContent(content);
			dto.setM_idx(m_idx);
			dto.setB_idx(b_idx);

			if(fileName !=null){
		String ext = fileName.substring(fileName.lastIndexOf(".")); //파일의 확장자를 얻음
		//lastIndexOf("."): 파일이름 끝에서 부터 찾은 "."의 인덱스값을 반환함
		String now = new SimpleDateFormat("yyyyMMDD_HmsS").format(new Date());
		//현재의 날짜와 시간값을 지정한 형식으로 변경하여 문자열로 반환받음(HmsS:24시간 분 초 밀리초)
		String newFileName = now + ext; //새로운 파일이름: 업로드 일시.확장자
		
		//파일명 변경
		File originFile = new File(uploadPath+File.separator+fileName);
		File newFile = new File(uploadPath+File.separator+newFileName);
		
		originFile.renameTo(newFile);
		dto.setOriginfile_name(fileName);
		dto.setSavefile_name(newFileName);
		
			}

		int result = dao.update(dto);
	
			if(result == 1){
			response.sendRedirect("view.jsp?b_idx=" + dto.getB_idx());
			}else{
				out.print("<script> alert('글수정에 실패했습니다.'); history.back();</script>)" );
			}
		}
	}catch(IOException e){
		System.out.println("글 등록 중 예외 발생");
	}finally{
		//프로그램 실행 종료 전 데이터베이스 관련 자원 해제시켜줌
		if(dao != null){
			dao.close();
		}
	}
%>
