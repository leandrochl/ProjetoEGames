<%-- 
    Document   : funcionario
    Created on : Jun 10, 2016, 7:00:01 AM
    Author     : evio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Funcionário</title>
    </head>
    <body>

    <div><h2>Cadastro de Funcionarios</h2></div>
    <form action="crud/clienteCrud.jsp" method="get" name="form1" >
    <div>Nome: <input type="text" name="nomeFunc" value=""></div><p>
    <div>Endereço: <input type="text" name="enderecoFunc" value="" </div><p>
    <div>Email: <input type="text" name="emailFunc" value=""</div><p>
    <div>Senha: <input type="text" name="senhaFunc" value=""</div><p>
    <div>Repita a senha: <input type="text" name="senhaFunc2" value=""</div><p>
    <div>Telefone: <input type="text" name="idTelefone" value=""</div><p>
    <div>CEP: <input type="text" name="cepFunc" value=""</div><p>
    <div>RG: <input type="text" name="rgFunc" value=""</div><p>
    <div>CPF: <input type="text" name="cpfFunc" value=""</div><p>
    <div>
       <!-- <input type="submit" name="crud" value="Sign In"/> -->
       <input type="submit" name="crud" value="Cadastrar" onclick="senhaFunc.equals(senhaFunc2)"/>
      <!--  <input type="submit" name="crud" value="Excluir"/>
        <input type="submit" name="crud" value="Pesquisar"/>
        <input type="reset" value="Limpar"/> -->
    </div>
    </form>
    </body>
</html>
