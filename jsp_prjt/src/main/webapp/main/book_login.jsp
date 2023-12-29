<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="booklog.bookDTO" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script type="text/javascript" src="../resources/js/book_login.js"></script>
    <link rel="stylesheet" href="../resources/css/book_login.css">
</head>
<body>
<c:import var="book_header" url="book_header.jsp"/>
<c:import var="book_footer" url="book_footer.jsp"/>
    <div class="main">

        ${book_header}

        <div id="line"></div>

        <div id="firstbox">
            <div id="firstbox2" style="margin-top: 150px;">
                <div id="loginbox">
                   	    <form name="frmlog" method="post" action="book_login_process.jsp">
                    <div id="idlogbox">
                        id<input type="text" name="member_id" id="member_id"  placeholder="아이디">
                    </div>
                    <div id="pwlogbox">
                        pw<input  type="password" name="member_pw" id="member_pw" placeholder="비밀번호">
                    </div>
	                    <button id="logbutton">로그인</button>
	                    <a href="/human/main/book_join.jsp">회원가입</a>
    	                <a href="/human/main/book_logfind.jsp">아이디/비밀번호찾기</a>
        	   		    </form>
            	    </div>
                <div id="adverbox"></div>
            </div>
        </div>

        ${book_footer}
        </div>

</body>
</html>