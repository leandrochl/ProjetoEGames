<%-- 
    Document   : area_restrita
    Created on : 23/06/2016, 15:17:25
    Author     : Leandro
--%>
<%@page import="br.com.egames.Funcionario"%>
<%@page import="br.com.egames.FuncionarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bem Vindo | Página do Funcionário</title>
        <link rel="stylesheet" type="text/css" href="../css/layout_geral.css">
        <link rel="stylesheet" type="text/css" href="../css/menu_suspenso.css">
        <link rel="stylesheet" type="text/css" href="../css/formatacao_form_login.css">

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
<body>
<!--INICIO DA AREA DE LOGIN-->
<center>
    <p><p>
    <div>
        <h3>AREA RESTRITA</h3>
        <form action="../altenticacao/crud/loginCrud.jsp" method="Post" name="form1" >
            <p>Matricula  <input type="text" name="Cpf" value=""/></p>
            <p>Senha  <input type="password" name="senha" value=""/></p>
            <input type="submit" name="crud" value="Entrar" />
            <!--<input type="button" name="cadastro" value="CADASTRO" onclick="location.href='cadastro/cliente.jsp'"/>-->
        </form>
    </div>
</center>
<!--FIM DA AREA DE LOGIN-->
</body>

</body>
</html>
