<%-- 
    Document   : logIn
    Created on : Jun 11, 2016, 4:17:54 PM
    Author     : evio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div><h2>Log In</h2></div>
<form action="../crud/loginCrud.jsp" method="Post" name="form1" >
    <div>Log in: <input type="text" name="Cpf" value=""/> </div> <p>
    <div>Senha: <input type="password" name="senha" value=""/> </div> <p>
    
    <div>
       <!-- <input type="submit" name="crud" value="Sign In"/> -->
       <input type="submit" name="crud" value="Entrar" />
      <!--  <input type="submit" name="crud" value="Excluir"/>
        <input type="submit" name="crud" value="Pesquisar"/>
        <input type="reset" value="Limpar"/> -->
    </div>
    </form>
    </body>
</html>
