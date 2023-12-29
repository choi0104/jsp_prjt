<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
    alert("회원탈퇴가 완료되었습니다.")    
        window.location.href = "/human/main/book.jsp";
</script>
<%
// 기존의 세션객체에 저장된 내용을 초기화시킴: invalidate()
// HttpSession session = request.getSession();
session.invalidate();
// 메인 페이지로 이동
%>
