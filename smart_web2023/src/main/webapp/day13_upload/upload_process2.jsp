<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="java.io.IOException, java.text.SimpleDateFormat, java.util.Date, java.io.File" %>
<%
	String uploadPath = application.getRealPath("/uploads");//파일을 업로드할 프로젝트 폴더 내에
	//추가한 uploads 폴더에 대한 실제 경로를 얻음(이클립스에서 사용하는 경로)
	int maxUploadSize = 1024 * 1024 * 5; //업로드하는 파일의 최대크기(5MB)
	String encoding = "UTF-8"; //언코딩 방식

	try{
		//MultipartRequest 객체 생성
		MultipartRequest mRequest = new MultipartRequest(request, uploadPath, maxUploadSize, encoding);
		
		//uploads폴더에 저장할 새로운 파일명 생성
		//업로드된 input양식의 name값으로 업로드된 파일이름을 얻음
		String fileName = mRequest.getFilesystemName("upload");
		String ext = fileName.substring(fileName.lastIndexOf(".")); //파일의 확장자를 얻음
		//lastIndexOf("."): 파일이름 끝에서 부터 찾은 "."의 인덱스값을 반환함
		String now = new SimpleDateFormat("yyyyMMDD_HmsS").format(new Date());
		//현재의 날짜와 시간값을 지정한 형식으로 변경하여 문자열로 반환받음(HmsS:24시간 분 초 밀리초)
		String newFileName = now + ext; //새로운 파일이름: 업로드 일시.확장자
		
		//파일명 변경
		File originFile = new File(uploadPath+File.separator+fileName);
		File newFile = new File(uploadPath+File.separator+newFileName);
		
		originFile.renameTo(newFile);
		
		out.print("파일 업로드 완료<br><br>");
		out.print("<a href='javascript:history.back()'>이전 페이지</a>");
	}catch(IOException e){
		System.out.println("파일 업로드 중 예외 발생");
	}
%>
