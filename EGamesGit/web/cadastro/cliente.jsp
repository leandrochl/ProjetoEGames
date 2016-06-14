<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Página inicial | EGames | O Lugar do Gamer na Internet</title>
        <link rel="stylesheet" type="text/css" href="../css/layout_geral.css">
        <link rel="stylesheet" type="text/css" href="../css/menu_suspenso.css">
        <link rel="stylesheet" type="text/css" href="../css/formatacao_form.css">
    </head>
    <style>

    </style>
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
      

    <center><div><h2>Cadastro de Clientes</h2></div></center>

    <form name="form_cadastro_cliente" action="crud/clienteCrud.jsp" method="post" name="form1" >
        <h3>Formulário de Cadastro</h3>            <div>
                <form action="action_page.php">
                    
                    <label for="fname">Nome Completo</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <label for="lname">Email</label><p>
                    <input type="text" name="nome" value="Nome Completo"><input type="text" name="email" value="Email"><p>

                    <label for="lname">Endereço</label><p>
                    <input type="text" name="endereco" value="Endereço"><p>

                    <label for="lname">Senha</label><label for="lname">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <label for="lname">Reescreva a senha</label><p>
                    <input type="password" name="senha" value=""><input type="password" name="senha2" value=""><p>

                    <label for="lname">Telefone 1</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <label for="lname">Telefone 2</label><p>
                    <td><input type="text" name="telefone1" value="Telefone 1"><input type="text" name="telefone2" value="Telefone 2"><p> 

                    <label for="lname">Telefone 3</label><p>
                    <input type="text" name="telefone3" value="Telefone 3"><p>

                    <label for="lname">CEP</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <label for="lname">RG</label<p>
                    <input type="text" name="cep" value="CEP"><input type="text" name="rg" value="RG"><p>

                    <label for="lname">CPF</label><p>
                    <input type="text" name="cpfCli" value="CPF"><p>
                        
                    <input type="submit" name="crud" value="Cadastrar" onclick="return senhaCliente.equals(senhaCliente2)"/>
                    <!--<label for="country">State</label>
                    <select id="country" name="country">
                        <option value="australia">Australia</option>
                        <option value="canada">Canada</option>
                        <option value="usa">USA</option>
                    </select>-->
                </form>
            </div>



            <!-- <input type="submit" name="crud" value="Sign In"/> -->
            
            <!--  <input type="submit" name="crud" value="Excluir"/>
              <input type="submit" name="crud" value="Pesquisar"/>
              <input type="reset" value="Limpar"/> -->
            </div>