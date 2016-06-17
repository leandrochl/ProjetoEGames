<%-- 
    Document   : alteraTransportadora
    Created on : Jun 11, 2016, 3:48:34 PM
    Author     : evio
--%>

<%@page import="br.com.egames.Transportadora"%>
<%@page import="br.com.egames.TransportadoraDAO"%>
<%-- 
    Document   : Transportadora
    Created on : Jun 8, 2016, 9:28:28 AM
    Author     : evio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração dos Dados | Página do Cliente</title>
                <link rel="stylesheet" type="text/css" href="../css/layout_geral.css">
        <link rel="stylesheet" type="text/css" href="../css/menu_suspenso.css">
        <link rel="stylesheet" type="text/css" href="../css/formatacao_form.css">
                 <!-- Menu Suspenso -->
        <div id='cssmenu'>
            <ul>
                <li class='active'><a href='index.html'><span>Início</span></a></li>
                <li><a href='../pagina/paginaCliente.jsp'><span>MINHA PÁGINA</span></a></li>
                <li><a href='atencao_cliente.php'><span>Faça o seu pedido</span></a></li>
                <li><a href='quem_somos.php'><span>Quem somos</span></a></li>
                <li><a href='deixe_sua_opiniao.php'><span>Deixa a sua opinião</span></a></li>
                <li><a href='localizacao.html'><span>Como chegar</span></a></li>
            </ul>
        </div>
        <!--FIM DO MENU SUSPENSO -->
    </head>
    
    <body>
        <%

            // teminar session.getAttribute(name)
            Transportadora trans = new Transportadora();
            TransportadoraDAO transd = new TransportadoraDAO();
           //Telefone tel = new Telefone();
           // TelefoneDAO teld = new TelefoneDAO();

            if (session.getAttribute("login") == null) {
                //request.getSession().invalidate();
                response.sendRedirect("../altenticacao/login.jsp");
            }
            
            String cnpj = request.getParameter("valor_selecionado");
            String crud = request.getParameter("crud");
            
            
             trans=transd.buscaPorCnpj(cnpj);
            
            if(crud.equals("Deletar")){
                transd.excluir(trans);
            
            }
           
            
            String nomeTrans = trans.getNomeTransp();
            if (nomeTrans == null || nomeTrans.equals("")) {
                nomeTrans = "";
            }
            String enderecoTrans = trans.getEnderecoTransp();
            if (enderecoTrans == null || enderecoTrans.equals("")) {
                enderecoTrans = "";
            }
            String emailTrans = trans.getEmailTransp();
            if (emailTrans == null || emailTrans.equals("")) {
                emailTrans = "";
            }

         
     /*       String telefone1 = tel.getTelefone1();
            if (telefone1 == null || telefone1.equals("")) {
                telefone1 = "";
            }
            String telefone2 = tel.getTelefone2();
            if (telefone2 == null || telefone2.equals("")) {
                telefone2 = "";
            }
            String telefone3 = tel.getTelefone3();
            if (telefone3 == null || telefone3.equals("")) {
                telefone3 = "";
            }
         */    
             //  if(cli.getPerAcesso()!=1){
               //    response.sendRedirect("../altenticacao/login.jsp");
               
            

            // cli = cd.buscaPorCPF(Long.parseLong(session.getAttribute("login").toString()));
          

               
        %>
        <div><h2>Alteração dos Dados</h2></div>
        <form action="crud/alteraFornecedorCrud.jsp" method="post" name="form1" >
            <label for="fname">Nome :&emsp;</label><input type="text" name="nomeTrans" value="<%=nomeTrans%>">
            <p><label for="lname">Endereço:&emsp;</label><input type="text" name="enderecoTrans" value="<%=enderecoTrans%>"></p>
            <p><label for="lname">Email:&emsp;</label><input type="text" name="cepTrans" value="<%=emailTrans%>"></p>
           <input type="hidden" name="cnpjTrans" value="<%=trans.getCnpjTransp()%>">
           
            <div>
                <!-- <input type="submit" name="crud" value="Sign In"/> -->
                <input type="submit" name="crud" value="Alterar" />
                <input type="button" name="voltar" value="Voltar" onclick="history.go(-1)" />
                <!--  <input type="submit" name="crud" value="Excluir"/>
                  <input type="submit" name="crud" value="Pesquisar"/>
                  <input type="reset" value="Limpar"/> -->
            </div>
        </form>
    </body>
</html>