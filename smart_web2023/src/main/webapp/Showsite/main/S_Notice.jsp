<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="dao" class="ShowSite.Snotice_DAO" />
<!-- 검색관련 데이터를 저장하는 SearchDTO객체를 생성하고 전달값을 세팅함 -->
<jsp:useBean id="sDto" class="ShowSite.S_SearchDTO" />
<jsp:setProperty name="sDto" property="*" />

<c:set var="boardList" value="${dao.getBoards(sDto)}" />

<!-- 1. 총게시물수 : totalRows  -->
<c:set var="totalRows" value="${boardList.size()}" />

<!-- 2. 한 페이지에 보여줄 게시물수 : rows_page -->
<c:set var="rows_page" value="15" />

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
<title>Insert title here</title>
    <link rel="stylesheet" href="../css/S_Notice.css">
</head>
<body>
<c:import var="S_Header" url="S_Header.jsp"/>
<c:import var="S_Footer" url="S_Footer.jsp"/>
	${S_Header}
<div id="NoticeLine">
    <div id="NoticePage">
        <img src="../siteimg/공지사항페이지.jpg" width="100%"height="350px">
        <div style="width: 85%; margin: 0px auto; margin-top: 50px; display: flex; justify-content: space-between; align-items:flex-end;">
            <h2 style="text-align: left;">공지사항</h2>
            <div style="text-align: right;padding-bottom: 20px;">
                <select id="searchType">
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                    <option value="both">제목+내용</option>
                </select>
                <input type="text" id="announcementSearch" placeholder="검색...">
            </div>
        </div>
       <table>
            <thead>
                <tr>
                    <th>제목</th>
                    <th>내용</th>
                    <th>날짜</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${empty boardList}">
           	    		<tr><td colspan="6">등록된 게시물이 없습니다</td></tr>
            		</c:when>
                    <c:otherwise>
                        <c:forEach var="i" begin="${startNum}" end="${endNum}" >
                            <c:if test="${not empty boardList[i-1]}"><!-- boardList에 저장된 데이터가 있는 경우 출력-->  
                                <tr>
                                    <td><a href="view.jsp?b_idx=${boardList[i-1].b_idx}"> ${boardList[i-1].title} </a></td>
                                    <td><a href="view.jsp?b_idx=${boardList[i-1].b_idx}">${boardList[i-1].content}</a></td>
                                    <td>${boardList[i-1].post_date}</td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
        <div class="pagination">
	<c:if test="${not empty boardList}" >
				<%@ include file="S_NoticePaging.jsp" %>
	</c:if>
        </div>
    </div>
</div>
<c:if test="${not empty member}" >
    <tr>
        <td colspan="6">
            <a href="write.jsp"><input type="button" value="글등록"></a>
        </td>
    </tr>
</c:if>
        
${S_Footer}
</body>
</html>