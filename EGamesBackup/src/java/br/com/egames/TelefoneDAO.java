/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.egames;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Leandro
 */
public class TelefoneDAO {

    //Método para inserção de dados
    public String inserirCliente(Telefone telefone) {
        String sql = "insert into telefonecliente ";
        sql += "values (?,?,?,?)";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdCliente());
            pst.setString(2, telefone.getTelefone1());
            pst.setString(3, telefone.getTelefone2());
            pst.setString(4, telefone.getTelefone3());

            if (pst.executeUpdate() > 0) {
                Conexao.fecharConexao(con);
                return "Registro inserido com sucesso.";
            } else {
                Conexao.fecharConexao(con);
                return "Erro ao inserir registro.";
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }

    public String inserirFuncionario(Telefone telefone) {
        String sql = "insert into telefonefuncionario ";
        sql += "values (?,?,?,?)";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setInt(1, telefone.getIdFuncionario());
            pst.setString(2, telefone.getTelefone1());
            pst.setString(3, telefone.getTelefone2());
            pst.setString(4, telefone.getTelefone3());

            if (pst.executeUpdate() > 0) {
                Conexao.fecharConexao(con);
                return "Registro inserido com sucesso.";
            } else {
                Conexao.fecharConexao(con);
                return "Erro ao inserir registro.";
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }

    public String inserirFornecedor(Telefone telefone) {
        String sql = "insert into telefonefornecedor ";
        sql += "values (?,?,?,?)";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdFornecedor());
            pst.setString(2, telefone.getTelefone1());
            pst.setString(3, telefone.getTelefone2());
            pst.setString(4, telefone.getTelefone3());

            if (pst.executeUpdate() > 0) {
                Conexao.fecharConexao(con);
                return "Registro inserido com sucesso.";
            } else {
                Conexao.fecharConexao(con);
                return "Erro ao inserir registro.";
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }

    public String inserirTransportadora(Telefone telefone) {
        String sql = "insert into telefonetransportadora ";
        sql += "values (?,?,?,?)";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdTransportadora());
            pst.setString(2, telefone.getTelefone1());
            pst.setString(3, telefone.getTelefone2());
            pst.setString(4, telefone.getTelefone3());

            if (pst.executeUpdate() > 0) {
                Conexao.fecharConexao(con);
                return "Registro inserido com sucesso.";
            } else {
                Conexao.fecharConexao(con);
                return "Erro ao inserir registro.";
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }

    //Método para alteração de dados
    public String alterarCliente(Telefone telefone) {
        String sql = "update telefonecliente set ";
        sql += "telefone1=?,"
                + "telefone2=?,"
                + "telefone3=?";
        sql += " where idcliente=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdCliente());
            pst.setString(2, telefone.getTelefone1());
            pst.setString(3, telefone.getTelefone2());
            pst.setString(4, telefone.getTelefone3());

            if (pst.executeUpdate() > 0) {
                Conexao.fecharConexao(con);
                return "Registro alterado com sucesso.";
            } else {
                Conexao.fecharConexao(con);
                return "Erro ao alterar registro.";
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }

    public String alterarFuncionario(Telefone telefone) {
        String sql = "update telefonefuncionario set ";
        sql += "telefone1=?,"
                + "telefone2=?,"
                + "telefone3=?";
        sql += " where idtfuncionario=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setInt(1, telefone.getIdFuncionario());
            pst.setString(2, telefone.getTelefone1());
            pst.setString(3, telefone.getTelefone2());
            pst.setString(4, telefone.getTelefone3());

            if (pst.executeUpdate() > 0) {
                Conexao.fecharConexao(con);
                return "Registro alterado com sucesso.";
            } else {
                Conexao.fecharConexao(con);
                return "Erro ao alterar registro.";
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }

    public String alterarFornecedor(Telefone telefone) {
        String sql = "update telefonefornecedor set ";
        sql += "telefone1=?,"
                + "telefone2=?,"
                + "telefone3=?";
        sql += " where idfornecedor=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdFornecedor());
            pst.setString(2, telefone.getTelefone1());
            pst.setString(3, telefone.getTelefone2());
            pst.setString(4, telefone.getTelefone3());

            if (pst.executeUpdate() > 0) {
                Conexao.fecharConexao(con);
                return "Registro alterado com sucesso.";
            } else {
                Conexao.fecharConexao(con);
                return "Erro ao alterar registro.";
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }

    public String alterarTransportadora(Telefone telefone) {
        String sql = "update telefonetransportadora set ";
        sql += "telefone1=?,"
                + "telefone2=?,"
                + "telefone3=?";
        sql += " where idtransportadora=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdTransportadora());
            pst.setString(2, telefone.getTelefone1());
            pst.setString(3, telefone.getTelefone2());
            pst.setString(4, telefone.getTelefone3());

            if (pst.executeUpdate() > 0) {
                Conexao.fecharConexao(con);
                return "Registro alterado com sucesso.";
            } else {
                Conexao.fecharConexao(con);
                return "Erro ao alterar registro.";
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }
    
   //Método para listar todos os cargos
    public Telefone listarCliente(String telefone){
        String sql = "select telefone1, telefone2, telefone3 from telefonecliente where idcliente=?";
        Connection con = Conexao.abrirConexao();
       // List<Telefone> lista = new ArrayList<>();
        
        try{
           PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, telefone);
            ResultSet rs = pst.executeQuery();
             if(rs.next()){
                    Telefone telefoneOBJ = new Telefone();
                    telefoneOBJ.setTelefone1(rs.getString(1));
                    telefoneOBJ.setTelefone2(rs.getString(2));
                    telefoneOBJ.setTelefone3(rs.getString(3));
                 //   lista.add(telefoneOBJ);
                
                Conexao.fecharConexao(con);
                return telefoneOBJ;
            }else{
                Conexao.fecharConexao(con);
                return null;
            }
        }catch(SQLException e){
            Conexao.fecharConexao(con);
            return null;
        }
        
    }
         //Método para listar todos os cargos
    public Telefone listarFuncionario(Integer telefone){
        String sql = "select telefone1, telefone2, telefone3 from telefonefuncionario where idfuncionario=?";
        Connection con = Conexao.abrirConexao();
       // List<Telefone> lista = new ArrayList<>();
        
        try{
           PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, telefone);
            ResultSet rs = pst.executeQuery();
             if(rs.next()){
                    Telefone telefoneOBJ = new Telefone();
                    telefoneOBJ.setTelefone1(rs.getString(1));
                    telefoneOBJ.setTelefone2(rs.getString(2));
                    telefoneOBJ.setTelefone3(rs.getString(3));
                 //   lista.add(telefoneOBJ);
                
                Conexao.fecharConexao(con);
                return telefoneOBJ;
            }else{
                Conexao.fecharConexao(con);
                return null;
            }
        }catch(SQLException e){
            Conexao.fecharConexao(con);
            return null;
        }
    } 
    
    
    //Método para listar todos os cargos
    public Telefone listarFornecedor(String telefone){
        String sql = "select telefone1, telefone2, telefone3 from telefonefornecedor where idfornecedor=?";
        Connection con = Conexao.abrirConexao();
       // List<Telefone> lista = new ArrayList<>();
        
        try{
           PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, telefone);
            ResultSet rs = pst.executeQuery();
             if(rs.next()){
                    Telefone telefoneOBJ = new Telefone();
                    telefoneOBJ.setTelefone1(rs.getString(1));
                    telefoneOBJ.setTelefone2(rs.getString(2));
                    telefoneOBJ.setTelefone3(rs.getString(3));
                 //   lista.add(telefoneOBJ);
                
                Conexao.fecharConexao(con);
                return telefoneOBJ;
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
