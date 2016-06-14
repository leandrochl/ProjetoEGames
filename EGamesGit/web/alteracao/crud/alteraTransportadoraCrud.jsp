<%-- 
    Document   : alteraTransportadoraCrud
    Created on : Jun 11, 2016, 3:49:38 PM
    Author     : evio
--%>

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
            String nomeTrans = request.getParameter("nomeTrans");
            if(nomeTrans == null || nomeTrans.equals("")){
                nomeTrans = "";
            }
            String enderecoTrans = request.getParameter("enderecoTrans");
            if(enderecoTrans == null || enderecoTrans.equals("")){
                enderecoTrans = "";
            }
            String cnpjTrans = request.getParameter("cnpjTrans");
            if(cnpjTrans == null || cnpjTrans.equals("")){
                cnpjTrans = "";
            }
          
            String idTelefone = request.getParameter("idTelefone");
            if(idTelefone == null || idTelefone.equals("")){
                idTelefone = "";
            }
            
            String emailTrans = request.getParameter("emailTrans");
            if(emailTrans == null || emailTrans.equals("")){
                emailTrans = "";
            }
          /*  String cepTrans = request.getParameter("cepTrans");
            if(cepTrans == null || cepTrans.equals("")){
                cepTrans = "";
            }
            */
          String crud = request.getParameter("crud");
          Transportadora trans = new Transportadora();
          TransportadoraDAO transd = new TransportadoraDAO();
          
          trans.setNomeTransp(nomeTrans);
          trans.setCnpjTransp(cnpjTrans);
          trans.setIdTelefone(idTelefone);
          trans.setEmailTransp(emailTrans);
          

          
           if (crud.equals("Alterar")) {
                //Enviando o objeto para o banco
                out.print(transd.inserir(trans));
            }

        %>
    </body>
</html>

