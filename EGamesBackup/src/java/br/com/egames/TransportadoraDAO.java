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
public class TransportadoraDAO {

    //Método para inserção de dados

    public String inserir(Transportadora transportadora) {
        String sql = "insert into transportadora ";
        sql += "values (?,?,?,?,?)";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setString(1, transportadora.getCnpjTransp());
            pst.setString(2, transportadora.getEnderecoTransp());
            pst.setString(3, transportadora.getCepTransp());
            pst.setString(4, transportadora.getNomeTransp());
            pst.setString(5, transportadora.getEmailTransp());
            

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
    public String alterar(Transportadora transportadora) {
        String sql = "update cargo set ";
        sql += "cnpjtransp=?,"
             + "enderecotransp=?,"
             + "ceptransp=?,"
             + "nometransp=?,"
             + "emailtransp=?";
        sql += " where cnpjtransportadora=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setString(1, transportadora.getCnpjTransp());
            pst.setString(2, transportadora.getEnderecoTransp());
            pst.setString(3, transportadora.getNomeTransp());
            pst.setString(4, transportadora.getEmailTransp());
            pst.setString(5, transportadora.getCepTransp());
            
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

    public String excluir(String transportadora) {
        String sql = "delete from transportadora ";
        sql += "where cnpjtransp=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setString(1, transportadora);
            
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

    //Método para listar todos os cargos
    public List<Transportadora> listarTodos() {
        String sql = "select * from transportadora";
        Connection con = Conexao.abrirConexao();
        List<Transportadora> lista = new ArrayList<>();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    Transportadora c = new Transportadora();
                    
                    c.setCnpjTransp    (rs.getString(1));
                    c.setEnderecoTransp(rs.getString(2));
                    c.setNomeTransp    (rs.getString(3));
                    c.setEmailTransp   (rs.getString(4));
                    c.setCepTransp     (rs.getString(5));
                    
                    lista.add(c);
                }
                Conexao.fecharConexao(con);
                return lista;
            } else {
                Conexao.fecharConexao(con);
                return null;
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return null;
        }
    }
    
    public Transportadora buscaPorCnpj(String cod){
        String sql = "select * from transportadora ";
        sql += "where cnpjtransp=?";
        Connection con = Conexao.abrirConexao();
        try{
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, cod);
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                Transportadora trans = new Transportadora();
                
                trans.setCnpjTransp(rs.getString(1));
                trans.setEnderecoTransp(rs.getString(2));
                trans.setNomeTransp(rs.getString(3));
                trans.setEmailTransp(rs.getString(4));
                trans.setCepTransp(rs.getString(5));
                
                Conexao.fecharConexao(con);
                return trans;
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
