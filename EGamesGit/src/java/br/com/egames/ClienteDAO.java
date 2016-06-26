
//PRONTO
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.egames;
//merda
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;
/**
 *
 * @author Leandro
 */
public class ClienteDAO {
    //Método para inserção de dados
    public String inserir(Cliente cliente){
        String sql = "insert into cliente values (?,?,?,?,?,?,?,?,?)";
        Connection con = Conexao.abrirConexao();
        try{
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setString   (1, cliente.getNomeCliente());
            pst.setString   (2, cliente.getEnderecoCliente());
            pst.setString   (3, cliente.getCepCliente());
            pst.setString   (4, cliente.getRgCliente());
            pst.setString   (5, cliente.getCpfCliente());
            pst.setString   (6, cliente.getEmailCliente());
            pst.setString   (7, cliente.getSenhaCliente());
            pst.setInt      (8, cliente.getPerAcesso());
            pst.setString   (9,cliente.getDataCadastro());
            
            if(pst.executeUpdate() > 0){
                Conexao.fecharConexao(con);
                return "Registro inserido com sucesso.";
            }else{
                Conexao.fecharConexao(con);
                return "Erro ao inserir registro.";
            }
        }catch(SQLException e){
            Conexao.fecharConexao(con);
            return e.getMessage();
        }        
    }
    
    //Método para alteração de dados
    public String alterar(Cliente cliente){
        String sql = "update cliente set ";
        sql += "nomecliente=?,enderecocliente=?,"
             + "cepcliente=?,rgcliente=?,emailcliente=?";
        sql += " where cpfcliente=?";
        Connection con = Conexao.abrirConexao();
        try{
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setString   (1, cliente.getNomeCliente());
            pst.setString   (2, cliente.getEnderecoCliente());
            pst.setString   (3, cliente.getCepCliente());
            pst.setString   (4, cliente.getRgCliente());
            pst.setString   (5, cliente.getEmailCliente());
            pst.setString   (6, cliente.getCpfCliente());
            
            if(pst.executeUpdate() > 0){
                Conexao.fecharConexao(con);
                return "Registro alterado com sucesso!";
            }else{
                Conexao.fecharConexao(con);
                return "Erro ao alterar registro.";
            }
        }catch(SQLException e){
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }
    //Método para excluir dados
    public String excluir(Cliente cliente){
        String sql = "delete from cliente ";
        sql += "where cpfcliente=?";
        Connection con = Conexao.abrirConexao();
        try{
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setString(1, cliente.getCpfCliente());
            
            if(pst.executeUpdate() > 0){
                Conexao.fecharConexao(con);
                return "Registro excluído com sucesso.";
            }else{
                Conexao.fecharConexao(con);
                return "Erro ao excluir registro.";
            }
        }catch(SQLException e){
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }
    
    //Método para listar todos os cargos
    public List<Cliente> listarTodos(){
        String sql = "select * from cliente";
        
        Connection con = Conexao.abrirConexao();
        
        List<Cliente> lista = new ArrayList<>();
        
        try{
           PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            if(rs != null){
                while(rs.next()){
                    Cliente clienteOBJ = new Cliente();
                    clienteOBJ.setNomeCliente    (rs.getString(1));
                    clienteOBJ.setEnderecoCliente(rs.getString(2));
                    clienteOBJ.setCepCliente     (rs.getString(3));
                    clienteOBJ.setRgCliente      (rs.getString(4));
                    clienteOBJ.setCpfCliente     (rs.getString(5));
                    clienteOBJ.setEmailCliente   (rs.getString(6));
                    clienteOBJ.setSenhaCliente   (rs.getString(7));
                    clienteOBJ.setPerAcesso      (rs.getInt(8));
                    clienteOBJ.setDataCadastro   (rs.getString(9));
                    lista.add(clienteOBJ);
                }
                Conexao.fecharConexao(con);
                return lista;
            }else{
                Conexao.fecharConexao(con);
                return null;
            }
        }catch(SQLException e){
            Conexao.fecharConexao(con);
            return null;
        }
    }
    
    //Método que retorna um objeto, de acordo
    //com o código
    public Cliente buscaPorCPF(String cpf){
        String sql = "select * from cliente ";
        sql += "where cpfcliente=?";
        Connection con = Conexao.abrirConexao();
        try{
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setString(1, cpf);
            
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                     Cliente clienteOBJ = new Cliente();
                    clienteOBJ.setNomeCliente    (rs.getString(1));
                    clienteOBJ.setEnderecoCliente(rs.getString(2));
                    clienteOBJ.setCepCliente     (rs.getString(3));
                    clienteOBJ.setRgCliente      (rs.getString(4));
                    clienteOBJ.setCpfCliente     (rs.getString(5));
                    clienteOBJ.setEmailCliente   (rs.getString(6));
                    clienteOBJ.setSenhaCliente   (rs.getString(7));
                    clienteOBJ.setPerAcesso      (rs.getInt(8));
                    clienteOBJ.setDataCadastro   (rs.getString(9));
                    
                Conexao.fecharConexao(con);
                return clienteOBJ;
            }else{
                Conexao.fecharConexao(con);
                
                return null;
            }
        }catch(SQLException e){
            Conexao.fecharConexao(con);            
            return null;
        }
    }
}
