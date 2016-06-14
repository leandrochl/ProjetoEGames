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
        sql += "values (?,?,?,?)";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, telefone.getIdTelefone());
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
    public String alterar(Telefone telefone) {
        String sql = "update telefone set ";
        sql += "telefone1=?,"
                + "telefone2=?,"
                + "telefone3=?";
        sql += " where idtelefone=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setString(1, telefone.getIdTelefone());
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

    public String excluir(Telefone telefone) {
        String sql = "delete from telefone ";
        sql += "where idtelefone=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setString(1, telefone.getIdTelefone());
            
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
