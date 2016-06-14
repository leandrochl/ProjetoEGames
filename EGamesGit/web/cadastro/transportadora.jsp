<%-- 
    Document   : Transportadora
    Created on : Jun 8, 2016, 9:28:28 AM
    Author     : evio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Transportadora</title>
    </head>
    <body>
       
        <div><h2>Cadastro de Transportadora</h2></div>
<form action="crud/transportadoraCrud.jsp" method="get" name="form1" >
    <div>Nome: <input type="text" name="nomeTrans" value=""/></div><p>
    <div>Endereço: <input type="text" name="enderecoTrans" value=""/> </div><p>
    <div>Telefone: <input type="text" name="idTelefone" value=""/></div><p>
    <div>Cnpj: <input type="text" name="cnpjTrans" value=""/></div><p>
 <!--   <div>CEP: <input type="text" name="cep" value="//cepForn"</div><p> -->
 
    <div>
       <!-- <input type="submit" name="crud" value="Sign In"/> -->
       <input type="submit" name="crud" value="Cadastrar" />
      <!--  <input type="submit" name="crud" value="Excluir"/>
        <input type="submit" name="crud" value="Pesquisar"/>
        <input type="reset" value="Limpar"/> -->
      </form>
    </div>
    </body>
</html>
