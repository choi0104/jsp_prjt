<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="human.dto.MemberDTO" %>
	<header>
	     <h1>헤더 영역</h1>
	     <div id="logo" title="회사로고"></div>
	     <div id="info-menu">
	         <a href="#"><img src="../resources/css/img/sitemap.png" id="img-sitemap" alt="사이트맵 이미지"></a>
	         <a href="#">숙소등록</a>
	         
	      <% session = request.getSession();
	         MemberDTO dto = (MemberDTO)session.getAttribute("member");
	         if(dto != null){//로그인한 경우 %>
	         
	      	   <a href="/human/day06_jsp/logout.jsp">로그아웃</a>
               <a href="/human/day06_jsp/update.jsp">회원정보변경</a>
               <a href="/human/day13_board/write.jsp">글쓰기</a>
	        
	      <% }else{//로그인하지 않은 경우 %>
	      	 
	           <a href="/human/day06_jsp/login.jsp">로그인</a>
               <a href="/human/day06_jsp/join.jsp">회원가입</a>
               <a href="/human/day13_board/list.jsp">글목록</a>
               
	      <% }%>
	         
	     </div>
	     <nav>
	         <h1>네이게이션 영역</h1>
	         <ul id="gnb">
	             <li><a href="#">항공+숙소</a></li>
	             <li><a href="#">숙소</a></li>
	             <li><a href="#">항공</a></li>
	             <li><a href="#">할인쿠폰&amp;특가상품</a></li>
	             <li><a href="#">공항 이동 교통편</a></li>
	         </ul>
	     </nav>
	 </header>
