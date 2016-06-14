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
        <%
            String nomeTrans = request.getParameter("nomeTrans");
            if(nomeTrans == null || nomeTrans.equals("")){
                nomeTrans = "";
            }
            String enderecoTrans = request.getParameter("enderecoTrans");
            if(enderecoTrans == null || enderecoTrans.equals("")){
                enderecoTrans = "";
            }
            String cnpjTrans = request.getParameter("cnpjTrans");
            if(cnpjTrans == null || cnpjTrans.equals("")){
                cnpjTrans = "";
            }
          
            String idTelefone = request.getParameter("idTelefone");
            if(idTelefone == null || idTelefone.equals("")){
                idTelefone = "";
            }
            
            String emailTrans = request.getParameter("emailTrans");
            if(emailTrans == null || emailTrans.equals("")){
                emailTrans = "";
            }
          /*  String cepTrans = request.getParameter("cepTrans");
            if(cepTrans == null || cepTrans.equals("")){
                cepTrans = "";
            }
            */
        %>
        <div><h2>Cadastro de Transportadora</h2></div>
<form action="crud/transportadoraCrud.jsp" method="get" name="form1" >
    <div>Nome: <input type="text" name="nome" value="<%=nomeTrans%>"></div><p>
    <div>Endereço: <input type="text" name="endereco" value="<%=enderecoTrans%>" </div><p>
    <div>Telefone: <input type="text" name="telefone" value="<%=idTelefone%>"</div><p>
    <div>Cnpj: <input type="text" name="cnpj" value="<%=cnpjTrans%>"</div><p>
 <!--   <div>CEP: <input type="text" name="cep" value="//cepForn"</div><p> -->
    <div>
       <!-- <input type="submit" name="crud" value="Sign In"/> -->
       <input type="submit" name="crud" value="Cadastrar" />
      <!--  <input type="submit" name="crud" value="Excluir"/>
        <input type="submit" name="crud" value="Pesquisar"/>
        <input type="reset" value="Limpar"/> -->
    </div>
    </body>
</html>
