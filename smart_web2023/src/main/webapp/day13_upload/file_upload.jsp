<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서버에 파일 업로드하기</title>
</head>
<body>
	<form action="upload_process2.jsp" method="post" enctype="multipart/form-data">
	<!-- 파일 업로드 시 주의사항
		1. cos.jar.파일을 다운받아서 lib폴더에 추가시킴
		2. form태그 작성시 속성을 method는 post로
			enctype="multipart/form-data"로 추가함
		3. input태그의 타입을 file로 해서 파일창을 띄울 수 있도록 작성
			- name값으로 파일이 서버로 전송됨
	-->
		<input type="file" name="upload"><br><br>
		<input type="submit" name="파일 업로드">
	</form>
</body>
</html>