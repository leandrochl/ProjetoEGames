<%-- 
    Document   : logout
    Created on : Jun 11, 2016, 6:20:15 PM
    Author     : evio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("../index.html");

%>