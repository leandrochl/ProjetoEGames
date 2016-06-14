<%-- 
    Document   : fornecedor
    Created on : Jun 8, 2016, 9:28:28 AM
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

<div><h2>Cadastro de Fornecedores</h2></div>
<form action="crud/fornecedorCrud.jsp" method="get" name="form1" >
    <div>Nome: <input type="text" name="nomeForn" value=""/></div><p>
    <div>Endereço: <input type="text" name="enderecoForn" value=""/> </div><p>
    <div>Telefone: <input type="text" name="idTelefone" value=""/></div><p>
    <div>CEP: <input type="text" name="cepFonr" value=""/></div><p>
    <div>Cnpj: <input type="text" name="cnpjForn" value=""/></div><p>
    <div>
       <!-- <input type="submit" name="crud" value="Sign In"/> -->
       <input type="submit" name="crud" value="Cadastrar" />
      <!--  <input type="submit" name="crud" value="Excluir"/>
        <input type="submit" name="crud" value="Pesquisar"/>
        <input type="reset" value="Limpar"/> -->
    </div>
    </form>
    </body>
</html>