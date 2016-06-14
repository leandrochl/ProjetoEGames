<%-- 
    Document   : fornecedorCrud
    Created on : Jun 8, 2016, 10:22:40 AM
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
            String cnpjForn = request.getParameter("cnpjForn");
            if (cnpjForn == null || cnpjForn.equals("")) {
                cnpjForn = "";
            }
           
            String idTelefone = request.getParameter("idTelefone");
            if (idTelefone == null || idTelefone.equals("")) {
                idTelefone = "";
            }
            String cepForn = request.getParameter("cepForn");
            if (cepForn == null || cepForn.equals("")) {
                cepForn = "";
            }

            String crud = request.getParameter("crud");

            Fornecedor forn = new Fornecedor();
            FornecedorDAO fornd = new FornecedorDAO();

            forn.setCepForn(cepForn);
            forn.setCnpjForn(cnpjForn);
            forn.setEnderecoForn(enderecoForn);
            forn.setNomeForn(nomeForn);
            forn.setIdTelefone(idTelefone);

            if (crud.equals("Cadastrar")) {
                //Enviando o objeto para o banco
                out.print(fornd.inserir(forn));
            }

        %>
    </body>
</html>
