<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.io.IOException" %>
<%
	String uploadPath = application.getRealPath("/uploads");//파일을 업로드할 프로젝트 폴더 내에
	//추가한 uploads 폴더에 대한 실제 경로를 얻음(이클립스에서 사용하는 경로)
	int maxUploadSize = 1024 * 1024 * 5; //업로드하는 파일의 최대크기(5MB)
	String encoding = "UTF-8"; //언코딩 방식

	try{
		//MultipartRequest 객체 생성
		MultipartRequest mRequest = new MultipartRequest(request, uploadPath, maxUploadSize, encoding,
			new DefaultFileRenamePolicy());
		out.print("파일 업로드 완료<br><br>");
		out.print("<a href='javascript:history.back()'>이전 페이지</a>");
	}catch(IOException e){
		System.out.println("파일 업로드 중 예외 발생");
	}
%>
