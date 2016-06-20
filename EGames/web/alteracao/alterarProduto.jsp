<%-- 
    Document   : alterarProduto
    Created on : Jun 11, 2016, 3:37:55 PM
    Author     : evio
--%>
<%@page import="br.com.egames.ProdutoDAO"%>
<%@page import="br.com.egames.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            // teminar session.getAttribute(name)
            ProdutoDAO pd = new ProdutoDAO();
            Produto prod = new Produto();
           
            String descricao = request.getParameter("descricao");
            if(descricao == null || descricao.equals("")){
                descricao = "";
            }
            /*String dataCadastro = request.getParameter("dataCadastro");
            if(dataCadastro == null || dataCadastro.equals("")){
                dataCadastro = "";
            }*/
            String qtdEstoque = request.getParameter("qtdEstoque");
            if(qtdEstoque == null || qtdEstoque.equals("")){
                qtdEstoque = "";
            }
            String preco = request.getParameter("preco");
            if(preco == null || preco.equals("")){
                preco = "";
            }
            /*  String idProduto = request.getParameter("idProduto");
            if(idProduto == null || idProduto.equals("")){
                idProduto = "";
            }
            */
        %>
        <div><h2>Cadastro de Produto</h2></div>
<form action="crud/alteraProdutoCrud.jsp" method="get" name="form1" >
    <div>Descrição: <input type="text" name="descricao" value="<%=descricao%>"/></div><p>
    <div>preco <input type="text" name="preco" value="<%=preco%>" /></div><p>
    <div>Quantidade Inicial <input type="text" name="qtdeEstoque" value="<%=qtdEstoque%>"/></div><p>
</form>
    <div>
       <!-- <input type="submit" name="crud" value="Sign In"/> -->
       <input type="submit" name="crud" value="Alterar" />
      <!--  <input type="submit" name="crud" value="Excluir"/>
        <input type="submit" name="crud" value="Pesquisar"/>
        <input type="reset" value="Limpar"/> -->
    </div>
    </form>
    </body>
</html>
