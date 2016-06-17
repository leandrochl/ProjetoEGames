<%-- 
    Document   : listagemAlteraTransp
    Created on : Jun 17, 2016, 2:14:43 PM
    Author     : evio
--%>

<%@page import="br.com.egames.TransportadoraDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.egames.Transportadora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração dos Dados | Página do Cliente</title>
        <link rel="stylesheet" type="text/css" href="../css/layout_geral.css">
        <link rel="stylesheet" type="text/css" href="../../css/menu_suspenso.css">
        <link rel="stylesheet" type="text/css" href="../../css/formatacao_form.css">
                 <!-- Menu Suspenso -->
        <div id='cssmenu'>
            <ul>
                <li class='active'><a href='../../index.html'><span>Início</span></a></li>
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
     <form action="../alteracao/alteraTransportadora.jsp" method="post">   
     <select name="valor_selecionado" value="">
        <%

            TransportadoraDAO transd= new TransportadoraDAO(); 
          //  Transportadora trans = new Transportadora();
            List<Transportadora> list = new ArrayList();
            
            
            if (session.getAttribute("login") == null) {
               
                response.sendRedirect("../altenticacao/login.jsp");
            }
           
           list = transd.listarTodos();
           for(Transportadora OBJTrans : list ){
           %>
           
           <option value="<%=OBJTrans.getCnpjTransp()%>"> <%=OBJTrans.getNomeTransp()%></option>
           
           <%
         }
        %>
    </select>
    
            <div>
                  
                <input type="submit" name="crud" value="Alterar" />
                <input type="submit" name="crud" value="Deletar" />
                <input type="button" name="voltar" value="Voltar" onclick="history.go(-1)" />
               
            </div>
    </form>   
    </body>
</html>
