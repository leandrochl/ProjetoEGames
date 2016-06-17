<%-- 
    Document   : listagemAtelra[
    Created on : Jun 17, 2016, 12:19:25 PM
    Author     : evio
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="br.com.egames.Fornecedor"%>
<%@page import="br.com.egames.FornecedorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração dos Dados | Página do Cliente</title>
        <link rel="stylesheet" type="text/css" href="../css/layout_geral.css">
        <link rel="stylesheet" type="text/css" href="../../css/menu_suspenso.css">
        <link rel="stylesheet" type="text/css" href="../../css/formatacao_form.css">
                 <!-- Menu Suspenso -->
        <div id='cssmenu'>
            <ul>
                <li class='active'><a href='../../index.html'><span>Início</span></a></li>
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
     <form action="../alteracao/alteraFornecedor.jsp" method="post">   
     <select name="valor_selecionado" value=" select...">
        <%

           
            FornecedorDAO fd = new FornecedorDAO();
            List<Fornecedor> f = new ArrayList();
          
            
            if (session.getAttribute("login") == null) {
               
                response.sendRedirect("../altenticacao/login.jsp");
            }
           
           f = fd.listarTodos();
           for(Fornecedor OBJForn : f ){
           %>
           
           <option value="<%=OBJForn.getCnpjForn()%>"> <%=OBJForn.getNomeForn()%></option>
           
           <%
         }
        %>
    </select>
    
            <div>
                  
                <input type="submit" name="crud" value="Alterar" />
                <input type="submit" name="crud" value="Deletar" />
                <input type="button" name="voltar" value="Voltar" onclick="history.go(-1)" />
               
            </div>
    </form>   
    </body>
</html>
