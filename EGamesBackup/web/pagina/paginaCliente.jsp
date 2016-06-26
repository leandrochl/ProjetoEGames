<%-- 
    Document   : paginaCliente
    Created on : Jun 13, 2016, 11:47:42 AM
    Author     : evio
--%>
<%@page import="br.com.egames.Pedido"%>
<%@page import="br.com.egames.Cliente"%>
<%@page import="br.com.egames.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <%
            ClienteDAO cd = new ClienteDAO();
            Cliente cli = new Cliente();
            Pedido pe = new Pedido();
            
             if (session.getAttribute("login") == null) {
                //request.getSession().invalidate();
                response.sendRedirect("../altenticacao/login.jsp");
            }
                 cli = cd.buscaPorCPF(session.getAttribute("login").toString());
               
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bem Vindo | Página do Cliente</title>
        <link rel="stylesheet" type="text/css" href="../css/layout_geral.css">
        <link rel="stylesheet" type="text/css" href="../css/menu_suspenso.css">
        
                 <!-- Menu Suspenso -->
        <div id='cssmenu'>
            <ul>
                <li class='active'><a href='../index.html'><span>Início</span></a></li>
                <li><a href='paginaCliente.jsp'><span>MINHA PÁGINA</span></a></li>
                <li><a href='atencao_cliente.php'><span>Faça o seu pedido</span></a></li>
                <li><a href='quem_somos.php'><span>Quem somos</span></a></li>
                <li><a href='deixe_sua_opiniao.php'><span>Deixa a sua opinião</span></a></li>
                <li><a href='localizacao.html'><span>Como chegar</span></a></li>
            </ul>
        </div>
        <!--FIM DO MENU SUSPENSO -->
    </head>
    <body>
        
        <h1>BEM VINDO À SUA PÁGINA!! </h1>
        <h3>Aqui você poderá alterar os seus dados cadastrais, verificar as compras realizadas e em andamento
        <div><a href="../alteracao/alteraCliente.jsp"><img class="thumb" src="../imagens/alterar2.png" width="100" height="100"  alt=""/></a></div> 
    </body>
</html>
