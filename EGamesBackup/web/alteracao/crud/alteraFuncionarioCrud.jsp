<%-- 
    Document   : alteraFuncionarioCrud
    Created on : Jun 11, 2016, 3:36:42 PM
    Author     : evio
--%>

<%@page import="java.util.Date"%>
<%@page import="br.com.egames.Funcionario,br.com.egames.FuncionarioDAO"%>
<%@page import="java.lang.*" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD Funcionário</title>
    </head>
    <body>
        <%
            String nomeFunc = request.getParameter("nomeFunc");
            if (nomeFunc == null || nomeFunc.equals("")) {
                nomeFunc = "";
            }
            String enderecoFunc = request.getParameter("enderecoFunc");
            if (enderecoFunc == null || enderecoFunc.equals("")) {
                enderecoFunc = "";
            }
            String emailFunc = request.getParameter("emailFunc");
            if (emailFunc == null || emailFunc.equals("")) {
                emailFunc = "";
            }
            String cepFunc = request.getParameter("cepFunc");
            if (cepFunc == null || cepFunc.equals("")) {
                cepFunc = "";
            }
            String rgFunc = request.getParameter("rgFunc");
            if (rgFunc == null || rgFunc.equals("")) {
                rgFunc = "";
            }
            String cpfFunc = request.getParameter("cpfFunc");
            if (cpfFunc == null || cpfFunc.equals("")) {
                cpfFunc = "";
            }

            String crud = request.getParameter("crud");
            Date data = new Date();
            Funcionario func = new Funcionario();
            FuncionarioDAO funcd = new FuncionarioDAO();

            func.setCepFunc(cepFunc);
            func.setCpfFunc(cpfFunc);
            func.setEmailFunc(emailFunc);
            func.setEnderecoFunc(enderecoFunc);
            func.setNomeFunc(nomeFunc);
            func.setRgFunc(rgFunc);

            //Verificando qual botão foi acionado
            if (crud.equals("Alterar")) {
                //Enviando o objeto para o banco
                out.print(funcd.alterar(func));
            }
        %>
    </body>
</html>
