<%-- 
    Document   : funcionarioCrud
    Created on : Jun 10, 2016, 7:08:16 AM
    Author     : evio
--%>

<%@page import="java.util.Date"%>
<%@page import="br.com.egames.Funcionario ,br.com.egames.FuncionarioDAO"%>
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
            if(nomeFunc == null || nomeFunc.equals("")){
                nomeFunc = "";
            }
            String enderecoFunc = request.getParameter("enderecoFunc");
            if(enderecoFunc == null || enderecoFunc.equals("")){
                enderecoFunc = "";
            }
            String emailFunc = request.getParameter("emailFunc");
            if(emailFunc == null || emailFunc.equals("")){
                emailFunc = "";
            }
            String senhaFunc = request.getParameter("senhaFunc");
            if(senhaFunc == null || senhaFunc.equals("")){
                senhaFunc = "";
            }
            String idTelefone = request.getParameter("idTelefone");
            if(idTelefone == null || idTelefone.equals("")){
                idTelefone = "";
            }
            String dataCadastro = request.getParameter("dataCadastro");
            if(dataCadastro == null || dataCadastro.equals("")){
                dataCadastro = "";
            }
            String cepFunc = request.getParameter("cepFunc");
            if(cepFunc == null || cepFunc.equals("")){
                cepFunc = "";
            }
            String rgFunc = request.getParameter("rgFunc");
            if(rgFunc == null || rgFunc.equals("")){
                rgFunc = "";
            }
            String cpfFunc = request.getParameter("cpfFunc");
            if(cpfFunc == null || cpfFunc.equals("")){
                cpfFunc = "";
            }
            String perAcesso = request.getParameter("perAcesso");
            if(perAcesso == null || perAcesso.equals("")){
                perAcesso = "";
            }
            
                   String crud = request.getParameter("crud");
                   
        Integer iCepFunc = 0;
        Integer iRgFunc = 0;
        Integer iCpfFunc = 0;
       
        Date data = new Date();
  //  if (!crud.equals("Pesquisar")) {
        //Convertendo dados
        iCepFunc = Integer.parseInt(cepFunc);
        iRgFunc = Integer.parseInt(rgFunc);
        iCpfFunc = Integer.parseInt(cpfFunc);
    

            Funcionario func = new Funcionario();
            FuncionarioDAO funcd = new FuncionarioDAO();
            
    func.setPerAcessFunc(2);
    func.setCepFunc(iCepFunc);
    func.setCpfFunc(iCpfFunc);
    func.setDataCadastro(data.toString());
    func.setEmailFunc(emailFunc);
    func.setEnderecoFunc(enderecoFunc);
    func.setIdTelefone(idTelefone);
    func.setNomeFunc(nomeFunc);
   
    func.setRgFunc(iRgFunc);
    func.setSenhaFunc(senhaFunc);
    //Verificando qual botão foi acionado
    if (crud.equals("Cadastrar")) {
        //Enviando o objeto para o banco
        out.print(funcd.inserir(func));
    }
        %>
    </body>
</html>
