<%-- 
    Document   : listagemAtelra[
    Created on : Jun 17, 2016, 12:19:25 PM
    Author     : evio
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="br.com.egames.Fornecedor"%>
<%@page import="br.com.egames.FornecedorDAO"%>
<%@page import="br.com.egames.Telefone"%>
<%@page import="br.com.egames.TelefoneDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração dos Dados | Página do Cliente</title>
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
    <form action="../alteracao/alteraFornecedor.jsp" method="post">   
        <table border = '0' width = '100%'>

            <tr bgcolor='gray' height='35'>
                <td width='3%'><b>CNPJ</b></td>
                <td width='10%'><b>Nome</b></td>
                <td width='10%'><b>Endereco</b></td>
                <td width='10%'><b>CEP</b></td>
                <td width='10%'><b>Telefone 1</b></td>
                <td width='10%'><b>Telefone 2</b></td>
                <td width='10%'><b>Telefone 3</b></td>
                <td width='10%'><b>Ação</b></td>
                <td width='10%'><b>Alterar</b></td>
            </tr>

            <%

                FornecedorDAO fd = new FornecedorDAO();
                Fornecedor fo = new Fornecedor();
                
                List<Fornecedor> f = new ArrayList();

                if (session.getAttribute("login") == null) {

                    response.sendRedirect("../altenticacao/login.jsp");
                }

                f = fd.listarTodos();
                for (Fornecedor OBJForn : f) {
            %>

            <tr>
            <td width='10%'><b><%= OBJForn.getCnpjForn()%></b></td>
            <td width='10%'><b><%= OBJForn.getNomeForn()%></b></td>
            <td width='10%'><b><%= OBJForn.getEnderecoForn()%></b></td>
            <td width='10%'><b><%= OBJForn.getCepForn()%></b></td>
            <td width='10%'><b>vazio</b></td>
            <td width='10%'><b>vazio</b></td>
            <td width='10%'><b>vazio</b></td>
            <td width='10%'><input type="button" onclick="" value="Excluir"/></td>
            <td width='10%'><input type="button" value="Alterar"/></td>
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
