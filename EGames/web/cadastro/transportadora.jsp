<%-- 
    Document   : Transportadora
    Created on : Jun 8, 2016, 9:28:28 AM
    Author     : evio
--%>



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

    <form name="form_cadastro_cliente" action="crud/transportadoraCrud.jsp" method="post" name="form1" >
        &emsp;
        <div>
            <label for="fname">Nome :&emsp;</label><input type="text" name="nome" value="Nome">
           <!-- <p><label for="lname">Email:&emsp;</label><input type="text" name="email" value="Email"></p>-->
            <p><label for="lname">Endereço:&emsp;</label><input type="text" name="endereco" value="Endereço"></p>
         <!--   <p><label for="lname">Senha:</label><label for="lname">&emsp;</label><input type="password" name="senha" value="">&emsp;<label for="lname">Reescreva a senha:&emsp;</label><input type="password" name="senha2" value=""></p> -->
            <p><label for="lname">Telefone 1&emsp;</label><input type="text" name="telefone1" value="Telefone 1"><label for="lname">&emsp;Telefone 2:&emsp;</label><input type="text" name="telefone2" value="Telefone 2"><label for="lname">&emsp;Telefone 3:&emsp;</label><input type="text" name="telefone3" value="Telefone 3"></p>
            <p><label for="lname">CNPJ: &emsp;</label><input type="text" name="cnpj" value="CNPJ"></p>
            <p><label for="lname">Email: &emsp;</label><input type="text" name="email" value="Email"></p>
           
            &emsp; 
            <input type="submit" name="crud" value="Cadastrar" />
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