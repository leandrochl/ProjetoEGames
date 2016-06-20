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
    public String inserir(Telefone telefone) {
        String sql = "insert into telefone ";
        sql += "values (?,?,?,?,?,?,?)";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdTelCliente());
            pst.setString(2, telefone.getIdTelFornecedor());
            pst.setInt(3, telefone.getIdTelFuncionario());
            pst.setString(4, telefone.getIdTelTransportadora());
            pst.setString(5, telefone.getTelefone1());
            pst.setString(6, telefone.getTelefone2());
            pst.setString(7, telefone.getTelefone3());

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
        String sql = "update telefone set ";
        sql    += "telefone1=?,"
                + "telefone2=?,"
                + "telefone3=?";
        sql += " where idtelcliente=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdTelCliente());
 
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
        String sql = "update telefone set ";
        sql    += "telefone1=?,"
                + "telefone2=?,"
                + "telefone3=?";
        sql += " where idtelfuncionario=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setInt(1, telefone.getIdTelFuncionario());
 
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
        String sql = "update telefone set ";
        sql    += "telefone1=?,"
                + "telefone2=?,"
                + "telefone3=?";
        sql += " where idtelfornecedor=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdTelFornecedor());
 
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
        String sql = "update telefone set ";
        sql    += "telefone1=?,"
                + "telefone2=?,"
                + "telefone3=?";
        sql += " where idteltransportadora=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdTelTransportadora());
 
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

    //Método para excluir dados
    public String excluirCliente(Telefone telefone) {
        String sql = "delete from telefone ";
        sql += "where idtelcliente=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdTelCliente());

            if (pst.executeUpdate() > 0) {
                Conexao.fecharConexao(con);
                return "Registro excluído com sucesso.";
            } else {
                Conexao.fecharConexao(con);
                return "Erro ao excluir registro.";
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }
    //Método para excluir dados
    public String excluirFornecedor(Telefone telefone) {
        String sql = "delete from telefone ";
        sql += "where idtelfornecedor=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdTelFornecedor());

            if (pst.executeUpdate() > 0) {
                Conexao.fecharConexao(con);
                return "Registro excluído com sucesso.";
            } else {
                Conexao.fecharConexao(con);
                return "Erro ao excluir registro.";
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }
    //Método para excluir dados
    public String excluirFuncionario(Telefone telefone) {
        String sql = "delete from telefone ";
        sql += "where idtelfuncionario=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setInt(1, telefone.getIdTelFuncionario());

            if (pst.executeUpdate() > 0) {
                Conexao.fecharConexao(con);
                return "Registro excluído com sucesso.";
            } else {
                Conexao.fecharConexao(con);
                return "Erro ao excluir registro.";
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }
    //Método para excluir dados
    public String excluirTransportadora(Telefone telefone) {
        String sql = "delete from telefone ";
        sql += "where idteltransportadora=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdTelTransportadora());

            if (pst.executeUpdate() > 0) {
                Conexao.fecharConexao(con);
                return "Registro excluído com sucesso.";
            } else {
                Conexao.fecharConexao(con);
                return "Erro ao excluir registro.";
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return e.getMessage();
        }
    }

    
}
