<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 

<<페이지 네비게이션 변수를 이용해서 페이지 네비게이션 구현>>

1. 총 페이지번호와 페이지블록을 연계하여 페이지번호 출력
   - 시작번호: (pageBlock - 1)*pages_pageBlock + 1
   - 끝번호: pageBlock*pages_pageBlock
   - (조건) 페이지번호가 총 페이지번호보다 작거나 같은 경우에만 페이지번호 출력
   - 페이지번호: a태그에 pageNum, pageBlock값 전달함

2. 총 페이지번호가 페이지블록을 초과하는 경우 '다음'과 맨 마지막페이지 기호(>>) 출력

3. 현재 페이지번호가 블록당 페이지수보다 큰 경우 '이전'과 맨 처음페이지 기호(<<) 출력

4. 검색어가 있는 경우와 없는 경우를 구분하여 출력

 -->

<!-- 4. 검색어가 있는 경우와 없는 경우를 구분하여 출력: searchField, searchWord에 대한 변수선언 --> 
<c:set var="searchField" value="${param.searchField}" />
<c:set var="searchWord" value="${param.searchWord}" /> 
 
<c:choose>
	<c:when test="${not empty searchWord}"><!-- 검색어가 있는 경우  -->
	
		<!-- 3. 현재 페이지번호가 블록당 페이지수보다 큰 경우 '이전'과 맨 처음페이지 기호(<<) 출력 -->
		<c:if test="${pageNum > 5}">
			<a href="S_News.jsp?pageNum=1&pageBlock=1&searchField=${searchField}&searchWord=${searchWord}">&lt;&lt;</a>
			&nbsp;
			<a href="S_News.jsp?pageNum=${(pageBlock-2)*pages_pageBlock+1}&pageBlock=${pageBlock-1}&searchField=${searchField}&searchWord=${searchWord}">이전</a>
		</c:if>
		
		<!-- 1. 총 페이지번호와 페이지블록을 연계하여 페이지번호 출력 --> 
		<c:forEach var="p" begin="${(pageBlock - 1)*pages_pageBlock +1}" end="${pageBlock*pages_pageBlock}">
			<c:if test="${p le total_pageNum}">
				<a href="S_News.jsp?pageNum=${p}&pageBlock=${pageBlock}&searchField=${searchField}&searchWord=${searchWord}">
					<!-- 현재 페이지를 빨간색으로 출력 -->
					<c:if test="${p eq pageNum}" var="flag"> <!-- flag 변수에는 test 결과값이 저장됨 -->
						<span style="color:red">${p}&nbsp;</span>
					</c:if>
					<c:if test="${not flag}">
						${p}&nbsp;
					</c:if>
				</a>
			</c:if>
		</c:forEach>

		<!-- 2. 총 페이지번호가 페이지블록을 초과하는 경우 '다음'과 맨 마지막페이지 기호(>>) 출력 -->
		<c:if test="${total_pageNum > (pageBlock*pages_pageBlock)}">
			<a href="S_News.jsp?pageNum=${(pageBlock*pages_pageBlock)+1}&pageBlock=${pageBlock + 1}&searchField=${searchField}&searchWord=${searchWord}">다음</a>
			&nbsp;
			<a href="S_News.jsp?pageNum=${total_pageNum}&pageBlock=${last_pageBlock}&searchField=${searchField}&searchWord=${searchWord}">&gt;&gt;</a>
		</c:if>
	
	</c:when>

	<c:otherwise><!-- 검색어가 없는 경우  -->
	
		<!-- 3. 현재 페이지번호가 블록당 페이지수보다 큰 경우 '이전'과 맨 처음페이지 기호(<<) 출력 -->
		<c:if test="${pageNum > 5}">
			<a href="S_News.jsp?pageNum=1&pageBlock=1">&lt;&lt;</a>
			&nbsp;
			<a href="S_News.jsp?pageNum=${(pageBlock-2)*pages_pageBlock+1}&pageBlock=${pageBlock-1}">이전</a>
		</c:if>
		
		<!-- 1. 총 페이지번호와 페이지블록을 연계하여 페이지번호 출력 --> 
		<c:forEach var="p" begin="${(pageBlock - 1)*pages_pageBlock +1}" end="${pageBlock*pages_pageBlock}">
			<c:if test="${p le total_pageNum}">
				<a href="S_News.jsp?pageNum=${p}&pageBlock=${pageBlock}">
					<!-- 현재 페이지를 빨간색으로 출력 -->
					<c:if test="${p eq pageNum}" var="flag"> <!-- flag 변수에는 test 결과값이 저장됨 -->
						<span style="color:red">${p}&nbsp;</span>
					</c:if>
					<c:if test="${not flag}">
						${p}&nbsp;
					</c:if>
				</a>
			</c:if>
		</c:forEach>
		
		<!-- 2. 총 페이지번호가 페이지블록을 초과하는 경우 '다음'과 맨 마지막페이지 기호(>>) 출력 -->
		<c:if test="${total_pageNum > (pageBlock*pages_pageBlock)}">
			<a href="S_News.jsp?pageNum=${(pageBlock*pages_pageBlock)+1}&pageBlock=${pageBlock + 1}">다음</a>
			&nbsp;
			<a href="S_News.jsp?pageNum=${total_pageNum}&pageBlock=${last_pageBlock}">&gt;&gt;</a>
		</c:if>	
	
	</c:otherwise>
</c:choose>

 














