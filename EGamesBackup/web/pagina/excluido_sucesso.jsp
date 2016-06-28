<%-- 
    Document   : excluido_sucesso
    Created on : 27/06/2016, 16:50:59
    Author     : Leandro
--%>

<%@page import="br.com.egames.Produto"%>
<%@page import="br.com.egames.ProdutoDAO"%>
<%@page import="br.com.egames.ItensPedidoDAO"%>
<%@page import="br.com.egames.ItensPedido"%>
<%@page import="br.com.egames.TransportadoraDAO"%>
<%@page import="br.com.egames.Transportadora"%>
<%@page import="br.com.egames.FornecedorDAO"%>
<%@page import="br.com.egames.Fornecedor"%>
<%@page import="br.com.egames.ClienteDAO"%>
<%@page import="br.com.egames.Cliente"%>
<%@page import="br.com.egames.FuncionarioDAO"%>
<%@page import="br.com.egames.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String matricula = request.getParameter("matricula");
            if (matricula == null || matricula.equals("")) {
                matricula = "";
            }
            String cpfcli = request.getParameter("cpfcli");
            if (cpfcli == null || cpfcli.equals("")) {
                cpfcli = "";
            }
            String cnpjforn = request.getParameter("cnpjforn");
            if (cnpjforn == null || cnpjforn.equals("")) {
                cnpjforn = "";
            }
            String cnpjtransp = request.getParameter("cnpjtransp");
            if (cnpjtransp == null || cnpjtransp.equals("")) {
                cnpjtransp = "";
            }
            String idpedido = request.getParameter("idpedido");
            if (idpedido == null || idpedido.equals("")) {
                idpedido = "";
            }
            String idproduto = request.getParameter("idproduto");
            if (idproduto == null || idproduto.equals("")) {
                idproduto = "";
            }

            String crud = request.getParameter("crud");

            Funcionario func = new Funcionario();
            FuncionarioDAO funcd = new FuncionarioDAO();
            Cliente cli = new Cliente();
            ClienteDAO clid = new ClienteDAO();
            Fornecedor forn = new Fornecedor();
            FornecedorDAO fornd = new FornecedorDAO();
            Transportadora transp = new Transportadora();
            TransportadoraDAO transpd = new TransportadoraDAO();
            ItensPedido pedido = new ItensPedido();
            ItensPedidoDAO pedidod = new ItensPedidoDAO();
            Produto produto = new Produto();
            ProdutoDAO produtod = new ProdutoDAO();

            if (crud.equals("Excluir")) {
                func.setMatriculaFunc(Integer.parseInt(matricula));
                out.print(funcd.excluir(func));
            }
            if (crud.equals("Excluir_cli")) {
                cli.setCpfCliente(cpfcli);
                out.print(clid.excluir(cli));
            }
            if (crud.equals("Excluir_forn")) {
                forn.setCnpjForn(cnpjforn);
                out.print(fornd.excluir(forn));
            }
            if (crud.equals("Excluir_transp")) {
                out.print(transpd.excluir(cnpjtransp));
            }
            if (crud.equals("Excluir_pedido")) {
                pedido.setIdPedido(Integer.parseInt(idpedido));
                out.print(pedidod.excluir(pedido));
            }
            if (crud.equals("Excluir_produto")) {
                produto.setIdProduto(Integer.parseInt(idproduto));
                out.print(produtod.excluir(produto));
            }
        %>
        <h1>Excluido ou nao?</h1>
        <input type="button" value="Voltar" onclick="history.go(-1)"
    </body>
</html>
