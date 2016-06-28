<%-- 
    Document   : index
    Created on : Jun 23, 2016, 11:48:42 AM
    Author     : evio
--%>
<%@page import="br.com.egames.Pedido"%>
<%
    Pedido pe = new Pedido();
    if(session.getAttribute("carrinho")==null){
        session.setAttribute("carrinho", pe);
    }

%>
<html>
    <head>
        <meta charset="utf-8">
        <title>Página inicial | EGames | O Lugar do Gamer na Internet</title>
        <link rel="stylesheet" type="text/css" href="css/layout_index.css">
        <link rel="stylesheet" type="text/css" href="css/menu_suspenso.css">
        <link rel="stylesheet" type="text/css" href="css/formatacao_form_login.css">
        <!--<link rel="stylesheet" type="text/css" href="css/imagem_cabecalho_index.css">-->
        

    <body>
    <center><img class="thumb" src="imagens/imagem_cabecalho_index.png" width="70%" height="20%"  alt=""/></center>
        <!-- Menu Suspenso -->
        <div id='cssmenu'>
            <ul>
                <li class='active'><a href='index.html'><span>Início</span></a></li>
                <li><a href='cadastro/cliente.jsp'><span>Cadastro</span></a></li>
                <li><a href='atencao_cliente.php'><span>Faça o seu pedido</span></a></li>
                <li><a href='quem_somos.php'><span>Quem somos</span></a></li>
                <li><a href='deixe_sua_opiniao.php'><span>Deixa a sua opinião</span></a></li>
                <!-- link de teste para cadastro de funcionario-->
                <li><a href='pagina/testes.jsp'><span>Area Restrita</span></a></li>
            </ul>
        </div>
        <!--FIM DO MENU SUSPENSO -->
    <div1>BEM VINDO AO EGAMES <p>O LOCAL DO GAMER NA INTERNET</p></div1>
    <hr color="#6F83B6">
    <!--INICIO DA AREA DE LOGIN-->
    <div>
        <h3>Log in</h3>
        <form action="altenticacao/crud/loginCrud.jsp" method="Post" name="form1" >
            <p>CPF  <input type="text" name="Cpf" value=""/></p>
            <p>Senha  <input type="password" name="senha" value=""/></p>
            <input type="submit" name="crud" value="Entrar" />
            <input type="button" name="cadastro" value="CADASTRO" onclick="location.href='cadastro/cliente.jsp'"/>
        </form>

    </div>
        
 
<!--FIM DA AREA DE LOGIN-->
<!-- Imagens das seções-->
<form action ="listar/listarProduto.jsp?categoria=jogos" method="post">
<table width="100%" border="0" cellspacing="2" cellpadding="2">
    <tr>
        <td><p align="left"><a href="listar/listarBaixoEstoque.jsp" title="Ofertas"><img class="thumb" src="imagens/OFERTA-ESPECIAL-12-300x270.png" width="20%" height="20%"  alt=""/></a></p></td>
    </tr>
    <tr>
        <td><p align="left"><a href="listar/listarProduto.jsp?categoria=jogos" title="Jogos em Mídia Física"><img class="thumb" src="imagens/index_midia_fisica.png" width="20%" height="20%"  alt=""/></a></p></td>
    </tr>
    <tr>
        <td><p align="left"><a href="" title="Consoles"><img class="thumb" src="imagens/index_consoles.png" width="20%" height="20%"  alt=""/></a></p></td>
    </tr>
    <tr>
        <td><p align="left"><a href="" title="Hardware"><img class="thumb" src="imagens/index_hardware.png" width="20%" height="20%"  alt=""/></a></p></td>
    </tr>
    <tr>
        <td><p align="left"><a href="" title="Computadores"><img class="thumb" src="imagens/index_computadores.png" width="20%" height="20%"  alt=""/></a></p></td>
    </tr>
    <tr>
        <td><p align="left"><a href="" title="Periféricos"><img class="thumb" src="imagens/index_perifericos.png" width="20%" height="20%"  alt=""/></a></p></td>     
    </tr>
    <tr>
        <td><p align="left"><a href="" title="Smartphones"><img class="thumb" src="imagens/index_smartphone.png" width="20%" height="20%"  alt=""/></a></p></td>
    </tr>
    <tr>
        <td><p align="left"><a href="listar/listarProduto.jsp" title="Mesas e Cadeiras Gamer"><img class="thumb" src="imagens/index_mesas_cadeiras.png" width="20%" height="20%"  alt=""/></a></p></td>
    </tr>
</table>
</form>    
<hr color="#6F83B6">


<!-- início do rodapé -->
<center>
    <font color="#000000"> 
    Todos os direitos reservados - 2016 <br>
    EGames - Loja de Jogos e Artigos Gamer - (61) 3789 7789<br>
    Projeto elaborado por Evio Fragoso Ferreira Júnior e Leandro Chaves da Silva
    </font>
</center>
<!-- Fim do Rodapé -->

</body>
</html>
