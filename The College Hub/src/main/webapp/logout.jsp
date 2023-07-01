<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.*" %>
<%
    HttpSession Session = request.getSession();
    Session.invalidate(); // Invalidate the session
    response.sendRedirect("login.jsp"); // Redirect to login page after logout
%>
