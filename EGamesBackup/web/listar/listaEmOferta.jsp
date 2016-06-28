<%-- 
    Document   : listaEmOferta
    Created on : Jun 27, 2016, 9:13:36 PM
    Author     : evio
--%>

<%@page import="br.com.egames.Pedido"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="br.com.egames.Produto"%>
<%@page import="br.com.egames.ProdutoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Catálogo de Produtos</title>
        <link rel="stylesheet" type="text/css" href="../css/layout_geral.css">
        <link rel="stylesheet" type="text/css" href="../css/menu_suspenso.css">
        <link rel="stylesheet" type="text/css" href="../css/formatacao_form.css">
    <center><img class="thumb" src="../imagens/imagem_cabecalho_index.png" width="70%" height="20%"  alt=""/></center>
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
<form action="listaProduto.jsp" method="post">
    <input type="hidden" value="" name="categoria">
    <!--<input type="submit" value="submit"></input>-->



</form>
<body>
    <form action="listarProduto.jsp" method="post">   
          <input type="hidden" name="crud">
        <table border = '0' width = '100%'>
            <%
                ProdutoDAO fd = new ProdutoDAO();
                Produto fo = new Produto();
                List<Produto> f = new ArrayList();
                f = fd.verificaBarato();
                for (Produto OBJForn : f) {
            %>
            <tr width='10%'>
                <th rowspan="2" bgcolor="#894AB0"><font color="white">Foto</font></th>
                <th rowspan="2" width='10'>  <a href="listaEmOferta.jsp"><img src="../imagens/cliente2.png" height="128" width="128"/></a>

                <td><font size="6" color="#6F83B6"><b><%=OBJForn.getDescricao()%></b></font></td>

            </tr>
            <tr width='10%'>
                <td><font size="5"><b>Preço:</b> R$ <%=OBJForn.getPreco()%></font></td>
            </tr>
            <%
                }
            %>
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
