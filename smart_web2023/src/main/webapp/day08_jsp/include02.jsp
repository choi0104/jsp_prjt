<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
   //include_actiontag.jsp 페이지에서 가져오는 request객체의 nickname속성
   String nickname = (String)request.getAttribute("nickname");

   //현재 페이지에 정의한 변수 member_id
   String member_id = "hong";
   
   out.print("<h3>"+member_id+"의 닉네임 : "+nickname);

%>
</body>
</html>