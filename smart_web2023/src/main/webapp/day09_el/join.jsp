<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP 회원가입</title>
    <script type="text/javascript" src="../resources/js/join.js"></script>
    <link rel="stylesheet" href="../resources/css/join.css">
</head>
<body>
    <div id="wrap">
    <!-- include지시자: 현재 JSP페이지에 다른 페이지를 포함시키고자 할 때 정의해서 사용  -->    
    <%@ include file="../common/header3.jsp" %>
        
    <div id="container">
        <div id="logo"></div>
        <!-- 회원가입정보를 서블릿에서 처리하도록 한 것을 jsp에서 처리하도록 변경함
             현재 폴더에 있는 join_process.jsp에서 회원정보를 처리하도록 함
         -->
	    <form name="frm_join" method="post" action="join_process2.jsp">
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
	
	<%@ include file="../common/footer.jsp" %>
	
	</div>
</body>
</html>