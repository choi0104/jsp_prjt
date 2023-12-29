<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="dao" class="human.dao.BoardDAO" />

<!-- 검색관련 데이터를 저장하는 SearchDTO객체를 생성하고 전달값을 세팅함 -->
<jsp:useBean id="sDto" class="human.dto.SearchDTO" />
<jsp:setProperty name="sDto" property="*" />

<c:set var="boardList" value="${dao.getBoards(sDto)}" />
<!-- 
<<페이지 네비게이션 구현을 위한 변수들>>
1. 총 게시물수 : totalRows
2. 한 페이지에 보여줄 게시물수 : rows_page
   - 개발자가 정함, 10 
3. 한 페이지블록에 보여줄 페이지수 : pages_pageBlock
   - 개발자가 정함, 5  
4. 현재 페이지번호 : pageNum
   - pageNum 전달값이 없는 경우 1로 초기화함
5. 게시물의 시작번호 : startNum
   - (현재 페이지번호 - 1)*rows_page + 1   
6. 게시물의 끝번호 : endNum
   - 현재 페이지번호*rows_page  
7. 현재 페이지블록번호 : pageBlock
   - pageBlock 전달값이 없는 경우 1로 초기화함
8. 마지막/총 페이지번호 : total_pageNum
   - (총 게시물수 / rows_page)의 올림값(Math.ceil())
9. 마지막 페이지블록번호 : last_pageBlock
   - (총 페이지번호 / pages_pageBlock)의 올림값(Math.ceil())
 -->
<!-- 1. 총게시물수 : totalRows  -->
<c:set var="totalRows" value="${boardList.size()}" />

<!-- 2. 한 페이지에 보여줄 게시물수 : rows_page -->
<c:set var="rows_page" value="10" />

<!-- 3. 한 페이지블록에 보여줄 페이지수 : pages_pageBlock -->
<c:set var="pages_pageBlock" value="5" />

<!-- 4. 현재 페이지번호 : pageNum -->
<c:choose>
	<c:when test="${empty param.pageNum}"><c:set var="pageNum" value="1" /></c:when>
	<c:otherwise><c:set var="pageNum" value="${param.pageNum}" /></c:otherwise>
</c:choose>

<!-- 5. 게시물의 시작번호 : startNum -->
<c:set var="startNum" value="${(pageNum-1)*rows_page +1}" />

<!-- 6. 게시물의 끝번호 : endNum -->
<c:set var="endNum" value="${(pageNum)*rows_page}" />

<!-- 7. 현재 페이지블록번호 : pageBlock -->
<c:choose>
	<c:when test="${empty param.pageBlock}"><c:set var="pageBlock" value="1" /></c:when>
	<c:otherwise><c:set var="pageBlock" value="${param.pageBlock}" /></c:otherwise>
</c:choose>

<!-- 8. 마지막/총 페이지번호 : total_pageNum -->
<fmt:parseNumber var="tPageNum" value="${Math.ceil(totalRows/rows_page)}" integerOnly="true" />
<c:set var="total_pageNum" value="${tPageNum}" />

<!-- 9. 마지막 페이지블록번호 : last_pageBlock -->
<fmt:parseNumber var="lPageBlock" value="${Math.ceil(total_pageNum/pages_pageBlock)}" integerOnly="true" />
<c:set var="last_pageBlock" value="${lPageBlock}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글목록</title>

<style>
	#td_paging{
		height: 50px;
		font: 12px Arial, sans-serif;
		text-align: center;
	}
	a{
		text-decoration: none;
		color: black;
	}
</style>

</head>
<body>

<h3>글 목록</h3>

<!-- 검색 폼: action속성이 없음(=>현재 JSP페이지(list.jsp)가 요청되며 입력값이 전달됨) -->
<form>
<table border="1">
	<tr>
		<td>총게시물수: ${totalRows}</td>
		<td>
			<select name="searchField">
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="writer">작성자</option>
			</select>
			<input type="text" name="searchWord">
			<input type="submit" value="검색">
		</td>
	</tr>
</table>
</form>



<table border="1">

	<tr><th>구분</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th><th>첨부파일</th></tr>

	<!-- DB에 저장된 데이터 출력하기: 반복문을 이용(forEach 태그) -->
	<!-- DB에 저장된 데이터가 있는지 여부를 확인해서 각각 출력되도록 해줌: 조건문을 이용(choose, when, otherwise 태그)
	     - EL의 empty연산자는 null, 배열의 길이가 0인 경우, 컬렉션의 size가 0인 경우 true를 반환함
	  -->
	  
	<c:choose>
		<c:when test="${empty boardList}">
			<tr><td colspan="6">등록된 게시물이 없습니다</td></tr>
		</c:when>
		<c:otherwise>
			<c:forEach var="i" begin="${startNum}" end="${endNum}" >
				<c:if test="${not empty boardList[i-1]}"><!-- boardList에 저장된 데이터가 있는 경우 출력-->
					<tr>
						<td>${i}</td>
						<td>
						   <a href="view.jsp?b_idx=${boardList[i-1].b_idx}"> ${boardList[i-1].title} </a>
						</td>
						<td>${boardList[i-1].writer}</td>
						<td>${boardList[i-1].post_date}</td>
						<td>${boardList[i-1].read_cnt}</td>
						<td>
							<!-- 첨부파일이 있는 경우에는 정해진 이미지를 출력시키고 없는 경우에는 공란으로 처리함 -->
							<c:if test="${not empty boardList[i-1].originfile_name}">
								<a href="download.jsp?originfile_name=${boardList[i-1].originfile_name}&savefile_name=${boardList[i-1].savefile_name}">
									<img src="../resources/css/img/download.png" alt="첨부파일 이미지" width="15px" height="17px">
								</a>
							</c:if>
						</td>
					</tr>
				</c:if>
			</c:forEach>
		</c:otherwise>
	</c:choose>
	
	<!-- 회원인 경우 목록 하단에 글등록 버튼이 보여지도록 구현 -->
	<c:if test="${not empty member}" >
		<tr>
			<td colspan="6">
				<a href="write.jsp"><input type="button" value="글등록"></a>
			</td>
		</tr>
	</c:if>
	  
	<!-- 게시글이 있는 경우 페이지 네비게이션이 보여지도록 구현 -->
	<c:if test="${not empty boardList}" >
		<tr>
			<td colspan="6" id="td_paging">
				<%@ include file="paging.jsp" %>
			</td>
		</tr>
	</c:if>  

</table>

</body>
</html>