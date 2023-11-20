/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class Conexao {
    
    private Connection conexao;
    
    public Conexao(){
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                conexao=DriverManager.getConnection("jdbc:mysql://localHOST:3306/dbjava","root","");
        }catch (SQLException e){
            throw new RuntimeException("Nao foi possivel conectar com o BD");
        }catch (ClassNotFoundException e){
            throw new RuntimeException (e.getMessage());
            
        }
       
    }
    
    public Connection getConexao(){
        return this.conexao;
    }
    
    public void closeConexao(){
        try {
            this.conexao.close();
        }catch (SQLException e){
            System.err.println(e.getMessage());
        }
    }
    
}
