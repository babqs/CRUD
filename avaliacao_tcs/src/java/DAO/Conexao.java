/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Bárbara Quesada Santana
 */
public class Conexao {

    public Connection getConexao() throws ClassNotFoundException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/bdavaliacao?useSSL=false&useTimezone=true&serverTimezone=UTC", "root", "");
        } catch (SQLException erro) {
            throw new RuntimeException("Erro classe conexão: " + erro.getMessage());
        }
    }
}
