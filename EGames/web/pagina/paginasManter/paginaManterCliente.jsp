<%-- 
    Document   : pagunaFuncionario
    Created on : Jun 13, 2016, 11:47:55 AM
    Author     : evio
--%>

<%@page import="br.com.egames.Funcionario"%>
<%@page import="br.com.egames.FuncionarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   FuncionarioDAO fd = new FuncionarioDAO();
    Funcionario fun = new Funcionario();

    if (session.getAttribute("login") == null) {
        //request.getSession().invalidate();
        response.sendRedirect("../altenticacao/login.jsp");
    }
    fun = fd.buscaPorCPF(Long.parseLong(session.getAttribute("login").toString()));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bem Vindo | Página do Funcionário</title>
        <link rel="stylesheet" type="text/css" href="../../css/layout_geral.css">
        <link rel="stylesheet" type="text/css" href="../../css/menu_suspenso.css">
        <link rel="stylesheet" type="text/css" href="../../css/formatacao_form.css">

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

        <table width="100%">
        <td>
            <h1>BEM VINDO À SUA PÁGINA!! </h1>
        </td>
        <td>
            <img src="../../imagens/Botão-Desliga-em-png-queroiamgem-Ceiça-Crispim (1).png" height="80" width="65" align="right"/>
        </td>
    </table>

    <h3>Escolha uma ação</h3><p>
        <a href="../../cadastro/cliente.jsp"><img src="../../imagens/add1.png" height="80" width="80"/></a>     <!--Cliente-->
        <a href="../../listar/listarCliente.jsp"><img src="../../imagens/Data-List-icon.png" height="80" width="80"/></a> <p>
        <input type="button" value="Voltar" onClick="history.go(-1)"/>
</body>
</html>