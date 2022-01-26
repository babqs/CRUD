/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import MODEL.Produto;
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
public class DAOProduto {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Produto> listaProduto = new ArrayList<>();
    
    public DAOProduto() throws ClassNotFoundException {
        conn = new Conexao().getConexao();
    }
    
    public void inserirProduto(Produto produto){
        String sql = "INSERT INTO tb_produto (nome_produto, qtd_produto) VALUES ( ?, ?)";
        
        try{
            
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getNome_produto());
            stmt.setInt(2, produto.getQtd_produto());
            stmt.execute();
            stmt.close();
            
        }catch(SQLException e){
            throw new RuntimeException ("Erro ao inserir produto: " + e.getMessage());
        }
    }
    
    public ArrayList<Produto> listarProduto() {
        String sql = "SELECT * FROM tb_produto";
        try {
            //passa o caminho da conexão
            st = conn.createStatement();
            //passa para o resultado rs o retorno da instrução SQL
            rs = st.executeQuery(sql);
            //estrutura de repetição para validação do arraylist
            while (rs.next()) {
                Produto produto = new Produto();
                produto.setId_produto(rs.getInt("id_produto"));
                produto.setNome_produto(rs.getString("nome_produto"));
                produto.setQtd_produto(rs.getInt("qtd_produto"));
                listaProduto.add(produto);
            }

        } catch (SQLException erro) {
            throw new RuntimeException("Erro ao listar todos os produtos: " + erro.getMessage());
        }
        return listaProduto;
    }
    
     public ArrayList<Produto> listarProdutoNome(String valor) {
        String sql = "SELECT * FROM tb_produto WHERE nome_produto LIKE '%" + valor + "%'";
        try {
            //passa o caminho da conexão
            st = conn.createStatement();
            //passa para o resultado rs o retorno da instrução SQL
            rs = st.executeQuery(sql);
            //estrutura de repetição para validação do arraylist
            while (rs.next()) {
                Produto produto = new Produto();
                produto.setId_produto(rs.getInt("id_produto"));
                produto.setNome_produto(rs.getString("nome_produto"));
                produto.setQtd_produto(rs.getInt("qtd_produto"));
                listaProduto.add(produto);
            }

        } catch (SQLException erro) {
            throw new RuntimeException("Erro ao listar todos os produtos: " + erro.getMessage());
        }
        return listaProduto;
    }
     
     public void excluirProduto(Produto produto){
        String sql = "DELETE FROM tb_produto WHERE id_produto = ?";
        
        try{
            
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, produto.getId_produto());

            stmt.execute();
            stmt.close();
            
        }catch(SQLException erro){
            throw new RuntimeException ("Erro ao excluir produto: " + erro.getMessage());
        }
    }
     
     public void editarProduto(Produto produto){
         String sql = "UPDATE tb_produto SET nome_produto = ?, qtd_produto = ? WHERE id_produto = ?";
         
         try{
         stmt = conn.prepareCall(sql);
         
         stmt.setString(1, produto.getNome_produto());
         stmt.setInt(2, produto.getQtd_produto());
         stmt.setInt(3, produto.getId_produto());
         
         stmt.execute();
         stmt.close();
         
         } catch(SQLException erro){
             throw new RuntimeException ("Erro ao editar produto: " + erro.getMessage());
         }
     }
}
