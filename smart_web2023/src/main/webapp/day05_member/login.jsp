<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>서블릿 테스트:로그인</title>
    <link rel="stylesheet" href="../resources/css/login2.css">
</head>
<body>
    <div id="wrap">
        
        <%@ include file="../common/header3.jsp" %>
        
    <div id="container">
        <div id="logo"></div>
	    <form name="frm_login" method="post" action="login_process.jsp">
	        <table>
	            <tr>
	                <td><input type="text" name="member_id" id="member_id" placeholder="아이디"></td>
	            </tr>
	            <tr>
	                <td><input type="password" name="member_pw" id="member_pw" placeholder="비밀번호"></td>
	            </tr>
	            <tr>
	                <td><input type="submit" id="login_btn" value="로 그 인"></td>
	            </tr>
	        </table>       
	    </form>
	</div>
	
	   <%@ include file="../common/footer.jsp" %>
    
    </div>
</body>
</html>