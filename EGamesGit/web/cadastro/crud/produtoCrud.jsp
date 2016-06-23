<%-- 
    Document   : produtoCrud
    Created on : Jun 8, 2016, 3:08:42 PM
    Author     : evio
--%>

<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.egames.Produto,br.com.egames.ProdutoDAO"%>
<%@page import="java.lang.*" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produto</title>
    </head>
    <body>
        <%
            String imagepath = request.getParameter("imagem");
            if (imagepath == null || imagepath.equals("")) {
                imagepath = "";
            }
            
            String descricao = request.getParameter("descricao");
            if (descricao == null || descricao.equals("")) {
                descricao = "";
            }
            String qtdeEstoque = request.getParameter("qtdeEstoque");
            if (qtdeEstoque == null || qtdeEstoque.equals("")) {
                qtdeEstoque = "";
            }
            String preco = request.getParameter("preco");
            if (preco == null || preco.equals("")) {
                preco = "";
            }
            
            String idproduto = request.getParameter("idproduto");
            if (idproduto == null || idproduto.equals("")) {
                idproduto = "";
            }
            String dataCadastro = request.getParameter("dataCadastro");
            if (dataCadastro == null || dataCadastro.equals("")) {
                dataCadastro = "";
            }
            String categoria = request.getParameter("categoria");
            if (categoria == null || categoria.equals("")) {
                categoria = "";
            }

            String crud = request.getParameter("crud");

            Integer iidproduto = 0;
            Integer iQtdeEstoque = 0;
            Double dPreco = 0.0;
            Date data = new Date();

                       
            iQtdeEstoque = Integer.parseInt(qtdeEstoque);
            dPreco = Double.parseDouble(preco);
            iidproduto = Integer.parseInt(idproduto);

            Produto produto = new Produto();
            ProdutoDAO produtod = new ProdutoDAO();

            produto.setDescricao(descricao);
            produto.setPreco(dPreco);
            produto.setIdProduto(iidproduto);
            produto.setQtdeEstoque(iQtdeEstoque);
            produto.setDataCadastro(data.toString());
           // produto.setIdProduto();
            produto.setCategoria(categoria);

            if (crud.equals("Cadastrar")) {
                produtod.inserir(produto);
            }


        %>
    </body>
</html>
