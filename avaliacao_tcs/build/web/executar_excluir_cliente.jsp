<%-- 
    Document   : executar_excluir_cliente
    Created on : 24/01/2022, 10:54:42
    Author     : Bárbara Quesada Santana
--%>

<%@page import="DAO.DAOCliente"%>
<%@page import="MODEL.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Cliente</title>
    </head>
    <body>
        <%
            Cliente cliente = new Cliente();
            DAOCliente clientedao = new DAOCliente();

            try {

                cliente.setId_cliente(Integer.parseInt(request.getParameter("id_cliente")));

                clientedao.excluirCliente(cliente);

                out.print("Cliente excluído com sucesso!");
                out.print("<meta http-equiv='refresh' content='3, url=consultar_cliente.jsp'>");
            } catch (Exception erro) {
                throw new RuntimeException("Erro ao executar excluir cliente: " + erro.getMessage());
            }
        %>
    </body>
</html>
