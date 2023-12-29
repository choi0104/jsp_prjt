<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="dao" class="human.dao.BoardDAO" />
<c:set var="b_idx" value="${param.b_idx}" />
<c:set var="board" value="${dao.getBoard(b_idx)}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정</title>
</head>
<body>

<h3>글수정</h3>
<hr>
<form name="frm_write" method="post" action="update_process.jsp" enctype="multipart/form-data">
<input type="hidden" name="b_idx" value="${b_idx}" >
<input type="hidden" name="m_idx" value="${member.m_idx}" >
<input type="hidden" name="writer" value="${member.member_name}">
작성자: <input type="text" value="${member.member_name}" disabled><br>
제목: <input type="text" name="title" value="${board.title}"><br>
내용: <textarea name="content" cols="30" rows="10">${board.content}</textarea><br>
첨부파일: <input type="file" name="uploadFile"><br><br>
(새로운 파일을 선택하면 이전 파일이 교체됩니다)<br><br>
<input type="submit" value="작성완료">
<input type="reset" value="다시입력">
<input type="button" value="목록보기" onclick="location.href='list.jsp'">


</form>


</body>
</html>