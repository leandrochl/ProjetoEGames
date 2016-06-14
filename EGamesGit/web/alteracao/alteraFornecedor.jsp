<%-- 
    Document   : alteraFornecedor
    Created on : Jun 11, 2016, 3:25:30 PM
    Author     : evio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cadastro de Fornecedor</title>
</head>
<body>
    <%
            String nomeForn = request.getParameter("nomeForn");
            if(nomeForn == null || nomeForn.equals("")){
                nomeForn = "";
            }
            String enderecoForn = request.getParameter("enderecoForn");
            if(enderecoForn == null || enderecoForn.equals("")){
                enderecoForn = "";
            }
            String cnpjForn = request.getParameter("cnpjForn");
            if(cnpjForn == null || cnpjForn.equals("")){
                cnpjForn = "";
            }
           
            String idTelefone = request.getParameter("idTelefone");
            if(idTelefone == null || idTelefone.equals("")){
                idTelefone = "";
            }
            String cepForn = request.getParameter("cepForn");
            if(cepForn == null || cepForn.equals("")){
                cepForn = "";
            }
            
        %>
<div><h2>Cadastro de Fornecedores</h2></div>
<form action="crud/alteraFornecedorCrud.jsp" method="get" name="form1" >
    <div>Nome: <input type="text" name="nomeForn" value="<%=nomeForn%>"></div><p>
    <div>Endereço: <input type="text" name="enderecoForn" value="<%=enderecoForn%>"/> </div><p>
    <div>Telefone: <input type="text" name="idTelefone" value="<%=idTelefone%>"/></div><p>
    <div>CEP: <input type="text" name="cepFonr" value="<%=cepForn%>"/></div><p>
    <div>Cnpj: <input type="text" name="cnpjForn" value="<%=cnpjForn%>"/></div><p>
    <div>
       <!-- <input type="submit" name="crud" value="Sign In"/> -->
       <input type="submit" name="crud" value="Alterar" />
      <!--  <input type="submit" name="crud" value="Excluir"/>
        <input type="submit" name="crud" value="Pesquisar"/>
        <input type="reset" value="Limpar"/> -->
    </div>
    </form>
</body>
</html>