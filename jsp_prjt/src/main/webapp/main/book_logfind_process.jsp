<%@ page import="booklog.bookDTO" %>
<%@ page import="booklog.bookDAO" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    request.setCharacterEncoding("UTF-8");

    String member_id = request.getParameter("member_id");
    String handphone = request.getParameter("handphone");
    bookDTO dto = null;
    bookDAO dao = new bookDAO();

    try {
        dto = dao.logfind(member_id, handphone);
    } catch (SQLException e) {
        e.printStackTrace();
    }

    if (dto != null && dto.getCancel_or_not() == 0) {
        session.setAttribute("member", dto);
        response.sendRedirect("/human/main/book_findresult.jsp");
    } else {
        response.sendRedirect("/human/main/book_logfind.jsp");
    }
%>
