<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>서블릿 테스트:회원가입</title>
    <script type="text/javascript" src="../resources/js/join.js"></script>
    <link rel="stylesheet" href="../resources/css/join.css">
</head>
<body>
    <div id="container">
        <div id="logo"></div>
	    <form name="frm_join" method="post" action="/human/joinservlet">
	        <table>
	            <tr>
	                <td><input type="text" name="member_id" id="member_id" placeholder="아이디"></td>
	            </tr>
	            <tr>
	                <td><input type="password" name="member_pw" id="member_pw" placeholder="비밀번호"></td>
	            </tr>
	            <tr>
	                <td><input type="text" name="member_name" id="member_name" placeholder="이름"></td>
	            </tr>
	            <tr>
	                <td><input type="text" name="handphone" id="handphone" placeholder="핸드폰"></td>
	            </tr>
	            <tr>
	                <td><input type="email" name="email" id="email" placeholder="이메일"></td>
	            </tr>
	            <tr>
	                <td><input type="submit" id="join_btn" value="가입하기"></td>
	            </tr>
	        </table>       
	    </form>
	</div>
</body>
</html>