<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.invalidate();
%>

<script>
    alert("회원탈퇴가 완료되었습니다.")    
        window.location.href = "/human/Showsite/main/S_Main.jsp";
</script>
