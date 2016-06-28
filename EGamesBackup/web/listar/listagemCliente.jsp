<%-- 
    Document   : listagemCliente
    Created on : 20/06/2016, 17:34:55
    Author     : Leandro
--%>

<%@page import="br.com.egames.ClienteDAO"%>
<%@page import="br.com.egames.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="br.com.egames.Fornecedor"%>
<%@page import="br.com.egames.FornecedorDAO"%>
<%@page import="br.com.egames.Telefone"%>
<%@page import="br.com.egames.TelefoneDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head http-equiv="REFRESH" content="1;url=listagemCliente.jsp">
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
                <td width='10%'><b>Nome</b></td>
                <td width='10%'><b>Endereço</b></td>
                <td width='10%'><b>CEP</b></td>
                <td width='10%'><b>RG</b></td>
                <td width='10%'><b>CPF</b></td>
                <td width='10%'><b>Email</b></td>
                <td width='10%'><b>Data de Cadastro</b></td>
                <td width='10%'><b>Telefone 1</b></td>
                <td width='10%'><b>Telefone 2</b></td>
                <td width='10%'><b>Telefone 3</b></td>
                <td width='10%'><b>Ação</b></td>
            </tr>

            <%

                ClienteDAO fd = new ClienteDAO();
                Cliente fo = new Cliente();
                List<Cliente> f = new ArrayList();
                TelefoneDAO td = new TelefoneDAO();
                Telefone t = new Telefone();

                //Telefone tel = new ArrayList();
               // HttpServletResponse resp; 
                if (session.getAttribute("login") == null) {

                    response.sendRedirect("../altenticacao/login.jsp");
                }
                int i=1;
                f = fd.listarTodos();
                for (Cliente OBJForn : f) {

            %>
<%-- 
    Document   : listagemCliente
    Created on : 20/06/2016, 17:34:55
    Author     : Leandro
--%>

<%@page import="br.com.egames.ClienteDAO"%>
<%@page import="br.com.egames.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="br.com.egames.Fornecedor"%>
<%@page import="br.com.egames.FornecedorDAO"%>
<%@page import="br.com.egames.Telefone"%>
<%@page import="br.com.egames.TelefoneDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head http-equiv="REFRESH" content="1;url=listagemCliente.jsp">
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
                <td width='10%'><b>Nome</b></td>
                <td width='10%'><b>Endereço</b></td>
                <td width='10%'><b>CEP</b></td>
                <td width='10%'><b>RG</b></td>
                <td width='10%'><b>CPF</b></td>
                <td width='10%'><b>Email</b></td>
                <td width='10%'><b>Data de Cadastro</b></td>
                <td width='10%'><b>Telefone 1</b></td>
                <td width='10%'><b>Telefone 2</b></td>
                <td width='10%'><b>Telefone 3</b></td>
                <td width='10%'><b>Ação</b></td>
            </tr>

            <%

                ClienteDAO fd = new ClienteDAO();
                Cliente fo = new Cliente();
                List<Cliente> f = new ArrayList();
                TelefoneDAO td = new TelefoneDAO();
                Telefone t = new Telefone();

                //Telefone tel = new ArrayList();
               // HttpServletResponse resp; 
                if (session.getAttribute("login") == null) {

                    response.sendRedirect("../altenticacao/login.jsp");
                }
                int i=1;
                f = fd.listarTodos();
                for (Cliente OBJForn : f) {

            %>

<form action="../pagina/excluido_sucesso.jsp">
    <input type = "hidden" name="cpfcli">
=======
<form action="listar/listagemCliente.jsp">
    <input type="hidden" name="id">
<form action="listar/listagemCliente.jsp">
    <input type="hidden" name="id">
            <tr>
                <td width='10%'><b><% out.print(i); %></b></td>
                <td width='10%'><b><%= OBJForn.getNomeCliente()%></b></td>
                <td width='10%'><b><%= OBJForn.getEnderecoCliente()%></b></td>
                <td width='10%'><b><%= OBJForn.getCepCliente()%></b></td>
                <td width='10%'><b><%= OBJForn.getRgCliente()%></b></td>
                <td width='10%'><b><%= OBJForn.getCpfCliente()%></b></td>
                <td width='10%'><b><%= OBJForn.getEmailCliente()%></b></td>
                <td width='10%'><b><%= OBJForn.getDataCadastro()%></b></td>
                        <%
                            t = td.listarCliente(OBJForn.getCpfCliente());
                        %>
                <td width='10%'><b><%= t.getTelefone1()%></b></td>
                <td width='10%'><b><%= t.getTelefone2()%></b></td>
                <td width='10%'><b><%= t.getTelefone3()%></b></td>
                <td width='10%'><a href="../pagina/excluido_sucesso.jsp?cpfcli=<%= OBJForn.getCpfCliente() %>&crud=Excluir_cli"><img src="../imagens/119498563188281957tasto_8_architetto_franc_01.svg.hi.png" height="20px" heigth="20px"></a></td>


                <td width='10%'><input type="button" name="crud" value="Excluir" onclick="location.href = 'listar/listagemCliente.jsp?id=<%=OBJForn.getCpfCliente()%>'"/></td>

            </tr>

            <%
                
                    i++;
                }
                
                }
            %>
        </table>
</form>
        <div>
            <input type="button" name="voltar" value="Voltar" onclick="history.go(-1)" />
        </div>
    </form>   
</body>
</html>

