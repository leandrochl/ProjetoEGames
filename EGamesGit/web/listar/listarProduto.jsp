<%-- 
    Document   : listarProduto
    Created on : 16/06/2016, 12:44:20
    Author     : Leandro
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.egames.Produto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.egames.ProdutoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            //Produto prod = new Produto();
            ProdutoDAO prodd = new ProdutoDAO();

            List<Produto> lista = new ArrayList();
            lista = prodd.listarTodos();

            for (Produto prod : lista) {
                out.println(prod.getDataCadastro());
                out.println(prod.getImagem());
            }

        %> 
    </body>
</html>
