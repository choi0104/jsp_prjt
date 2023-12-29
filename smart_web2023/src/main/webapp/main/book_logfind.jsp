<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
				<form id="frm_join" name="frm_join" method="post" action="book_logfind_process.jsp">
                <div id="loginbox">
                    <div id="idlogbox">
                        아이디<input type="text" id="idlog" name="member_id">
                    </div>
                    <div id="pwlogbox">
                        핸드폰번호<input type="text" id="handphone" name="handphone">
                    </div>
                    <button id="logbutton">찾기</button>
                </div>
                </form>
                <div id="adverbox"></div>
            </div>
        </div>
        ${book_footer}

        </div>

</body>
<script>
</script>
</html>