<%-- 
    Document   : alteraClienteCrud
    Created on : Jun 10, 2016, 11:28:28 AM
    Author     : evio
--%>

<%@page import="java.util.Date"%>
<%@page import="br.com.egames.Cliente ,br.com.egames.ClienteDAO"%>
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
    //Pegando parâmetro do formulário carg
       Cliente cli = new Cliente();
       ClienteDAO cd = new ClienteDAO();
   
             cli = cd.buscaPorCPF(Long.parseLong(session.getAttribute("login").toString()));
    
            String nomeCliente = request.getParameter("nomeCliente");
            if(nomeCliente == null || nomeCliente.equals("")){
                nomeCliente = "";
            }
            String enderecoCliente = request.getParameter("enderecoCliente");
            if(enderecoCliente == null || enderecoCliente.equals("")){
                enderecoCliente = "";
            }
            String emailCliente = request.getParameter("emailCliente");
            if(emailCliente == null || emailCliente.equals("")){
                emailCliente = "";
            }
          /*  String senhaCliente = request.getParameter("senhaCliente");
            if(senhaCliente == null || senhaCliente.equals("")){
                senhaCliente = "";
            }
            String senhaCliente2 = request.getParameter("senhaCliente2");
            if(senhaCliente2 == null || senhaCliente2.equals("")){
                senhaCliente2 = "";
            }*/
            /*String idTelefone = request.getParameter("idTelefone");
            if(idTelefone == null || idTelefone.equals("")){
                idTelefone = "";
            }
            String dataCadastro = request.getParameter("dataCadastro");
            if(dataCadastro == null || dataCadastro.equals("")){
                dataCadastro = "";
            }*/
            String cepCliente = request.getParameter("cepCliente");
            if(cepCliente == null || cepCliente.equals("")){
                cepCliente = "0";
            }
            String rgCliente = request.getParameter("rgCliente");
            if(rgCliente == null || rgCliente.equals("")){
                rgCliente = "0";
            }
         /*   String cpfCliente = request.getParameter("cpfCliente");
            if(cpfCliente == null || cpfCliente.equals("")){
                cpfCliente = "0";
            }*/
           
    String crud = request.getParameter("crud");
   
    Integer iCepCliente = 0;
    Integer iRgCliente = 0;
   
  
    
  //  if (!crud.equals("Pesquisar")) {
        //Convertendo dados
        iCepCliente = Integer.parseInt(cepCliente);
        iRgCliente = Integer.parseInt(rgCliente);
    //    lCpfCliente = Long.parseLong();
        


   // }

    //Criando objetos das classes Cargo e CargoDAO
 
    
  //  cli.setPerAcesso(1);
    cli.setCepCliente(iCepCliente);
  //  cli.setCpfCliente(lCpfCliente);
    cli.setEmailCliente(emailCliente);
    cli.setEnderecoCliente(enderecoCliente);
   // cli.setIdTelefone(idTelefone);
    cli.setNomeCliente(nomeCliente);
    
    cli.setRgCliente(iRgCliente);
  //  cli.setSenhaCliente(senhaCliente);




    if (crud.equals("Alterar")) {
        out.print(cd.alterar(cli));}
    %>
    </body>
</html>
