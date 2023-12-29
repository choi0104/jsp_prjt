<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 param,paramValues 내장객체 테스트</title>
</head>
<body>
	<h3>입력값 전송하기</h3>
	<form method="post" action="param.jsp">
		닉네임: <input type="text" name="nickname" ><br>
		관심사항:
		<input type="checkbox" name="interest" value="정치">정치
		<input type="checkbox" name="interest" value="경제">경제
		<input type="checkbox" name="interest" value="문화">문화
		<input type="checkbox" name="interest" value="스포츠">스포츠<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>