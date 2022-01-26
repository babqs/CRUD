<%-- 
    Document   : executar_novo_cliente
    Created on : 21/01/2022, 14:36:47
    Author     : Bárbara Quesada Santana
--%>

<%@page import="DAO.DAOCliente"%>
<%@page import="MODEL.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Cliente</title>
    </head>
    <body>
        <%
            Cliente cliente = new Cliente();
            DAOCliente clientedao = new DAOCliente();
            
            try {

                cliente.setNome_cliente(request.getParameter("nome_cliente"));
                cliente.setEmail_cliente(request.getParameter("email_cliente"));
                cliente.setTelefone_cliente(request.getParameter("telefone_cliente"));

                clientedao.inserirCliente(cliente);
                
                out.print("Cliente inserido com sucesso!");
                out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
            } catch (Exception erro) {
                throw new RuntimeException("Erro ao executar inserir cliente: " + erro.getMessage());
            }
        %>
    </body>
</html>
