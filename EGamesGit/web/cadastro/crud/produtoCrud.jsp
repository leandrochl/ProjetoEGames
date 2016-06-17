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
            String descricao = request.getParameter("descricao");
            if (descricao == null || descricao.equals("")) {
                descricao = "";
            }
            String qtdeEstoque = request.getParameter("qtdeEstoque");
            if (qtdeEstoque == null || qtdeEstoque.equals("")) {
                qtdeEstoque = "";
            }
            String imagem = request.getParameter("imagem");
            if (imagem == null || imagem.equals("")) {
                imagem = "vazio";
            }
            String preco = request.getParameter("preco");
            if (preco == null || preco.equals("")) {
                preco = "";
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

            Integer idProduto = 0;
            Integer iQtdeEstoque = 0;
            Double dPreco = 0.0;
            Date data = new Date();
            File fimagem = new File(imagem);
                       
            iQtdeEstoque = Integer.parseInt(qtdeEstoque);
            dPreco = Double.parseDouble(preco);

            Produto produto = new Produto();
            ProdutoDAO produtod = new ProdutoDAO();

            produto.setDescricao(descricao);
            produto.setPreco(dPreco);
            produto.setQtdeEstoque(iQtdeEstoque);
            produto.setDataCadastro(data.toString());
            produto.setIdProduto(999);
            produto.setCategoria(categoria);
            produto.setImagem(fimagem);

            if (crud.equals("Cadastrar")) {
                produtod.inserir(produto);
            }


        %>
    </body>
</html>
