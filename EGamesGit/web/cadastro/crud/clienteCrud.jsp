<%@page import="java.util.Date"%>
<%@page import="br.com.egames.Cliente,br.com.egames.ClienteDAO"%>
<%@page import="br.com.egames.Telefone,br.com.egames.TelefoneDAO"%>
<%@page import="java.lang.*" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD para Cliente</title>
    </head>
    <body>

        <%
            //Pegando parâmetro do formulário carg
            String nome = request.getParameter("nome");
            if (nome == null || nome.equals("")) {
                nome = "";
            }
            String endereco = request.getParameter("endereco");
            if (endereco == null || endereco.equals("")) {
                endereco = "";
            }
            String email = request.getParameter("email");
            if (email == null || email.equals("")) {
                email = "";
            }
            String senha = request.getParameter("senha");
            if (senha == null || senha.equals("")) {
                senha = "";
            }
            String senha2 = request.getParameter("senha2");
            if (senha2 == null || senha2.equals("")) {
                senha2 = "";
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
            String dataCadastro = request.getParameter("dataCadastro");
            if (dataCadastro == null || dataCadastro.equals("")) {
                dataCadastro = "";
            }
            String cep = request.getParameter("cep");
            if (cep == null || cep.equals("")) {
                cep = "0";
            }
            String rg = request.getParameter("rg");
            if (rg == null || rg.equals("")) {
                rg = "0";
            }
            String cpfCli = request.getParameter("cpfCli");
            if (cpfCli == null || cpfCli.equals("")) {
                cpfCli = "0";
            }
            String perAcesso = request.getParameter("perAcesso");
            if (perAcesso == null || perAcesso.equals("")) {
                perAcesso = "0";
            }

            String crud = request.getParameter("crud");

            Integer iCepCliente = 0;
            Integer iRgCliente = 0;
            long iCpfCliente = iCpfCliente = Long.parseLong(cpfCli);;
            Integer iPerAcesso = 0;

            //  if (!crud.equals("Pesquisar")) {
            //Convertendo dados
            iCepCliente = Integer.parseInt(cep);
            iRgCliente = Integer.parseInt(rg);
            
            iPerAcesso = Integer.parseInt(perAcesso);

            // }
            //Criando objetos das classes Cargo e CargoDAO
            Cliente cli = new Cliente();
            ClienteDAO clid = new ClienteDAO();
            Telefone tel = new Telefone();
            TelefoneDAO teld = new TelefoneDAO();
            Date data = new Date();
            
            //Atribuindo valores ao objeto cliente
            cli.setCepCliente(iCepCliente);
            cli.setCpfCliente(iCpfCliente);
            cli.setDataCadastro(data.toString());
            cli.setEmailCliente(email);
            cli.setEnderecoCliente(endereco);
            tel.setIdTelefone("5");
            cli.setIdTelefone(tel.getIdTelefone());
            tel.setTelefone1(telefone1);
            tel.setTelefone2(telefone2);
            tel.setTelefone3(telefone3);
            cli.setNomeCliente(nome);
            cli.setPerAcesso(1); //PERMISSÃO DE ACESSO DE CLIENTE É SEMPRE 1
            cli.setRgCliente(iRgCliente);
            cli.setSenhaCliente(senha);
            //Verificando qual botão foi acionado
            if (crud.equals("Cadastrar")) {
                //Enviando o objeto para o banco
                out.print(teld.inserir(tel)); //INSERE O ID NA TABLE TELEFONE PRIMEIRO E DEPOIS A TABELA CLIENTE USA O ID TELEFONE 
                out.print(clid.inserir(cli));
            }
            /* if (crud.equals("Alterar")) {
             out.print(evd.alterar(ev));
             }
             if (crud.equals("Excluir")) {
             out.print(evd.excluir(ev));
             }
             if (crud.equals("Pesquisar")) {
             List<Evento> lc = evd.listarTodos();
             for (Evento evento : lc) {
             out.print("<a href=../evento.jsp?"
             + "dia=" + evento.getDia()
             + "&mes=" + evento.getMes()
             + "&ano=" + evento.getAno()
             + "&descricao=" + evento.getDescricao()
             + ">");
             out.print(evento.getDia() + " ");
             out.print(evento.getMes() + " ");
             out.print(evento.getAno());
             out.print("</a>");
             out.print(evento.getDescricao());
             out.print("<br>");
             }
             }*/
        %>
    </body>
</html>