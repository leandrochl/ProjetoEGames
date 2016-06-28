<%-- 
    Document   : alteraProdutoCrud
    Created on : Jun 11, 2016, 3:40:51 PM
    Author     : evio
--%>

<%@page import="java.util.Date"%>
<%@page import="br.com.egames.Produto,br.com.egames.ProdutoDAO"%>
<%@page import="java.lang.*" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String descricao = request.getParameter("descricao");
            if (descricao == null || descricao.equals("")) {
                descricao = "";
            }
            String idproduto = request.getParameter("idproduto");
            if (idproduto == null || idproduto.equals("")) {
                idproduto = "";
            }
            String qtdeEstoque = request.getParameter("qtdeEstoque");
            if (qtdeEstoque == null || qtdeEstoque.equals("")) {
                qtdeEstoque = "";
            }
            String preco = request.getParameter("preco");
            if (preco == null || preco.equals("")) {
                preco = "";
            }
            String crud = request.getParameter("crud");

            Integer idProduto = 0;
            Integer iQtdeEstoque = 0;
            Double dPreco = 0.0;
            Date data = new Date();

            iQtdeEstoque = Integer.parseInt(qtdeEstoque);
            dPreco = Double.parseDouble(preco);
            Produto produto = new Produto();
            ProdutoDAO produtod = new ProdutoDAO();

            produto.setDescricao(descricao);
            produto.setPreco(dPreco);
            produto.setQtdeEstoque(iQtdeEstoque);
            produto.setIdProduto(idProduto);

            if (crud.equals("Alterar")) {
                produtod.alterar(produto);
            }

        %>
    </body>
</html>
