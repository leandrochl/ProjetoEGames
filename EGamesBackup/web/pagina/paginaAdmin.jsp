<%-- 
    Document   : paginaAdmin
    Created on : Jun 15, 2016, 9:17:08 AM
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
        <title>ADMINISTRADOR</title>
        <link rel="stylesheet" type="text/css" href="../css/layout_geral.css">
        <link rel="stylesheet" type="text/css" href="../css/menu_suspenso.css">
        <!-- MENU SUSPENSO -->
    <div id='cssmenu'>
        <ul>
            <li class='active'><a href='../index.html'><span>Início</span></a></li>
            <li><a href='paginaAdmin.jsp'><span>MINHA PÁGINA</span></a></li>
            <li><a href='quem_somos.php'><span>Quem somos</span></a></li>
            <li><a href='deixe_sua_opiniao.php'><span>Deixa a sua opinião</span></a></li>
        </ul>
    </div>
    <!--FIM DO MENU SUSPENSO -->
</head>
<body>
    <table width="100%">
        <td>
            <h1>PÁGINA INICIAL - BEM VINDO À SUA PÁGINA!! </h1>
        </td>
        <td>
            <img src="../imagens/Botão-Desliga-em-png-queroiamgem-Ceiça-Crispim (1).png" height="80" width="65" align="right"/>
        </td>
    </table>
    <h3>Aqui você poderá executar ações de cadastro, alteração, exclusão e listagem das entidades abaixo se assim a sua permissão de funcionário permitir</h3>
    <h3>Escolha uma das opções abaixo</h3><p>
        <a href="paginasManter/paginaManterCliente.jsp"><img src="../imagens/cliente2.png" height="128" width="128"/></a>           <!--Cliente-->
        <a href="paginasManter/paginaManterFuncionario.jsp"><img src="../imagens/funcionario2.png" height="128"/></a>               <!--Funcionário-->
        <a href="paginasManter/paginaManterTransportadora.jsp"><img src="../imagens/63_128x128.png" height="128" width="128"/></a>  <!--Transportadora-->
        <a href="paginasManter/paginaManterProduto.jsp"><img src="../imagens/produto.png" height="128" width="128"/></a>            <!--Produto-->
        <a href="paginasManter/paginaManterFornecedor.jsp"><img src="../imagens/NknoBaE.png" height="128" width="128"/></a>         <!--Fornecedor-->

</body>
</html>
