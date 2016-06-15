<%-- 
    Document   : pagunaFuncionario
    Created on : Jun 13, 2016, 11:47:55 AM
    Author     : evio
--%>

<%@page import="br.com.egames.Funcionario"%>
<%@page import="br.com.egames.FuncionarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
            FuncionarioDAO fd = new FuncionarioDAO();
            Funcionario fun = new Funcionario();
            
             if (session.getAttribute("login") == null) {
                //request.getSession().invalidate();
                response.sendRedirect("../altenticacao/login.jsp");
            }
                 fun = fd.buscaPorCPF(Long.parseLong(session.getAttribute("login").toString()));
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
