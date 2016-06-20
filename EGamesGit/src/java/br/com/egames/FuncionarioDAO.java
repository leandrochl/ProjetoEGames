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
public class FuncionarioDAO {
    //Método para inserção de dados
    public String inserir(Funcionario funcionario){
        String sql = "insert into funcionario ";
        sql += "values (?,?,?,?,?,?,?,?,?,?,?)";
        Connection con = Conexao.abrirConexao();
        try{
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setString(1, funcionario.getNomeFunc());
            pst.setString(2, funcionario.getEnderecoFunc());
            pst.setString  (3, funcionario.getCepFunc());
            pst.setString   (4, funcionario.getRgFunc());
            pst.setInt   (5, funcionario.getPerAcessFunc());
            pst.setString   (6, funcionario.getCpfFunc());
            pst.setString   (7, funcionario.getNumCarteiraFunc());
            pst.setInt   (8, funcionario.getMatriculaFunc());
            pst.setString(9, funcionario.getEmailFunc());
            pst.setString(10, funcionario.getSenhaFunc());
            pst.setString(11, funcionario.getDataCadastro());
            
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
    public String alterar(Funcionario funcionario){
        String sql = "update funcionario set ";
        sql += "nomefunc=?,"
                + "enderecofunc=?,"
                + "cepfunc=?,"
                + "rgfunc=?,"
                + "cpffunc=?,"
                + "numcarteirafunc=?,"
                + "emailfunc=?"
                + "senhafunc=?";
        sql += " where matriculafunc=?";
        Connection con = Conexao.abrirConexao();
        try{
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setString(1, funcionario.getNomeFunc());
            pst.setString(2, funcionario.getEnderecoFunc());
            pst.setString   (3, funcionario.getCepFunc());
            pst.setString   (4, funcionario.getRgFunc());
          //  pst.setInt   (5, funcionario.getPerAcessFunc());
            pst.setString   (5, funcionario.getCpfFunc());
            pst.setString   (6, funcionario.getNumCarteiraFunc()); 
            pst.setString(7, funcionario.getEmailFunc());
            pst.setString(8, funcionario.getSenhaFunc());
            pst.setInt   (9, funcionario.getMatriculaFunc());
          
            
            if(pst.executeUpdate() > 0){
                Conexao.fecharConexao(con);
                return "Registro alterado com sucesso.";
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
    public String excluir(Funcionario funcionario){
        String sql = "delete from funcionario ";
        sql += "where matriculafunc=?";
        Connection con = Conexao.abrirConexao();
        try{
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setInt(1, funcionario.getMatriculaFunc());
            
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
    public List<Funcionario> listarTodos(){
        String sql = "select * from funcionario";
        Connection con = Conexao.abrirConexao();
        List<Funcionario> lista = new ArrayList<>();
        try{
           PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            if(rs != null){
                while(rs.next()){
                    Funcionario c = new Funcionario();
                    
                    
                    c.setNomeFunc       (rs.getString(1));
                    c.setEnderecoFunc   (rs.getString(2));
                    c.setCepFunc        (rs.getString(3));
                    c.setRgFunc         (rs.getString(4));
                    c.setPerAcessFunc   (rs.getInt(5));
                    c.setCpfFunc        (rs.getString(6));
                    c.setNumCarteiraFunc(rs.getString(7));
                    c.setMatriculaFunc  (rs.getInt(8));
                    c.setEmailFunc      (rs.getString(9));
                    c.setSenhaFunc      (rs.getString(10));
                    c.setDataCadastro   (rs.getString(11));
                    
                    lista.add(c);
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
    
      public Funcionario buscaPorCPF(Long cpf){
        String sql = "select * from funcionario ";
        sql += "where cpfFunc=?";
        Connection con = Conexao.abrirConexao();
        try{
            PreparedStatement pst = con.prepareStatement(sql);
            
            pst.setLong(1, cpf);
            
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                   Funcionario c = new Funcionario();
                    
                    
                    c.setNomeFunc       (rs.getString(1));
                    c.setEnderecoFunc   (rs.getString(2));
                    c.setCepFunc        (rs.getString(3));
                    c.setRgFunc         (rs.getString(4));
                    c.setPerAcessFunc   (rs.getInt(5));
                    c.setCpfFunc        (rs.getString(6));
                    c.setNumCarteiraFunc(rs.getString(7));
                    c.setMatriculaFunc  (rs.getInt(8));
                    c.setEmailFunc      (rs.getString(9));
                    c.setSenhaFunc      (rs.getString(10));
                    c.setDataCadastro   (rs.getString(11));
                    
                Conexao.fecharConexao(con);
                return c;
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