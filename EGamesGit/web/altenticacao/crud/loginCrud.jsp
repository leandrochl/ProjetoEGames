<%-- 
    Document   : logInCrud
    Created on : Jun 11, 2016, 4:18:36 PM
    Author     : evio
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="br.com.egames.Funcionario"%>
<%@page import="br.com.egames.Cliente"%>
<%@page import="br.com.egames.LoginDAO"%>
<%@page import="br.com.egames.Login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crud para log in</title>
    </head>
    <body>
        <%
        String login = request.getParameter("Cpf");
        String senha = request.getParameter("senha");
       
        
        Login log = new Login();
        LoginDAO logd = new LoginDAO();
        
        Funcionario func = new Funcionario();
        log.setLogin(Long.parseLong(login));
        log.setSenha(senha);
        
                
        
        if(logd.verificaCliente(log) )
        {
            
           
            session.setAttribute("login", login);
            
            response.sendRedirect("../../pagina/paginaCliente.jsp");
     
            
        }else if(logd.verificaFuncionario(log) )
        {
           // func.setCpfFunc(llogin);
           
            session.setAttribute("login", login);
            
            response.sendRedirect("../../pagina/paginaFuncionario.jsp");
            
            
        }
        else if(logd.verificaAdmin(log))
        {
           
            //JOptionPane.showMessageDialog(null, "bora lá"); 
               
             // out.println("Senha ou Login Inválidos");
            session.setAttribute("login", login);
            
            response.sendRedirect("pagina/paginaAdmin.jsp");
        }
        
       %>
      
    </body>
</html>
