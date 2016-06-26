<%-- 
    Document   : transportadoraCrud
    Created on : Jun 8, 2016, 11:21:12 AM
    Author     : evio
--%>

<%@page import="br.com.egames.TelefoneDAO"%>
<%@page import="br.com.egames.Telefone"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.egames.Transportadora,br.com.egames.TransportadoraDAO"%>
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
            String nomeTrans = request.getParameter("nome");
            if(nomeTrans == null || nomeTrans.equals("")){
                nomeTrans = "";
            }
            String enderecoTrans = request.getParameter("endereco");
            if(enderecoTrans == null || enderecoTrans.equals("")){
                enderecoTrans = "";
            }
            String cnpjTrans = request.getParameter("cnpj");
            if(cnpjTrans == null || cnpjTrans.equals("")){
                cnpjTrans = "";
            }
            String telefone1 = request.getParameter("telefone1");
            if(telefone1 == null || telefone1.equals("")){
                telefone1 = "";
            }
            
             String telefone2 = request.getParameter("telefone2");
            if(telefone2 == null || telefone2.equals("")){
                telefone2 = "";
            }
            
             String telefone3 = request.getParameter("telefone3");
            if(telefone3 == null || telefone3.equals("")){
                telefone3 = "";
            }
            
            
            String emailTrans = request.getParameter("email");
            if(emailTrans == null || emailTrans.equals("")){
                emailTrans = "";
            }
            String cepTrans = request.getParameter("cep");
            if(cepTrans == null || cepTrans.equals("")){
                cepTrans = "";
            }
            
          String crud = request.getParameter("crud");
          Transportadora trans = new Transportadora();
          TransportadoraDAO transd = new TransportadoraDAO();
          Telefone tel = new Telefone();
          TelefoneDAO teld=  new TelefoneDAO();
          
          trans.setNomeTransp(nomeTrans);
          trans.setCnpjTransp(cnpjTrans);
          trans.setEnderecoTransp(enderecoTrans);
          trans.setEmailTransp(emailTrans);
          trans.setCepTransp(cepTrans);
          
          /*
          tel.setIdTelefone("789");
          trans.setIdTelefone(tel.getIdTelefone());
          tel.setTelefone1(telefone1);
          tel.setTelefone2(telefone2);
          tel.setTelefone3(telefone3);
          */
          if (crud.equals("Cadastrar")) {
                //Enviando o objeto para o banco
                //out.print(teld.inserir(tel));
                out.print(transd.inserir(trans));
            }
        %>
    </body>
</html>
