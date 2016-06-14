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
       
        <div><h2>Cadastro de Produto</h2></div>
<form action="crud/produtoCrud.jsp" method="get" name="form1" >
    <div>Descrição: <input type="text" name="descricao" value=""/></div><p>
    <div>preco <input type="text" name="preco" value="" /></div><p>
    <div>Quantidade Inicial <input type="text" name="qtdeEstoque" value=""/></div><p>
   
    <div>
       <!-- <input type="submit" name="crud" value="Sign In"/> -->
       <input type="submit" name="crud" value="Cadastrar" />
      <!--  <input type="submit" name="crud" value="Excluir"/>
        <input type="submit" name="crud" value="Pesquisar"/>
        <input type="reset" value="Limpar"/> -->
    </div>
    </form>

    </body>
</html>
