<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="dao" class="human.dao.BoardDAO" />  
<c:set var="b_idx" value="${param.b_idx}"/>
<!-- 게시글에 대한 조회수 업데이트하기 -->
${dao.updateRead_cnt(b_idx)} <br>

<!-- 조회수가 대한 조회수 업데이트하기 -->
<c:set var="board" value="${dao.getBoard(b_idx)}"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세보기</title>
<script>
	function deletePost(){
		const ans = confirm("정말로 삭제하겠습니까?")
		//예:true, 아니오:false
		
		if(ans){
			location.href="delete.jsp?b_idx=${board.b_idx}";
		}
	}
</script>
</head>
<body>

작성자: ${board.writer}<br>
제목: ${board.title}<br>
내용: ${board.content}<br>
조회수: ${board.read_cnt}<br>
작성일: ${board.post_date}<br>
첨부파일: ${board.originfile_name}<br>getBoards

<c:if test="${(not empty member) and (member.m_idx eq board.m_idx)}">
<input type="button" value="수정하기" onclick="location.href='update.jsp?b_idx=${board.b_idx}'">
<input type="button" value="삭제하기"onclick="deletePost()">
</c:if>
<input type="button" value="목록보기" onclick="location.href='list.jsp'">

</body>
</html>