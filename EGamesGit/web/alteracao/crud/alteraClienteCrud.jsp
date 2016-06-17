<%-- 
    Document   : alteraClienteCrud
    Created on : Jun 10, 2016, 11:28:28 AM
    Author     : evio
--%>

<%@page import="br.com.egames.TelefoneDAO"%>
<%@page import="br.com.egames.Telefone"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.egames.Cliente ,br.com.egames.ClienteDAO"%>
<%@page import="java.lang.*" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>funciona droga</title>
    </head>
    <body>
        <%
    //Pegando parâmetro do formulário carg
       Cliente cli = new Cliente();
       ClienteDAO cd = new ClienteDAO();
    //   Telefone tel = new Telefone();
      // TelefoneDAO teld = new TelefoneDAO();
   
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
       /*      String telefone1 = request.getParameter("telefone1");
            if (telefone1 == null || telefone1.equals("")) {
                telefone1 = "";
            }
            String telefone2 = request.getParameter("telefone2");
            if (telefone2 == null || telefone2.equals("")) {
                telefone2 = "";
            }
            String telefone3 = request.getParameter("telefone3");
            if (telefone3 == null || telefone3.equals("")) {
                telefone3 = "";
            }*/
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
 
   /* tel.setIdTelefone(cli.getIdTelefone());
    tel.setTelefone1(telefone1);
    tel.setTelefone2(telefone2);
    tel.setTelefone3(telefone3);*/
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
        //out.print(teld.alterar(tel));
        out.print(cd.alterar(cli));
    }
    %>
    </body>
</html>
