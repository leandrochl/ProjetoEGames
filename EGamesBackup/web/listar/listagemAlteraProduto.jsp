<%-- 
    Document   : listagemAlteraProduto
    Created on : 21/06/2016, 10:23:10
    Author     : Leandro
--%>

<%@page import="br.com.egames.Produto"%>
<%@page import="br.com.egames.ProdutoDAO"%>
<%@page import="br.com.egames.Funcionario"%>
<%@page import="br.com.egames.FuncionarioDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="br.com.egames.Fornecedor"%>
<%@page import="br.com.egames.FornecedorDAO"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página do Funcionário</title>
        <link rel="stylesheet" type="text/css" href="../css/layout_geral.css">
        <link rel="stylesheet" type="text/css" href="../css/menu_suspenso.css">
        <link rel="stylesheet" type="text/css" href="../css/formatacao_form.css">
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
    <form action="" method="post">   
        <table border = '0' width = '100%'>
            <tr bgcolor='gray' height='35'>

                <td width='10%'><b>ID</b></td>
                <td width='10%'><b>Descrição</b></td>
                <td width='3%'><b>Estoque</b></td>
                <td width='10%'><b>Preço</b></td>
                <td width='10%'><b>Data de inserção</b></td>
                <td width='10%'><b>Categoria</b></td>
                
                <td width='10%'><b>Excluir</b></td>
                <td width='10%'><b>Alterar</b></td>

            </tr>

            <%
                ProdutoDAO fd = new ProdutoDAO();
                Produto fo = new Produto();
                List<Produto> f = new ArrayList();
                if (session.getAttribute("login") == null) {

                    response.sendRedirect("../altenticacao/login.jsp");
                }

                f = fd.listarTodos();
                for (Produto OBJForn : f) {
            %>
<form action="">
    <input type = "hidden" name="idproduto">
            <tr>
                <td width='10%'><b><%= OBJForn.getIdProduto()%></b></td>
                <td width='10%'><b><%= OBJForn.getDescricao()%></b></td>
                <td width='10%'><b><%= OBJForn.getQtdeEstoque()%></b></td>
                <td width='10%'><b><%= OBJForn.getPreco()%></b></td>
                <td width='10%'><b><%= OBJForn.getDataCadastro()%></b></td>
                <td width='10%'><b><%= OBJForn.getCategoria()%></b></td>
                
                <td width='10%'><a href="../alteracao/alterarProduto.jsp?idproduto=<%=OBJForn.getIdProduto()%>&descricao=<%=OBJForn.getDescricao()%>&preco=<%=OBJForn.getPreco()%>&qtdeEstoque=<%=OBJForn.getQtdeEstoque()%>&crud=Alterar"><img src="../imagens/alterar.png" height="40px" heigth="40px"></a></td>
                <td width='10%'><a href="../pagina/excluido_sucesso.jsp?idproduto=<%=OBJForn.getIdProduto()%>&crud=Excluir_produto"><img src="../imagens/119498563188281957tasto_8_architetto_franc_01.svg.hi.png" height="20px" heigth="20px"></a></td>
            </tr>
            <%
                }
            %>
        </table>

        <div>
            <input type="button" name="voltar" value="Voltar" onclick="history.go(-1)" />
        </div>
    </form>   
</body>
</html>

