<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <%@ page import="booklog.bookDTO" %>
<html>
	<% session = request.getSession();
	bookDTO dto = (bookDTO)session.getAttribute("member"); %>

<head>
    <title>My Page</title>
</head>
<script>
alert(" <%= dto.getMember_id() %>")
</script>
<body>
    <!-- JSP에서 변수 가져오기 -->
	<p>아이디 : <%= dto.getMember_id() %></p>
	<p>패스워드 : <%= dto.getMember_pw() %><p>
	<%session.invalidate();%>
    <a href="/human/main/book.jsp">홈으로</a>

</body>
</html>
