<%-- 
    Document   : paginaCliente
    Created on : Jun 13, 2016, 11:47:42 AM
    Author     : evio
--%>

<%@page import="br.com.egames.Cliente"%>
<%@page import="br.com.egames.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ClienteDAO cd = new ClienteDAO();
            Cliente cli = new Cliente();
            cli = cd.buscaPorCPF(Long.parseLong(session.getAttribute("login").toString()));

           /* if (cli.getPerAcesso() != 1 || cli == null) {
                session.invalidate();
                response.sendRedirect("../altenticacao/login.jsp");
            }*/
        %>
        <h1>Hello World!</h1>
        <div><a href="../alteracao/alteraCliente.jsp">Alterar Cliente</a></div> 
    </body>
</html>
