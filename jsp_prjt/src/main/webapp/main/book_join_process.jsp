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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");

    String member_id = request.getParameter("member_id");
    String member_pw = request.getParameter("member_pw");
    String member_name = request.getParameter("member_name");
    String handphone = request.getParameter("handphone");
    String email = request.getParameter("email");

    bookDTO dto = new bookDTO();
    dto.setMember_id(member_id);
    dto.setMember_pw(member_pw);
    dto.setMember_name(member_name);
    dto.setHandphone(handphone);
    dto.setEmail(email);
    bookDAO dao = new bookDAO();
    int result = 0;

    try {
        result = dao.join(dto);
    } catch (SQLException e) {
        e.printStackTrace();
    }
    if (result == 1) {
        try {
            dto = dao.login(member_id, member_pw);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        session.setAttribute("member", dto);
        response.sendRedirect("/human/main/book.jsp");
    } else {
        response.sendRedirect("/human/main/book_join.jsp");
    }
%>
