<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% 
    session = request.getSession();
    MemberDTO dto = (MemberDTO)session.getAttribute("member");
    request.setAttribute("dto", dto);
 %>   
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>서블릿 테스트:회원정보 변경</title>
    <script type="text/javascript" src="../resources/js/update.js"></script>
    <link rel="stylesheet" href="../resources/css/join2.css">
</head>
<body>
<c:import var="header" url="header.jsp"/>
<c:import var="footer" url="footer.jsp"/>
    <div id="wrap">
        ${header}
    <div id="container">
        <div id="logo"></div>
	    <form name="frm_update" method="post" action="/human/memberUpdate">
	       <input type="hidden" name="m_idx" value="<%= dto.getM_idx() %>">
	        <table>
	            <tr>
	                <td><input type="text" name="member_id" id="member_id" value="<%= dto.getMember_id() %>" disabled></td>
	            </tr>
	            <tr>
	                <td><input type="text" name="member_pw" id="member_pw" value="<%= dto.getMember_pw() %>"></td>
	            </tr>
	            <tr>
	                <td><input type="text" name="member_name" id="member_name" value="<%= dto.getMember_name() %>"></td>
	            </tr>
	            <tr>
	                <td><input type="text" name="handphone" id="handphone" value="<%= dto.getHandphone() %>"></td>
	            </tr>
	            <tr>
	                <td><input type="email" name="email" id="email" value="<%= dto.getEmail() %>"></td>
	            </tr>
	            <tr>
	                <td><input type="submit" id="update_btn" value="변경하기"></td>
	            </tr>
	            <tr>
	            <%
	            String msg = null;
	            msg = (String)request.getAttribute("msg");
	            if(msg != null){ out.println("<span>"+msg+"</span>");}
	            %>
	            </tr>
	        </table>       
	    </form>
	</div>
	
	${footer}    
    </div>
</body>
</html>