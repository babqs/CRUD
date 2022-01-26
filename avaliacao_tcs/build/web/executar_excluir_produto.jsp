<%-- 
    Document   : executar_excluir_produto
    Created on : 24/01/2022, 11:34:03
    Author     : Bárbara Quesada Santana
--%>

<%@page import="DAO.DAOProduto"%>
<%@page import="MODEL.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Produto</title>
    </head>
    <body>
        <%
            Produto produto = new Produto();
            DAOProduto produtodao = new DAOProduto();
            
            try {

                produto.setId_produto(Integer.parseInt(request.getParameter("id_produto")));

                produtodao.excluirProduto(produto);
                
                out.print("Produto excluído com sucesso!");
                out.print("<meta http-equiv='refresh' content='3, url=consultar_produto.jsp'>");
            } catch (Exception erro) {
                throw new RuntimeException("Erro ao executar excluir produto: " + erro.getMessage());
            }
        %>
    </body>
</html>
