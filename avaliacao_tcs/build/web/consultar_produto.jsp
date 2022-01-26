<%-- 
    Document   : consultar_produto
    Created on : 21/01/2022, 17:12:46
    Author     : Bárbara Quesada Santana
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Consultar Produto</title>
    </head>
    <body>
        <h1 class="titlePage">Consultar Produto</h1>
        <form action="consultar_cliente.jsp" method="post">
            <label>Pesquisar por nome</label>
            <br>
            <input type="text" name="nome_produto" placeholder="Digite o nome"/>
            <input type="submit" value="Pesquisar" class="btn"/>
        </form>

        <%
            out.print("<table border = '1'>");
            out.print("<tr>");
            out.print("<th>ID</th>");
            out.print("<th>NOME</th>");
            out.print("<th>QUANTIDADE</th>");
            out.print("<th>EDITAR</th>");
            out.print("<th>EXCLUIR</th>");
            out.print("</tr><br>");

            DAOProduto produtoDAO = new DAOProduto();

            if (request.getParameter("nome_produto") == "" || request.getParameter("nome_produto") == null) {
                ArrayList<Produto> listaProduto = produtoDAO.listarProduto();
                for (int i = 0; i < listaProduto.size(); i++) {
                    out.print("<br><tr>");
                    out.print("<td>" + listaProduto.get(i).getId_produto() + "</td>");
                    out.print("<td>" + listaProduto.get(i).getNome_produto() + "</td>");
                    out.print("<td>" + listaProduto.get(i).getQtd_produto() + "</td>");
                    out.print("<td><a href = 'editar_produto.jsp?id_produto="
                            + listaProduto.get(i).getId_produto() + "&nome_produto="
                            + listaProduto.get(i).getNome_produto() + "&qtd_produto="
                            + listaProduto.get(i).getQtd_produto() + "'>Editar</a></td>");
                    out.print("<td><a href = 'excluir_produto.jsp?id_produto="
                            + listaProduto.get(i).getId_produto() + "&nome_produto="
                            + listaProduto.get(i).getNome_produto() + "&qtd_produto="
                            + listaProduto.get(i).getQtd_produto() + "'>Excluir</a></td>");
                    out.print("</tr>");
                }
            } else {
                ArrayList<Produto> listaProduto = produtoDAO.listarProdutoNome("nome_produto");
                for (int i = 0; i < listaProduto.size(); i++) {
                    out.print("<br><tr>");
                    out.print("<td>" + listaProduto.get(i).getId_produto() + "</td>");
                    out.print("<td>" + listaProduto.get(i).getNome_produto() + "</td>");
                    out.print("<td>" + listaProduto.get(i).getQtd_produto() + "</td>");
                    out.print("<td><a href = 'editar_produto.jsp?id_produto="
                            + listaProduto.get(i).getId_produto() + "&nome_produto="
                            + listaProduto.get(i).getNome_produto() + "&qtd_produto="
                            + listaProduto.get(i).getQtd_produto() + "'>Editar</a></td>");
                    out.print("<td><a href = 'excluir_produto.jsp?id_produto="
                            + listaProduto.get(i).getId_produto() + "&nome_produto="
                            + listaProduto.get(i).getNome_produto() + "&qtd_produto="
                            + listaProduto.get(i).getQtd_produto() + "'>Excluir</a></td>");
                    out.print("</tr>");
                }
            }
        %>

        <div>
            <a href="index.jsp">Voltar</a>
        </div>

    </body>
</html>
