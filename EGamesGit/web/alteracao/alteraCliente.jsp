<%-- 
    Document   : alteraCliente
    Created on : Jun 10, 2016, 6:55:11 AM
    Author     : evio
--%>

<%@page import="br.com.egames.ClienteDAO"%>
<%@page import="br.com.egames.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração dos Dados | Página do Cliente</title>
                <link rel="stylesheet" type="text/css" href="../css/layout_geral.css">
        <link rel="stylesheet" type="text/css" href="../css/menu_suspenso.css">
        <link rel="stylesheet" type="text/css" href="../css/formatacao_form.css">
                 <!-- Menu Suspenso -->
        <div id='cssmenu'>
            <ul>
                <li class='active'><a href='index.html'><span>Início</span></a></li>
                <li><a href='../pagina/paginaCliente.jsp'><span>MINHA PÁGINA</span></a></li>
                <li><a href='atencao_cliente.php'><span>Faça o seu pedido</span></a></li>
                <li><a href='quem_somos.php'><span>Quem somos</span></a></li>
                <li><a href='deixe_sua_opiniao.php'><span>Deixa a sua opinião</span></a></li>
                <li><a href='localizacao.html'><span>Como chegar</span></a></li>
            </ul>
        </div>
        <!--FIM DO MENU SUSPENSO -->
    </head>
    <body>
        <%

            // teminar session.getAttribute(name)
            ClienteDAO cd = new ClienteDAO();
            Cliente cli = new Cliente();

            if (session.getAttribute("login") == null) {
                //request.getSession().invalidate();
                response.sendRedirect("../altenticacao/login.jsp");
            }else{
                 cli = cd.buscaPorCPF(Long.parseLong(session.getAttribute("login").toString()));
                
                //if (cli.getPerAcesso() != 1) {
                   // session.invalidate();
                  //  response.sendRedirect("../altenticacao/login.jsp");

                //}
            }
            String nomeCliente = cli.getNomeCliente();
            if (nomeCliente == null || nomeCliente.equals("")) {
                nomeCliente = "";
            }
            String enderecoCliente = cli.getEnderecoCliente();
            if (enderecoCliente == null || enderecoCliente.equals("")) {
                enderecoCliente = "";
            }
            String emailCliente = cli.getEmailCliente();
            if (emailCliente == null || emailCliente.equals("")) {
                emailCliente = "";
            }

            Integer cepCliente = cli.getCepCliente();
            if (cepCliente == null) {
                cepCliente = 0;
            }
            Integer rgCliente = cli.getRgCliente();
            if (rgCliente == null) {
                rgCliente = 0;
            }
            
             
             //  if(cli.getPerAcesso()!=1){
               //    response.sendRedirect("../altenticacao/login.jsp");
               
            

            // cli = cd.buscaPorCPF(Long.parseLong(session.getAttribute("login").toString()));
          

               
        %>
        <div><h2>Alteração dos Dados</h2></div>
        <form action="crud/alteraClienteCrud.jsp" method="post" name="form1" >
            <div>Nome: <input type="text" name="nomeCliente" value="<%=nomeCliente%>"/></div><p>
            <div>Endereço: <input type="text" name="enderecoCliente" value="<%=enderecoCliente%>"/> </div><p>
            <div>Email: <input type="text" name="emailCliente" value="<%=emailCliente%>"/></div><p>   

            <div>CEP: <input type="text" name="cepCliente" value="<%=cepCliente%>"/></div><p>
            <div>RG: <input type="text" name="rgCliente" value="<%=rgCliente%>"/></div><p>

            <div>
                <!-- <input type="submit" name="crud" value="Sign In"/> -->
                <input type="submit" name="crud" value="Alterar" />
                <input type="button" name="voltar" value="Voltar" onclick="history.go(-1)" />
                <!--  <input type="submit" name="crud" value="Excluir"/>
                  <input type="submit" name="crud" value="Pesquisar"/>
                  <input type="reset" value="Limpar"/> -->
            </div>
        </form>
    </body>
</html>