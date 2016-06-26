<%-- 
    Document   : funcionarioCrud
    Created on : Jun 10, 2016, 7:08:16 AM
    Author     : evio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="br.com.egames.Conexao"%>
<%@page import="br.com.egames.TelefoneDAO"%>
<%@page import="br.com.egames.Telefone"%>
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
            String senhaFunc = request.getParameter("senhaFunc");
            if (senhaFunc == null || senhaFunc.equals("")) {
                senhaFunc = "";
            }
            String telefone1 = request.getParameter("telefone1");
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
            }
            String cepFunc = request.getParameter("cepFunc");
            if (cepFunc == null || cepFunc.equals("")) {
                cepFunc = "";
            }
            String carteiraFunc = request.getParameter("carteiraFunc");
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
            Telefone tel = new Telefone();
            TelefoneDAO teld = new TelefoneDAO();

            func.setPerAcessFunc(2);
            func.setCepFunc(cepFunc);
            func.setCpfFunc(cpfFunc);
            func.setDataCadastro(data.toString());
            func.setEmailFunc(emailFunc);
            func.setEnderecoFunc(enderecoFunc);

            func.setNomeFunc(nomeFunc);
            func.setNumCarteiraFunc(carteiraFunc);
            //func.setMatriculaFunc();
            func.setRgFunc(rgFunc);
            func.setSenhaFunc(senhaFunc);
            //Verificando qual botão foi acionado
            if (crud.equals("Cadastrar")) {
                //Enviando o objeto para o banco
                out.print(funcd.inserir(func));
                
                String sql = "select MAX(matriculafunc) FROM funcionario";
                Connection con = Conexao.abrirConexao();
                PreparedStatement pst = con.prepareStatement(sql);
                ResultSet rs = pst.executeQuery();
                
                tel.setIdFuncionario(Integer.parseInt(sql));
                tel.setTelefone1(telefone1);
                tel.setTelefone2(telefone2);
                tel.setTelefone3(telefone3);
                
                out.print(teld.inserirFuncionario(tel));
            }

        %>
    </body>
</html>
