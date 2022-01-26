<%-- 
    Document   : consultar_cliente
    Created on : 21/01/2022, 15:45:32
    Author     : Bárbara Quesada Santana
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Consultar Cliente</title>
    </head>
    <body>
        <h1 class="titlePage">Consultar Cliente</h1>
        <form action="consultar_cliente.jsp" method="post">
            <label>Pesquisar por nome</label>
            <br>
            <input type="text" name="nome_cliente" placeholder="Digite o nome"/>
            <input type="submit" value="Pesquisar" class="btn"/>
        </form>

        <%
            out.print("<table border = '1'>");
            out.print("<tr>");
            out.print("<th>ID</th>");
            out.print("<th>NOME</th>");
            out.print("<th>EMAIL</th>");
            out.print("<th>TELEFONE</th>");
            out.print("<th>EDITAR</th>");
            out.print("<th>EXCLUIR</th>");
            out.print("</tr><br>");
            DAOCliente clienteDAO = new DAOCliente();

            if (request.getParameter("nome_cliente") == "" || request.getParameter("nome_cliente") == null) {
                ArrayList<Cliente> listaCliente = clienteDAO.listarCliente();
                for (int i = 0; i < listaCliente.size(); i++) {
                    out.print("<br><tr>");
                    out.print("<td>" + listaCliente.get(i).getId_cliente() + "</td>");
                    out.print("<td>" + listaCliente.get(i).getNome_cliente() + "</td>");
                    out.print("<td>" + listaCliente.get(i).getEmail_cliente() + "</td>");
                    out.print("<td>" + listaCliente.get(i).getTelefone_cliente() + "</td>");
                    out.print("<td><a href = 'editar_cliente.jsp?id_cliente="
                            + listaCliente.get(i).getId_cliente() + "&nome_cliente="
                            + listaCliente.get(i).getNome_cliente() + "&email_cliente="
                            + listaCliente.get(i).getEmail_cliente() + "&telefone_cliente="
                            + listaCliente.get(i).getTelefone_cliente() + "'>Editar</a></td>");
                    out.print("<td><a href = 'excluir_cliente.jsp?id_cliente="
                            + listaCliente.get(i).getId_cliente() + "&nome_cliente="
                            + listaCliente.get(i).getNome_cliente() + "&email_cliente="
                            + listaCliente.get(i).getEmail_cliente() + "&telefone_cliente="
                            + listaCliente.get(i).getTelefone_cliente() + "'>Excluir</a></td>");
                    out.print("</tr>");
                    out.print("</tr>");
                }
            } else {
                ArrayList<Cliente> listaCliente = clienteDAO.listarClienteNome(request.getParameter("nome_cliente"));
                for (int i = 0; i < listaCliente.size(); i++) {
                    out.print("<br><tr>");
                    out.print("<td>" + listaCliente.get(i).getId_cliente() + "</td>");
                    out.print("<td>" + listaCliente.get(i).getNome_cliente() + "</td>");
                    out.print("<td>" + listaCliente.get(i).getEmail_cliente() + "</td>");
                    out.print("<td>" + listaCliente.get(i).getTelefone_cliente() + "</td>");
                    out.print("<td><a href = 'editar_cliente.jsp?id_cliente="
                            + listaCliente.get(i).getId_cliente() + "&nome_cliente="
                            + listaCliente.get(i).getNome_cliente() + "&email_cliente="
                            + listaCliente.get(i).getEmail_cliente() + "&telefone_cliente="
                            + listaCliente.get(i).getTelefone_cliente() + "'>Editar</a></td>");
                    out.print("<td><a href = 'excluir_cliente.jsp?id_cliente="
                            + listaCliente.get(i).getId_cliente() + "&nome_cliente="
                            + listaCliente.get(i).getNome_cliente() + "&email_cliente="
                            + listaCliente.get(i).getEmail_cliente() + "&telefone_cliente="
                            + listaCliente.get(i).getTelefone_cliente() + "'>Excluir</a></td>");
                    out.print("</tr>");
                }
            }
            out.print("</table>");
        %>

        <div>
            <a href="index.jsp">Voltar</a>
        </div>
    </body>
</html>
