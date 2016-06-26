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

/**
 *
 * @author evio
 */
public class LoginDAO {

    public Boolean verificaCliente(Login login) throws SQLException {
        String sql = "select * from cliente ";
        sql += "where cpfcliente=? and senhacliente=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, login.getLogin());
            pst.setString(2, login.getSenha());

            ResultSet rs = pst.executeQuery();
            if (!rs.isBeforeFirst()) {
                Conexao.fecharConexao(con);
                return false;

            } else {
                Conexao.fecharConexao(con);
                return true;
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return null;

        }

    }

    public Boolean verificaFuncionario(Login login) {

        String sql = "select * from funcionario ";
        sql += "where matriculafunc=? and senhafunc=? and peracessfunc=2";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setInt     (1, Integer.parseInt(login.getLogin()));
            pst.setString  (2, login.getSenha());

            ResultSet rs = pst.executeQuery();
            if (!rs.isBeforeFirst()) {
                Conexao.fecharConexao(con);
                return false;

            } else {
                Conexao.fecharConexao(con);

                return true;
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return null;

        }
    }

    public Boolean verificaAdmin(Login login) {

        String sql = "select * from funcionario ";
        sql += "where matriculafunc=? and senhafunc=? and peracessfunc=3";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setInt     (1, Integer.parseInt(login.getLogin()));
            pst.setString  (2, login.getSenha());

            ResultSet rs = pst.executeQuery();
            if (!rs.isBeforeFirst()) {
                Conexao.fecharConexao(con);
                return false;

            } else {
                Conexao.fecharConexao(con);

                return true;
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return null;

        }
    }
}
