<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="b_idx" value="${param.b_idx}"/>
<jsp:useBean id="dao" class="human.dao.BoardDAO"/>

<c:set var="result" value="${dao.delete(b_idx)}"/>

<c:choose>
	<c:when test="${result eq 1}">
		<c:redirect url="/day13_board/list.jsp" context="/human"/>
	</c:when>
	<c:otherwise>
		<script>
			alert("게시글 삭제 처리 중 에러 발생");
			history.back();
		</script>
	</c:otherwise>
</c:choose>