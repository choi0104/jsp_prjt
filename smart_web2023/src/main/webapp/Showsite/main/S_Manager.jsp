<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ShowSite.S_DTO"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="Snotice_dao" class="ShowSite.Snotice_DAO" />
<jsp:useBean id="Sevent_dao" class="ShowSite.Sevent_DAO" />
<jsp:useBean id="Snews_dao" class="ShowSite.Snews_DAO" />

<!-- 검색관련 데이터를 저장하는 SearchDTO객체를 생성하고 전달값을 세팅함 -->
<jsp:useBean id="sDto" class="ShowSite.S_SearchDTO" />
<jsp:setProperty name="sDto" property="*" />

<c:set var="Snotice_boardList" value="${Snotice_dao.getBoards(sDto)}" />
<c:set var="Sevent_boardList" value="${Sevent_dao.getBoards(sDto)}" />
<c:set var="Snews_boardList" value="${Snews_dao.getBoards(sDto)}" />


<!-- 1. 총게시물수 : totalRows  -->
<c:set var="Snotice_totalRows" value="${Snotice_boardList.size()}" />
<c:set var="Sevent_totalRows" value="${Sevent_boardList.size()}" />
<c:set var="Snews_totalRows" value="${Snews_boardList.size()}" />

<!-- 2. 한 페이지에 보여줄 게시물수 : rows_page -->
<c:set var="rows_page" value="20" />

<!-- 3. 한 페이지블록에 보여줄 페이지수 : pages_pageBlock -->
<c:set var="pages_pageBlock" value="5" />

<!-- 4. 현재 페이지번호 : pageNum -->
<c:choose>
    <c:when test="${empty param.Notice_pageNum}">
        <c:set var="Notice_pageNum" value="1" />
    </c:when>
    <c:otherwise>
        <c:set var="Notice_pageNum" value="${param.Notice_pageNum}" />
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${empty param.Event_pageNum}">
        <c:set var="Event_pageNum" value="1" />
    </c:when>
    <c:otherwise>
        <c:set var="Event_pageNum" value="${param.Event_pageNum}" />
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${empty param.News_pageNum}">
        <c:set var="News_pageNum" value="1" />
    </c:when>
    <c:otherwise>
        <c:set var="News_pageNum" value="${param.News_pageNum}" />
    </c:otherwise>
</c:choose>
<!-- 5. 게시물의 시작번호 : startNum -->
<c:set var="Notice_startNum" value="${(Notice_pageNum-1)*rows_page +1}" />
<c:set var="Event_startNum" value="${(Event_pageNum-1)*rows_page +1}" />
<c:set var="News_startNum" value="${(News_pageNum-1)*rows_page +1}" />

<!-- 6. 게시물의 끝번호 : endNum -->
<c:set var="Notice_endNum" value="${(Notice_pageNum)*rows_page}" />
<c:set var="Event_endNum" value="${(Event_pageNum)*rows_page}" />
<c:set var="News_endNum" value="${(News_pageNum)*rows_page}" />

<!-- 7. 현재 페이지블록번호 : pageBlock -->
<c:choose>
    <c:when test="${empty param.Notice_pageBlock}">
        <c:set var="Notice_pageBlock" value="1" />
    </c:when>
    <c:otherwise>
        <c:set var="Notice_pageBlock" value="${param.Notice_pageBlock}" />
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${empty param.Event_pageBlock}">
        <c:set var="Event_pageBlock" value="1" />
    </c:when>
    <c:otherwise>
        <c:set var="Event_pageBlock" value="${param.Event_pageBlock}" />
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${empty param.News_pageBlock}">
        <c:set var="News_pageBlock" value="1" />
    </c:when>
    <c:otherwise>
        <c:set var="News_pageBlock" value="${param.News_pageBlock}" />
    </c:otherwise>
</c:choose>

