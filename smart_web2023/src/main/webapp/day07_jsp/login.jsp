<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP 회원가입</title>
    <link rel="stylesheet" href="../resources/css/login2.css">
</head>
<body>
    <div id="wrap">
    <!-- include지시자: 현재 JSP페이지에 다른 페이지를 포함시키고자 할 때 정의해서 사용 -->
    <%@ include file="../common/header3.jsp" %>

    <div id="container">
        <div id="logo"></div>
        <!-- 회원가입정보를 서블릿에서 처리하도록 한 것을 jsp에서 처리하도록 변경함
        	현재 폴더에 있는 join_process.jsp에서 회원정보를 처리하도록 함 -->
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
	            <tr>
	            	<td>
		            <%
		            String msg = (String)request.getAttribute("msg");
		            //setAttribute(String name, object value): 속성으로 값을 추가할 때 object타입으로 자동변형환됨
		            //getAttribute(String name): object - 반환값을 원하는 데이터형으로 강제타입변환해줭야함
		            if(msg != null){
		            	out.print(msg);
		            }
	    	        %>
	        	    </td>	            	
	            </tr>
	        </table>       
	    </form>
	</div>
	
	   <%@ include file="../common/footer.jsp" %>
    
    </div>
</body>
</html>