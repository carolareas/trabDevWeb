/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entidade.Transaction;
import entidade.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import static javax.swing.UIManager.getString;

/**
 *
 * @author User
 */
public class userDAO implements Dao<User>{

    @Override
    public User get(int id) {
        Conexao conexao = new Conexao();
        try{
            PreparedStatement sql = conexao.getConexao().prepareStatement("SELECT * FROM usuarios WHERE ID =?");
            sql.setInt(1,id);
            ResultSet resultado=sql.executeQuery();
            User user = new User();
            
            if(resultado != null){
                while(resultado.next()){
                    user.setId(Integer.parseInt(resultado.getString("ID")));
                    user.setNome(resultado.getString("NOME"));
                    user.setCpf(resultado.getString("CPF"));
                    user.setEndereco(resultado.getString("ENDERECO"));
                    user.setSenha(resultado.getString("SENHA"));
                    
                }
            }
            return user;            
            
        }catch (SQLException e){
            throw new RuntimeException("Query de select get user incorreta"); 

        }finally{
            conexao.closeConexao();
        }
    }

    @Override
    public ArrayList<User> getAll() {
        ArrayList<User> usuarios = new ArrayList();
        Conexao conexao = new Conexao();
        
        try{
            String selectSQL = "SELECT * FROM usuarios";
            PreparedStatement preparedStatement;
            preparedStatement= conexao.getConexao().prepareStatement(selectSQL);
            ResultSet resultado = preparedStatement.executeQuery();
            
            if (resultado !=null){
                while(resultado.next()){
                    User user= new User(resultado.getInt("ID"),
                        resultado.getString("NOME"),
                        resultado.getString("CPF"),
                        resultado.getString("SENHA"),
                        resultado.getString("ENDERECO"));
                    usuarios.add(user);
                    }
            }
        }catch (SQLException e){
            throw new RuntimeException("Query de select get ALL incorreta"); 

        }finally{
            conexao.closeConexao();
        }
        
        
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public void insert(User user){
        Conexao conexao = new Conexao();
        try {
            String insertSQL = "INSERT INTO usuarios (NOME, CPF, SENHA, ENDERECO) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = conexao.getConexao().prepareStatement(insertSQL);
            preparedStatement.setString(1, user.getNome());
            preparedStatement.setString(2, user.getCpf());
            preparedStatement.setString(3, user.getSenha());
            preparedStatement.setString(4, user.getEndereco());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException("Erro ao inserir usuário", e);
        } finally {
            conexao.closeConexao();
        }
    }
    @Override
    public void update(User user){
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public void delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    
    public boolean authenticate(String cpf, String senha) {
        Conexao conexao = new Conexao();
        try {
            PreparedStatement sql = conexao.getConexao().prepareStatement("SELECT * FROM usuarios WHERE CPF = ? AND SENHA = ?");
            sql.setString(1, cpf);
            sql.setString(2, senha);
            ResultSet resultado = sql.executeQuery();
            return resultado.next(); 
        } catch (SQLException e) {
            throw new RuntimeException("Usuário ou senha incorretos", e);
        } finally {
            conexao.closeConexao();
        }
    }
    
        public User getUserByCPF(String cpf) {
        Conexao conexao = new Conexao();
        try {
            PreparedStatement sql = conexao.getConexao().prepareStatement("SELECT * FROM usuarios WHERE CPF = ?");
            sql.setString(1, cpf);
            ResultSet resultado = sql.executeQuery();
            
            if (resultado.next()) {
                User user = new User();
                user.setId(resultado.getInt("ID"));
                user.setNome(resultado.getString("NOME"));
                user.setCpf(resultado.getString("CPF"));
                user.setEndereco(resultado.getString("ENDERECO"));
                user.setSenha(resultado.getString("SENHA"));
                return user;
            } else {
                return null; // User with the specified CPF not found
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving user by CPF", e);
        } finally {
            conexao.closeConexao();
        }
    }
        
        public void insertTransaction(Transaction transaction) {
        Conexao conexao = new Conexao();
        try {
            String insertSQL = "INSERT INTO Transacoes (UserIDOrigem, UserIDDestino, Tipo, Valor) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = conexao.getConexao().prepareStatement(insertSQL);
            preparedStatement.setInt(1, transaction.getUserIdOrigem());
            preparedStatement.setInt(2, transaction.getUserIdDestino());
            preparedStatement.setString(3, transaction.getTipo());
            preparedStatement.setBigDecimal(4, transaction.getValor());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException("Error inserting transaction", e);
        } finally {
            conexao.closeConexao();
        }
    }
}
