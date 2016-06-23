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
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Leandro
 */
public class ProdutoDAO {

    //Método para inserção de dados

    public String inserir(Produto produto) throws IOException {
        String sql = "insert into produto (qtdeestoque,descricao,preco,datacadastro,categoria)";
        sql += "values (?,?,?,?,?)";

        Connection con = Conexao.abrirConexao();
        try {
            
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, produto.getQtdeEstoque());
            pst.setString(2, produto.getDescricao());
            pst.setDouble(3, produto.getPreco());
            //pst.setInt(4, produto.getIdProduto());
            pst.setString(4, produto.getDataCadastro());
            pst.setString(5, produto.getCategoria());
            //pst.setBinaryStream(7, fis, (int) produto.getImagem().length());
   
            if (pst.executeUpdate() > 0) {
                Conexao.fecharConexao(con);
                return "Registro inserido com sucesso.";
            } else {
                Conexao.fecharConexao(con);
                return "Erro ao inserir registro.";
            }
         } catch (SQLException e ) {
            Conexao.fecharConexao(con);
            return e.getMessage();
        }

    }

    //Método para alteração de dados
    public String alterar(Produto produto) {
        String sql = "update produto set ";
        sql += "qtdeestoque=?,"
                + "descricao=?,"
                + "preco=?,"
                + "datacadastro=?";
        sql += " where idproduto=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setInt(1, produto.getQtdeEstoque());
            pst.setString(2, produto.getDescricao());
            pst.setDouble(3, produto.getPreco());
            pst.setInt(4, produto.getIdProduto());
            pst.setString(5, produto.getDataCadastro());
            pst.setString(6, produto.getCategoria());
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
    public String excluir(Produto produto) {
        String sql = "delete from produto ";
        sql += "where idproduto=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);

            pst.setInt(1, produto.getIdProduto());

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
    public List<Produto> listarTodos() {
        String sql = "select * from produto";
        Connection con = Conexao.abrirConexao();
        List<Produto> lista = new ArrayList<>();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    Produto c = new Produto();
                    c.setQtdeEstoque(rs.getInt(1));
                    c.setDescricao(rs.getString(2));
                    c.setPreco(rs.getDouble(3));
                    c.setIdProduto(rs.getInt(4));
                    c.setDataCadastro(rs.getString(5));
                    c.setCategoria(rs.getString(6));
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

    //Método que retorna um objeto, de acordo com o código
    public Produto buscaPorCodigo(int cod) {
        String sql = "select * from produto ";
        sql += "where idproduto=?";
        Connection con = Conexao.abrirConexao();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, cod);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                Produto c = new Produto();
                c.setQtdeEstoque(rs.getInt(1));
                c.setDescricao(rs.getString(2));
                c.setPreco(rs.getDouble(3));
                c.setIdProduto(rs.getInt(4));
                c.setDataCadastro(rs.getString(5));
                c.setCategoria(rs.getString(6));
                Conexao.fecharConexao(con);
                return c;
            } else {
                Conexao.fecharConexao(con);

                return null;
            }
        } catch (SQLException e) {
            Conexao.fecharConexao(con);
            return null;
        }
    }

    /**
     *
     * @param categoria
     * @return
     */
    public List<Produto> listarPorCategoria(String categoria) {
        String sql;
        sql = "select * from produto where categoria=?";
        Connection con = Conexao.abrirConexao();
        List<Produto> lista = new ArrayList<>();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, categoria);
            ResultSet rs = pst.executeQuery();

            if (rs != null) {
                while (rs.next()) {
                    Produto c = new Produto();
                    c.setQtdeEstoque(rs.getInt(1));
                    c.setDescricao(rs.getString(2));
                    c.setPreco(rs.getDouble(3));
                    c.setIdProduto(rs.getInt(4));
                    c.setDataCadastro(rs.getString(5));
                    c.setCategoria(rs.getString(6));
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
}
