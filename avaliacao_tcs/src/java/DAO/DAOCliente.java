/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import MODEL.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Bárbara Quesada Santana
 */
public class DAOCliente {

    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Cliente> listaCliente = new ArrayList<>();

    public DAOCliente() throws ClassNotFoundException {
        conn = new Conexao().getConexao();
    }

    public void inserirCliente(Cliente cliente) {
        String sql = "INSERT INTO tb_cliente (nome_cliente, email_cliente, telefone_cliente) VALUES ( ?, ?, ? )";

        try {

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNome_cliente());
            stmt.setString(2, cliente.getEmail_cliente());
            stmt.setString(3, cliente.getTelefone_cliente());
            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException("Erro ao inserir cliente: " + e.getMessage());
        }
    }

    public ArrayList<Cliente> listarCliente() {
        String sql = "SELECT * FROM tb_cliente";
        try {
            //passa o caminho da conexão
            st = conn.createStatement();
            //passa para o resultado rs o retorno da instrução SQL
            rs = st.executeQuery(sql);
            //estrutura de repetição para validação do arraylist
            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setId_cliente(rs.getInt("id_cliente"));
                cliente.setNome_cliente(rs.getString("nome_cliente"));
                cliente.setEmail_cliente(rs.getString("email_cliente"));
                cliente.setTelefone_cliente(rs.getString("telefone_cliente"));
                listaCliente.add(cliente);
            }

        } catch (SQLException erro) {
            throw new RuntimeException("Erro ao listar todos os usuários: " + erro.getMessage());
        }
        return listaCliente;
    }

    public ArrayList<Cliente> listarClienteNome(String valor) {
        String sql = "SELECT * FROM tb_cliente WHERE nome_cliente LIKE '%" + valor + "%'";
        try {
            //passa o caminho da conexão
            st = conn.createStatement();
            //passa para o resultado rs o retorno da instrução SQL
            rs = st.executeQuery(sql);
            //estrutura de repetição para validação do arraylist
            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setId_cliente(rs.getInt("id_cliente"));
                cliente.setNome_cliente(rs.getString("nome_cliente"));
                cliente.setEmail_cliente(rs.getString("email_cliente"));
                cliente.setTelefone_cliente(rs.getString("telefone_cliente"));
                listaCliente.add(cliente);
            }

        } catch (SQLException erro) {
            throw new RuntimeException("Erro ao buscar cliente: " + erro.getMessage());
        }
        return listaCliente;
    }

    public void excluirCliente(Cliente cliente) {
        String sql = "DELETE FROM tb_cliente WHERE id_cliente = ?";

        try {

            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, cliente.getId_cliente());

            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException("Erro ao excluir cliente: " + e.getMessage());
        }
    }

    public void editarCliente(Cliente cliente) {
        String sql = "UPDATE tb_cliente SET nome_cliente = ?, email_cliente = ?, telefone_cliente = ? WHERE id_cliente = ?";

        try {

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNome_cliente());
            stmt.setString(2, cliente.getEmail_cliente());
            stmt.setString(3, cliente.getTelefone_cliente());
            stmt.setInt(4, cliente.getId_cliente());

            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException("Erro ao editar cliente: " + e.getMessage());
        }
    }

}
