<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="human.dto.MemberDTO" %>    
 
 <% 
    session = request.getSession();
    MemberDTO dto = (MemberDTO)session.getAttribute("member");
 %>   
    <header>
    
         <h1>헤더 영역</h1>
         <div id="info-menu">
             <a href="#"><img src="../resources/css/img/sitemap.png" id="img-sitemap" alt="사이트맵 이미지"></a>
             <a href="/human/main/index.jsp"><img src="../resources/css/img/home.svg" id="img-home" alt="홈 이미지"></a>
             <a href="#">숙소등록</a>
             <a href="/human/memberLogout">로그아웃</a>   
         </div>
    </header>