<%-- 
    Document   : executar_produto
    Created on : 21/01/2022, 16:36:39
    Author     : Bárbara Quesada Santana
--%>

<%@page import="DAO.DAOProduto"%>
<%@page import="MODEL.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Produto</title>
    </head>
    <body>
        <%
            Produto produto = new Produto();
            DAOProduto produtodao = new DAOProduto();
            
            try {

                produto.setNome_produto(request.getParameter("nome_produto"));
                produto.setQtd_produto(Integer.parseInt(request.getParameter("qtd_produto")));

                produtodao.inserirProduto(produto);
                
                out.print("Produto inserido com sucesso!");
                out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
            } catch (Exception erro) {
                throw new RuntimeException("Erro ao executar inserir produto: " + erro.getMessage());
            }
        %>
    </body>
</html>
