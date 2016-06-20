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
                senha = "vazio";
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
          
            String crud = request.getParameter("crud");
            //  if (!crud.equals("Pesquisar")) {
            //Convertendo dados
            // }
            //Criando objetos das classes Cargo e CargoDAO
            Cliente cli = new Cliente();
            ClienteDAO clid = new ClienteDAO();
            Telefone tel = new Telefone();
            TelefoneDAO teld = new TelefoneDAO();
            Date data = new Date();
            
            //Atribuindo valores ao objeto cliente
            cli.setCepCliente(cep);
            cli.setCpfCliente(cpfCli);
            cli.setDataCadastro(data.toString());
            cli.setEmailCliente(email);
            cli.setEnderecoCliente(endereco);
          
            /*
            tel.setIdTelCliente(cli.getCpfCliente());
            tel.setIdTelFornecedor("null");
            tel.setIdTelFuncionario(12);
            tel.setIdTelTransportadora("null");
            tel.setTelefone1(telefone1);
            tel.setTelefone2(telefone2);
            tel.setTelefone3(telefone3);
            */
            cli.setNomeCliente(nome);
            cli.setPerAcesso(1); //PERMISSÃO DE ACESSO DE CLIENTE É SEMPRE 1
            cli.setRgCliente(rg);
            cli.setSenhaCliente(senha);
            //Verificando qual botão foi acionado
            if (crud.equals("Cadastrar")) {
                //Enviando o objeto para o banco
                out.print(clid.inserir(cli));
                //out.print(teld.inserir(tel)); 
                
            }
          
        %>
    </body>
</html>
