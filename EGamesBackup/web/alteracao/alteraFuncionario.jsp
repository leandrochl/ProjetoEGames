<%-- 
    Document   : alteraFuncionario
    Created on : Jun 11, 2016, 3:31:45 PM
    Author     : evio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Funcionário</title>
    </head>
    <body>
        <%
            String nomeFunc = request.getParameter("nomeFunc");
            if(nomeFunc == null || nomeFunc.equals("")){
                nomeFunc = "";
            }
            String enderecoFunc = request.getParameter("enderecoFunc");
            if(enderecoFunc == null || enderecoFunc.equals("")){
                enderecoFunc = "";
            }
            String emailFunc = request.getParameter("emailFunc");
            if(emailFunc == null || emailFunc.equals("")){
                emailFunc = "";
            }
            String senhaFunc = request.getParameter("senhaFunc");
            if(senhaFunc == null || senhaFunc.equals("")){
                senhaFunc = "";
            }
            String idTelefone = request.getParameter("idTelefone");
            if(idTelefone == null || idTelefone.equals("")){
                idTelefone = "";
            }
            String dataCadastro = request.getParameter("dataCadastro");
            if(dataCadastro == null || dataCadastro.equals("")){
                dataCadastro = "";
            }
            String cepFunc = request.getParameter("cepFunc");
            if(cepFunc == null || cepFunc.equals("")){
                cepFunc = "";
            }
            String rgFunc = request.getParameter("rgFunc");
            if(rgFunc == null || rgFunc.equals("")){
                rgFunc = "";
            }
            String cpfFunc = request.getParameter("cpfFunc");
            if(cpfFunc == null || cpfFunc.equals("")){
                cpfFunc = "";
            }
            String perAcesso = request.getParameter("perAcesso");
            if(perAcesso == null || perAcesso.equals("")){
                perAcesso = "";
            }
            String senhaFunc2="";
        %>
    <div><h2>Cadastro de Funcionarios</h2></div>
    <form action="crud/alteraFuncionarioCrud.jsp" method="get" name="form1" >
    <div>Nome: <input type="text" name="nomeFunc" value="<%=nomeFunc%>"/></div><p>
    <div>Endereço: <input type="text" name="enderecoFunc" value="<%=enderecoFunc%>" </div><p>
    <div>Email: <input type="text" name="emailFunc" value="<%=emailFunc%>"/></div><p>
    <div>CEP: <input type="text" name="cepFunc" value="<%=cepFunc%>"/></div><p>
    <div>RG: <input type="text" name="rgFunc" value="<%=rgFunc%>"/></div><p>
    <div>CPF: <input type="text" name="cpfFunc" value="<%=cpfFunc%>"/></div><p>
    <div>
       <!-- <input type="submit" name="crud" value="Sign In"/> -->
       <input type="submit" name="crud" value="Alterar" onclick="senhaFunc.equals(senhaFunc2)"/>
      <!--  <input type="submit" name="crud" value="Excluir"/>
        <input type="submit" name="crud" value="Pesquisar"/>
        <input type="reset" value="Limpar"/> -->
    </div>
    </form>
    </body>
</html>
