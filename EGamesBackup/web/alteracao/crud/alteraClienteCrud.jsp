<%-- 
    Document   : alteraClienteCrud
    Created on : Jun 10, 2016, 11:28:28 AM
    Author     : evio
--%>

<%@page import="br.com.egames.TelefoneDAO"%>
<%@page import="br.com.egames.Telefone"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.egames.Cliente,br.com.egames.ClienteDAO"%>
<%@page import="java.lang.*" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>funciona droga</title>
    </head>
    <body>
        <%
            //Pegando parâmetro do formulário carg
            Cliente cli = new Cliente();
            ClienteDAO cd = new ClienteDAO();
    //   Telefone tel = new Telefone();
            // TelefoneDAO teld = new TelefoneDAO();

            cli = cd.buscaPorCPF(session.getAttribute("login").toString());

            String nomeCliente = request.getParameter("nomeCliente");
            if (nomeCliente == null || nomeCliente.equals("")) {
                nomeCliente = "";
            }
            String enderecoCliente = request.getParameter("enderecoCliente");
            if (enderecoCliente == null || enderecoCliente.equals("")) {
                enderecoCliente = "";
            }
            String emailCliente = request.getParameter("emailCliente");
            if (emailCliente == null || emailCliente.equals("")) {
                emailCliente = "";
            }

            String cepCliente = request.getParameter("cepCliente");
            if (cepCliente == null || cepCliente.equals("")) {
                cepCliente = "0";
            }
            String rgCliente = request.getParameter("rgCliente");
            if (rgCliente == null || rgCliente.equals("")) {
                rgCliente = "0";
            }

            String crud = request.getParameter("crud");

            cli.setCepCliente(cepCliente);

            cli.setEmailCliente(emailCliente);
            cli.setEnderecoCliente(enderecoCliente);

            cli.setNomeCliente(nomeCliente);

            cli.setRgCliente(rgCliente);

            if (crud.equals("Alterar")) {
               
                out.print(cd.alterar(cli));
            }
        %>
    </body>
</html>
