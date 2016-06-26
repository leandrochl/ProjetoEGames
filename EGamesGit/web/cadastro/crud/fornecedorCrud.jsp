<%-- 
    Document   : fornecedorCrud
    Created on : Jun 8, 2016, 10:22:40 AM
    Author     : evio
--%>

<%@page import="br.com.egames.TelefoneDAO"%>
<%@page import="br.com.egames.Telefone"%>
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
            String nomeForn = request.getParameter("nome");
            if (nomeForn == null || nomeForn.equals("")) {
                nomeForn = "";
            }
            String enderecoForn = request.getParameter("endereco");
            if (enderecoForn == null || enderecoForn.equals("")) {
                enderecoForn = "";
            }
            
            String senhaForn = request.getParameter("senha");
            if (senhaForn == null || senhaForn.equals("")) {
                senhaForn = "";
            }
            
            String telefone1 = request.getParameter("telefone1");
            if (telefone1 == null || telefone1.equals("")) {
                telefone1 = "";
            }
            
            
            String telefone2 = request.getParameter("telefone2");
            if (telefone2 == null || telefone2.equals("")) {
                telefone2 = "";
            }
            
            String telefone3 = request.getParameter("telefone3");
            if (telefone3 == null || telefone3.equals("")) {
                telefone3 = "";
            }
            
            String cnpjForn = request.getParameter("cnpj");
            if (cnpjForn == null || cnpjForn.equals("")) {
                cnpjForn = "";
            }
           
            String idTelefone ;
            
            String cepForn = request.getParameter("cep");
            if (cepForn == null || cepForn.equals("")) {
                cepForn = "";
            }
            String emailForn = request.getParameter("email");
            if (emailForn == null || emailForn.equals("")) {
                emailForn = "";
            }


            String crud = request.getParameter("crud");

            Fornecedor forn = new Fornecedor();
            FornecedorDAO fornd = new FornecedorDAO();
            Telefone tel = new Telefone();
            TelefoneDAO teld = new TelefoneDAO();

            forn.setCepForn(cepForn);
            forn.setCnpjForn(cnpjForn);
            forn.setEnderecoForn(enderecoForn);
            forn.setNomeForn(nomeForn);
            forn.setEmailForn(emailForn);
            
            
            tel.setIdFornecedor(forn.getCnpjForn());
            tel.setTelefone1(telefone1);
            tel.setTelefone2(telefone2);
            tel.setTelefone3(telefone3);
           
            if (crud.equals("Cadastrar")) {
                //Enviando o objeto para o banco
                
                out.print (fornd.inserir(forn));
                out.print(teld.inserirFornecedor(tel));
            }

        %>
    </body>
</html>
