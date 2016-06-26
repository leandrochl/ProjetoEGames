<%-- 
    Document   : listagemAlteraForn_A
    Created on : 26/06/2016, 17:27:18
    Author     : Leandro
--%>

<%@page import="br.com.egames.Telefone"%>
<%@page import="br.com.egames.TelefoneDAO"%>
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
                <td width='1%'><b>Nº</b></td>
                <td width='3%'><b>Nome</b></td>
                <td width='10%'><b>Endereço</b></td>
                <td width='10%'><b>CEP</b></td>
                <td width='10%'><b>RG</b></td>
                <td width='10%'><b>CPF</b></td>
                <td width='10%'><b>Numero da Carteira</b></td>
                <td width='10%'><b>Matricula</b></td>
                <td width='10%'><b>Email</b></td>
                <td width='10%'><b>Data de Cadastro</b></td>
                <td width='10%'><b>Telefone 1</b></td>
                <td width='10%'><b>Telefone 2</b></td>
                <td width='10%'><b>Telefone 3</b></td>
                <td width='10%'><b>Alterar</b></td>
                <td width='10%'><b>Excluir</b></td>
                

            </tr>

            <%

                FuncionarioDAO fd = new FuncionarioDAO();
                Funcionario fo = new Funcionario();
                List<Funcionario> f = new ArrayList();
                TelefoneDAO td = new TelefoneDAO();
                Telefone t = new Telefone();
                
                if (session.getAttribute("login") == null) {

                    response.sendRedirect("../altenticacao/login.jsp");
                }
                int i = 1;
                f = fd.listarTodos();
                for (Funcionario OBJForn : f) {
            %>

            <tr>
                <td width='10%'><b><% out.print(i);%></b></td>
                <td width='10%'><b><%= OBJForn.getNomeFunc()%></b></td>
                <td width='10%'><b><%= OBJForn.getEnderecoFunc()%></b></td>
                <td width='10%'><b><%= OBJForn.getCepFunc()%></b></td>
                <td width='10%'><b><%= OBJForn.getRgFunc()%></b></td>
                <td width='10%'><b><%= OBJForn.getCpfFunc()%></b></td>
                <td width='10%'><b><%= OBJForn.getNumCarteiraFunc()%></b></td>
                <td width='10%'><b><%= OBJForn.getMatriculaFunc()%></b></td>
                <td width='10%'><b><%= OBJForn.getEmailFunc()%></b></td>
                <td width='10%'><b><%= OBJForn.getDataCadastro()%></b></td>
                        <%
                            t = td.listarFuncionario(OBJForn.getMatriculaFunc());
                        %>
                <td width='10%'><b><%= t.getTelefone1()%></b></td>
                <td width='10%'><b><%= t.getTelefone2()%></b></td>
                <td width='10%'><b><%= t.getTelefone3()%></b></td>
                <td width='10%'><b><input type="button" value="Alterar"></b></td>
                <td width='10%'><b><input type="button" value="Excluir"></b></td>
            </tr>

            <%
                    i++;
                }
            %>
        </table>

            <div>
                <input type="button" name="voltar" value="Voltar" onclick="history.go(-1)" />
            </div>
    </form>   
</body>
</html>
