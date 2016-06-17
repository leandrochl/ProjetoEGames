<%-- 
    Document   : produto
    Created on : Jun 8, 2016, 2:59:36 PM
    Author     : evio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Página inicial | EGames | O Lugar do Gamer na Internet</title>
        <link rel="stylesheet" type="text/css" href="../css/layout_geral.css">
        <link rel="stylesheet" type="text/css" href="../css/menu_suspenso.css">
        <link rel="stylesheet" type="text/css" href="../css/formatacao_form.css">
    </head>

    <body>
        <!-- Menu Suspenso -->
        <div id='cssmenu'>
            <ul>
                <li class='active'><a href='../index.html'><span>Início</span></a></li>
                <li><a href='cadastro/cliente.jsp'><span>Cadastro</span></a></li>
                <li><a href='atencao_cliente.php'><span>Faça o seu pedido</span></a></li>
                <li><a href='quem_somos.php'><span>Quem somos</span></a></li>
                <li><a href='deixe_sua_opiniao.php'><span>Deixa a sua opinião</span></a></li>
                <li><a href='localizacao.html'><span>Como chegar</span></a></li>
            </ul>
        </div>
        <!--FIM DO MENU SUSPENSO -->
        
    <center><div><h1>Seu Cadastro</h1><p><h3>Você precisa se cadastrar para comprar os nossos produtos</h3></p></div></center>

    <form name="form_cadastro_produto" action="crud/produtoCrud.jsp" method="post" name="form1" >
        &emsp;
        <div>
            <label for="fname">Descrição:&emsp;</label><input type="text" name="descricao" value="Descricao">
            <p><label for="lname">Preco:&emsp;</label><input type="text" name="preco" value="Preço"></p>
            <p><label for="lname">Quantidade inicial:&emsp;</label><input type="text" name="qtdeEstoque" value="Quantidade"></p>
            <p><label for="lname">Imagem:</label><label for="lname">&emsp;</label><input type="file" name="imagem"  accept="image/x-png, image/gif, image/jpeg"/>
            <label for="categoria">Categoria</label>
            <select id="categoria" name="categoria">
                <option value="jogos">Jogos</option>
                <option value="hardware">Hardware</option>
                <option value="movel">Móvel</option>
                <option value="console">Console</option>
                <option value="computador">Computador</option>
                <option value="periferico">Periférico</option>
                <option value="smartphone">Smartphone</option>
            </select>
            
            &emsp; 
            <input type="submit" name="crud" value="Cadastrar"/>
            <input type="button" value="Voltar" onClick="history.go(-1)"/>

            <!--<label for="country">State</label>
            <select id="country" name="country">
                <option value="australia">Australia</option>
                <option value="canada">Canada</option>
                <option value="usa">USA</option>
            </select>-->
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
        </div>
    </form>

</body>
</html>