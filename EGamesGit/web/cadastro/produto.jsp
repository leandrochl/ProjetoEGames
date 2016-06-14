<%-- 
    Document   : produto
    Created on : Jun 8, 2016, 2:59:36 PM
    Author     : evio
--%>

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
            if(descricao == null || descricao.equals("")){
                descricao = "";
            }
        /*    String dataCadastro = request.getParameter("dataCadastro");
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
<form action="crud/produtoCrud.jsp" method="get" name="form1" >
    <div>Descrição: <input type="text" name="nome" value="<%=descricao%>"></div><p>
    <div>preco <input type="text" name="endereco" value="<%=preco%>" </div><p>
    <div>Quantidade Inicial <input type="text" name="telefone" value="<%=qtdEstoque%>"</div><p>
   
    <div>
       <!-- <input type="submit" name="crud" value="Sign In"/> -->
       <input type="submit" name="crud" value="Cadastrar" />
      <!--  <input type="submit" name="crud" value="Excluir"/>
        <input type="submit" name="crud" value="Pesquisar"/>
        <input type="reset" value="Limpar"/> -->
    </div>
    </body>
</html>
