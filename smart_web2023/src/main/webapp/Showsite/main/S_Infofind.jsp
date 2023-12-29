<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/S_Join.css">
</head>
<body>
<c:import var="S_Header" url="S_Header.jsp"/>
<c:import var="S_Footer" url="S_Footer.jsp"/>
	${S_Header}
        <div id="line"></div>
        <div id="firstbox">
            <div id="firstbox2" style="margin-top: 150px;">
				<form id="frm_join" name="frm_join" method="post" action="/human/ShowFind">
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
        ${S_Footer}
</body>
<script>
</script>
</html>