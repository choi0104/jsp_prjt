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
    String member_pw = request.getParameter("member_pw");

    bookDTO dto = (bookDTO) session.getAttribute("member");
    bookDAO dao = new bookDAO();

    if (dto.getMember_id().equals(member_id) && dto.getMember_pw().equals(member_pw)) {
        try {
            dao.cancel(member_id, member_pw);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        session.invalidate();
        response.sendRedirect("/human/main/book_quit2.jsp");
    } else {
        response.sendRedirect("/human/main/book_quit.jsp");
    }
%>
