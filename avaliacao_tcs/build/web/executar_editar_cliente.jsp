<%-- 
    Document   : executar_editar_cliente
    Created on : 24/01/2022, 12:42:21
    Author     : Bárbara Quesada Santana
--%>

<%@page import="DAO.DAOCliente"%>
<%@page import="MODEL.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
    </head>
    <body>
        <%
            Cliente cliente = new Cliente();
            DAOCliente clientedao = new DAOCliente();
            
            try {
                
                cliente.setId_cliente(Integer.parseInt(request.getParameter("id_cliente")));
                cliente.setNome_cliente(request.getParameter("nome_cliente"));
                cliente.setEmail_cliente(request.getParameter("email_cliente"));
                cliente.setTelefone_cliente(request.getParameter("telefone_cliente"));
                
                clientedao.editarCliente(cliente);
                
                out.print("Cliente editado com sucesso!");
                out.print("<meta http-equiv='refresh' content='3, url=consultar_cliente.jsp'>");
            } catch (Exception erro) {
                throw new RuntimeException("Erro ao executar editar cliente: " + erro.getMessage());
            }
        %>
    </body>
</html>
