<%-- 
    Document   : listagemAlteraTransp_A
    Created on : 26/06/2016, 18:19:31
    Author     : Leandro
--%>

<%@page import="br.com.egames.Transportadora"%>
<%@page import="br.com.egames.TransportadoraDAO"%>
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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMINISTRADOR</title>
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


    <table border = '0' width = '100%'>
        <tr bgcolor='gray' height='35'>
            <td width='3%'><b>Nº</b></td>
            <td width='10%'><b>CNPJ</b></td>
            <td width='10%'><b>Nome</b></td>
            <td width='10%'><b>Endereço</b></td>
            <td width='10%'><b>CEP</b></td>
            <td width='10%'><b>Email</b></td>
            <td width='10%'><b>Telefone 1</b></td>
            <td width='10%'><b>Telefone 2</b></td>
            <td width='10%'><b>Telefone 3</b></td>
            <td width='10%'><b>Alterar</b></td>
            <td width='10%'><b>Excluir</b></td>
        </tr>

        <%

            TransportadoraDAO fd = new TransportadoraDAO();
            Transportadora fo = new Transportadora();
            TelefoneDAO td = new TelefoneDAO();
            Telefone t = new Telefone();
            List<Transportadora> f = new ArrayList();

            if (session.getAttribute("login") == null) {

                response.sendRedirect("../altenticacao/login.jsp");
            }
            int i = 1;
            f = fd.listarTodos();
            for (Transportadora OBJForn : f) {
        %>
<form action="">
    <input type = "hidden" name="cnpjtransp">
        <tr>
            <td width='10%'><b><% out.print(i);%></b></td>
            <td width='10%'><b><%= OBJForn.getCnpjTransp()%></b></td>
            <td width='10%'><b><%= OBJForn.getNomeTransp()%></b></td>
            <td width='10%'><b><%= OBJForn.getEnderecoTransp()%></b></td>
            <td width='10%'><b><%= OBJForn.getCepTransp()%></b></td>
            <td width='10%'><b><%= OBJForn.getEmailTransp()%></b></td>
                    <%
                        t = td.listarTransportadora(OBJForn.getCnpjTransp());
                    %>
            <td width='10%'><b><%= OBJForn.getEmailTransp()%></b></td>
            <td width='10%'><b><%= OBJForn.getEmailTransp()%></b></td>
            <td width='10%'><b><%= OBJForn.getEmailTransp()%></b></td>
<td width='10%'><a href="../alteracao/alteraTrasportadora.jsp?matricula=<%=OBJForn.getCnpjTransp()%>&crud=Alterar"><img src="../imagens/alterar.png" height="40px" heigth="40px"></a></td>
                <td width='10%'><a href="../pagina/excluido_sucesso.jsp?cnpjtransp=<%=OBJForn.getCnpjTransp()%>&crud=Excluir_transp"><img src="../imagens/119498563188281957tasto_8_architetto_franc_01.svg.hi.png" height="20px" heigth="20px"></a></td>

        </tr>

        <%
                i++;
            }
        %>
    </table>

    <div>
        <input type="button" name="voltar" value="Voltar" onclick="history.go(-1)" />
    </div>

</body>
</html>
