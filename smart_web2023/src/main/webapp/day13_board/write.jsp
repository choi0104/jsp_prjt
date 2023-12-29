<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>

<h3>글쓰기</h3>
<hr>
<form name="frm_write" method="post" action="write_process.jsp" enctype="multipart/form-data">
<input type="hidden" name="m_idx" value="${member.m_idx}">
<input type="hidden" name="writer" value="${member.member_name}">
작성자: <input type="text" value="${member.member_name}" disabled><br>
제목: <input type="text" name="title"><br>
내용: <textarea name="content" cols="30" rows="10"></textarea><br>
첨부파일: <input type="file" name="uploadFile"><br><br>
<input type="submit" value="작성완료">
<input type="reset" value="다시입력">
<input type="button" value="목록보기" onclick="location.href='list.jsp'">


</form>


</body>
</html>