<!-- 8. 마지막/총 페이지번호 : total_pageNum -->
<fmt:parseNumber var="Notice_tPageNum" value="${Math.ceil(Snotice_totalRows/rows_page)}" integerOnly="true" />
<c:set var="Notice_total_pageNum" value="${Notice_tPageNum}" />
<fmt:parseNumber var="Event_tPageNum" value="${Math.ceil(Sevent_totalRows/rows_page)}" integerOnly="true" />
<c:set var="Event_total_pageNum" value="${Event_tPageNum}" />
<fmt:parseNumber var="News_tPageNum" value="${Math.ceil(Snews_totalRows/rows_page)}" integerOnly="true" />
<c:set var="News_total_pageNum" value="${News_tPageNum}" />

<!-- 9. 마지막 페이지블록번호 : last_pageBlock -->
<fmt:parseNumber var="Notice_lPageBlock" value="${Math.ceil(Notice_total_pageNum/pages_pageBlock)}" integerOnly="true" />
<c:set var="Notice_last_pageBlock" value="${Notice_lPageBlock}" />
<fmt:parseNumber var="Event_lPageBlock" value="${Math.ceil(Event_total_pageNum/pages_pageBlock)}" integerOnly="true" />
<c:set var="Event_last_pageBlock" value="${Event_lPageBlock}" />
<fmt:parseNumber var="News_lPageBlock" value="${Math.ceil(News_total_pageNum/pages_pageBlock)}" integerOnly="true" />
<c:set var="News_last_pageBlock" value="${News_lPageBlock}" />

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="../css/S_Manager.css">
</head>
<body>
    <c:import var="S_Header" url="S_Header.jsp" />
    <c:import var="S_Footer" url="S_Footer.jsp" />
    ${S_Header}
    <% session = request.getSession();
	         S_DTO dto = (S_DTO)session.getAttribute("member");
         	if(dto != null && dto.getS_idx() == 7){
	         %>

    <div id="ManagerLine">
        <div id="ManagerPage">
            <h1>관리자 페이지</h1>
            <div style="width: 90%; height: 900px; display: flex;justify-content: center; margin: auto;position: relative;">
                <!-- ------------------공지사항------------------ -->
                <div id="NoticePage" class="Page"><a onclick="toggleSize('NoticePage')">공지사항</a>
                    <div style="text-align: right;padding-bottom: 20px;">
                        <select id="searchType">
                            <option value="title">제목</option>
                            <option value="content">내용</option>
                            <option value="both">제목+내용</option>
                        </select>
                        <input type="text" id="announcementSearch" placeholder="검색...">
                    </div>
                        <table>
                            <thead>
                                <tr>
                                    <th>제목</th>
                                    <th>내용</th>
                                    <th>조회수</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:choose>
                                    <c:when test="${empty Snotice_boardList}">
                                        <tr>
                                            <td colspan="6">등록된 게시물이 없습니다</td>
                                        </tr>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach var="i" begin="${Notice_startNum}" end="${Notice_endNum}">
                                            <c:if test="${not empty Snotice_boardList[i-1]}">
                                                <!-- boardList에 저장된 데이터가 있는 경우 출력-->
    	                                        <tr style="width: 237px;">
	                                                <td style="width:300px;text-align:start;overflow: hidden;display: -webkit-box;-webkit-box; -webkit-box-orient: vertical;-webkit-line-clamp: 1; " >
        	                                            <a style="font-size:20px" href="view.jsp?b_idx=${Snotice_boardList[i-1].b_idx}">${Snotice_boardList[i-1].title} </a>
        	                                        </td>
                	                                <td>${Snotice_boardList[i-1].post_date}</td>
                    	                            <td>${Snotice_boardList[i-1].read_cnt}</td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </c:otherwise>
                                </c:choose>
                            </tbody>
                        </table>
                        <div class="pagination">
                            <c:if test="${not empty Snotice_boardList}">
                                <%@ include file="SM_NoticePaging.jsp" %>
                            </c:if>
                        </div>
                    <c:if test="${not empty member}">
                        <tr>
                            <td colspan="6">
                                <a href="write.jsp"><input type="button" value="글등록"></a>
                            </td>
                        </tr>
                    </c:if>
                </div>
                <!-- ------------------공지사항------------------ -->
				<!-- ------------------이벤트------------------ -->
                <div id="EventPage" class="Page"><a onclick="toggleSize('EventPage')">이벤트</a>
                    <div style="text-align: right;padding-bottom: 20px;">
                            <select id="searchType">
                                <option value="title">제목</option>
                                <option value="content">내용</option>
                                <option value="both">제목+내용</option>
                            </select>
                            <input type="text" id="announcementSearch" placeholder="검색...">
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>제목</th>
                                <th>내용</th>
                                <th>조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:choose>
                                <c:when test="${empty Sevent_boardList}">
                                    <tr>
                                        <td colspan="6">등록된 게시물이 없습니다</td>
                                    </tr>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="i" begin="${Event_startNum}" end="${Event_endNum}">
                                        <c:if test="${not empty Sevent_boardList[i-1]}">
                                            <!-- boardList에 저장된 데이터가 있는 경우 출력-->
                                            <tr style="width: 237px;">
                                                <th style="width:300px;text-align:start;overflow: hidden;display: -webkit-box;-webkit-box; -webkit-box-orient: vertical;-webkit-line-clamp: 1; " >
                                                <a style="font-size:20px" href="view.jsp?b_idx=${Sevent_boardList[i-1].b_idx}">${Sevent_boardList[i-1].title}
                                                    </a></th>
                                                <th>${Sevent_boardList[i-1].post_date}</th>
                                                <th>${Sevent_boardList[i-1].read_cnt}</th>
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                        </tbody>
                    </table>
                    <div class="pagination">
						<c:if test="${not empty Sevent_boardList}">
						    <%@ include file="SM_EventPaging.jsp" %>
						</c:if>
                    </div>
                    <c:if test="${not empty member}">
                        <tr>
                            <td colspan="6">
                                <a href="write.jsp"><input type="button" value="글등록"></a>
                            </td>
                        </tr>
                    </c:if>
                </div>
				<!-- ------------------이벤트------------------ -->
				<!-- ------------------뉴스------------------ -->
                <div id="NewsPage" class="Page"><a onclick="toggleSize('NewsPage')">뉴스</a>
                    <div style="text-align: right;padding-bottom: 20px;">
                         <select id="searchType">
                             <option value="title">제목</option>
                             <option value="content">내용</option>
                             <option value="both">제목+내용</option>
                         </select>
                         <input type="text" id="announcementSearch" placeholder="검색...">
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>제목</th>
                                <th>내용</th>
                                <th>조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:choose>
                                <c:when test="${empty Snews_boardList}">
                                    <tr>
                                        <td colspan="6">등록된 게시물이 없습니다</td>
                                    </tr>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="i" begin="${News_startNum}" end="${News_endNum}">
                                        <c:if test="${not empty Snews_boardList[i-1]}">
                                            <!-- boardList에 저장된 데이터가 있는 경우 출력-->
                                            <tr style="width: 237px;">
                                                <th style="width:300px;text-align:start;text-align:start; overflow: hidden;display: -webkit-box;-webkit-box; -webkit-box-orient: vertical;-webkit-line-clamp: 1; " >
                                                	<a style="font-size:20px" href="view.jsp?b_idx=${Snewst_boardList[i-1].b_idx}">${Snews_boardList[i-1].title}
                                                    </a>
                                                </th>
                                                <th>${Snews_boardList[i-1].post_date}</th>
                                                <th>${Snews_boardList[i-1].read_cnt}</th>
                                            </tr>
                                        </c:if>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                        </tbody>
                    </table>
                    <div class="pagination">
						<c:if test="${not empty Snews_boardList}">
						    <%@ include file="SM_NewsPaging.jsp" %>
						</c:if>
                    </div>
                    <c:if test="${not empty member}">
                        <tr>
                            <td colspan="6">
                                <a href="write.jsp"><input type="button" value="글등록"></a>
                            </td>
                        </tr>
                    </c:if>
                </div>
				<!-- ------------------뉴스------------------ -->
                
                <div id="CommunityPage" class="Page"><a onclick="toggleSize('CommunityPage')">커뮤니티</a></div>
            </div>
        </div>
    </div>
    <%}else{%>
    <h1 style="text-align: center">접근 권한 제한자</h1>
    <%}%>
    
    ${S_Footer}
</body>
<script type="text/javascript" src="../js/S_Manager.js"></script>
</html>