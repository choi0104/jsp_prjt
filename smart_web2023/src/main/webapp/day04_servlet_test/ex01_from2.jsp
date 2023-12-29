<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력값 전송방식:post방식</title>
</head>
<body>
	<form method="post" action="/human/joinservlet" name="frm">
		아이디:<input type="text" name="member_id"><br>
		주소:	<input type="text" name="address"><br>
		가입인사:<br><textarea name="greet" rows="5" cols="35"></textarea><br><br>
		<input type="submit" name="submit_btn" value="post방식으로 전송">
	</form>
</body>
</html>