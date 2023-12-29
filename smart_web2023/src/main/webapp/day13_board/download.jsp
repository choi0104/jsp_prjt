<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%
String uploadPath = application.getRealPath("/uploads");
String originfile_name = request.getParameter("originfile_name");
String savefile_name = request.getParameter("savefile_name");

File downloadFile = new File(uploadPath, savefile_name);

try(InputStream is = new FileInputStream(downloadFile);//저장된 파일에 대한 입력 스트림 생성
	OutputStream os = response.getOutputStream();){//response객체에 출력할 출력 스트림 얻음
	
	//한글 파일명 깨짐 방지를 위한 처리
	String client = request.getHeader("User-Agent");//User-Agent:사용자가 사용하는 웹 브라우저
	if(client.indexOf("WOW64") == -1){
	//WOW64: Windows on Windows 64-bit, 64비트 버전의 windows에서 32비트 응용프로그램을 실행할 수 있음을 
	//의미하며 IE(인터넷 익스플로러)의 실행 결과에서 출력됨
		originfile_name = new String(originfile_name.getBytes("UTF-8"), "ISO-8859-1");
	    //HTTP의 정보는 ASCII로 인코딩되므로 여기에 문자셋을 맞추기 위해 먼저 파일 이름을 UTF-8로 된 배열 생성 후
	    //ISO-8859-1문자셋으로 문자열 객체를 생성함
	}else{
		originfile_name = new String(originfile_name.getBytes("KSC5601"), "ISO-8859-1");
	}
	
	//파일 다운로드용 응답헤더 설정
	response.reset();
	response.setContentType("application/octet-stream");//파일 다운로드를 위한 MIME 설정
	//위 MIME타입과 함께 설정되는 컨텐츠 처리 헤더 설정
	response.setHeader("Content-Disposition", "attachment; filename=\""+originfile_name+"\"");
	response.setHeader("Content-Length", ""+downloadFile.length());
	
	//out.clear();
	
	//출력 스트림에 파일 내용 출력하기
	//파일 크기의 바이트 배열을 생성해서 버퍼로 사용함
	byte [] buffer = new byte[(int)downloadFile.length()];
	int readBuffer = 0;
	while((readBuffer = is.read(buffer)) > 0){
		os.write(buffer, 0, readBuffer);
	}
	
	
}catch(Exception e){
	System.out.println("다운로드 중 예외 발생");
}







%>