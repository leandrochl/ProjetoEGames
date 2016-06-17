<%-- 
    Document   : alteraFornecedorCrud
    Created on : Jun 11, 2016, 3:30:21 PM
    Author     : evio
--%>

<%@page import="java.util.Date"%>
<%@page import="br.com.egames.Fornecedor,br.com.egames.FornecedorDAO"%>
<%@page import="java.lang.*" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD para Fornecedor</title>
    </head>
    <body>
        <%
            
            String nomeForn = request.getParameter("nomeForn");
            if (nomeForn == null || nomeForn.equals("")) {
                nomeForn = "";
            }
            String enderecoForn = request.getParameter("enderecoForn");
            if (enderecoForn == null || enderecoForn.equals("")) {
                enderecoForn = "";
            }
           
           
            String cepForn = request.getParameter("cepForn");
            if (cepForn == null || cepForn.equals("")) {
                cepForn = "";
            }

            String crud = request.getParameter("crud");

            Fornecedor forn = new Fornecedor();
            FornecedorDAO fornd = new FornecedorDAO();
            
            forn = fornd.buscaPorNome(nomeForn);

            forn.setCepForn(cepForn);
            
            forn.setEnderecoForn(enderecoForn);
            forn.setNomeForn(nomeForn);
            

            if (crud.equals("Alterar")) {
                //Enviando o objeto para o banco
                out.print (fornd.alterar(forn));
            }

        %>
    </body>
</html>