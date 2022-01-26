<%-- 
    Document   : executar_editar_produto
    Created on : 24/01/2022, 13:21:56
    Author     : Bárbara Quesada Santana
--%>

<%@page import="DAO.DAOProduto"%>
<%@page import="MODEL.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Produto</title>
    </head>
    <body>
        <%
            Produto produto = new Produto();
            DAOProduto produtodao = new DAOProduto();
            
            try {

                produto.setId_produto(Integer.parseInt(request.getParameter("id_produto")));
                produto.setNome_produto(request.getParameter("nome_produto"));
                produto.setQtd_produto(Integer.parseInt(request.getParameter("qtd_produto")));

                produtodao.editarProduto(produto);
                
                out.print("Produto editado com sucesso!");
                out.print("<meta http-equiv='refresh' content='3, url=consultar_produto.jsp'>");
            } catch (Exception erro) {
                throw new RuntimeException("Erro ao executar editar produto: " + erro.getMessage());
            }
        %>
    </body>
</html>
