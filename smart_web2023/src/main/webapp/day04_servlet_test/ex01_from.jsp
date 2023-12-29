<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력값 전송방식:get방식</title>
</head>
<body>
	<form method="get" action="/human/info" name="frm">
	나이:
		<input type="text" name="age"><br>
	성별:
		<input type="radio" name="gender" value="M" checked>남자
		<input type="radio" name="gender" value="F" checked>여자<br>
	메일정보 수신여부:
		<input type="radio" name="receive_email" value="Y" checked>수신
		<input type="radio" name="receive_email" value="N" checked>거부<br><br>
	관심항목을 선택하세요:
		<input type="checkbox" name="item" value="신발">신발
		<input type="checkbox" name="item" value="가방">가방
		<input type="checkbox" name="item" value="벨트">벨트<br>
		<input type="checkbox" name="item" value="모자">모자
		<input type="checkbox" name="item" value="시계">시계
		<input type="checkbox" name="item" value="쥬얼리">쥬얼리
		<input type="submit" id="submit_btn" name="get방식으로 전송">
	</form>
</body>
</html>