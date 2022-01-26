<%-- 
    Document   : excluir_cliente
    Created on : 24/01/2022, 10:36:48
    Author     : Bárbara Quesada Santana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Excluir Cliente</title>
    </head>
    <body>

        <form method="post" action="executar_excluir_cliente.jsp">
            <label for="id">ID</label>
            <input type="text" name="id_cliente" value="<%=request.getParameter("id_cliente")%>"/>
            <br>
            <br>
            <label for="nome">Nome</label>
            <input type="text" name="nome_cliente" value="<%=request.getParameter("nome_cliente")%>"/>
            <br>
            <br>
            <label for="email">E-mail</label>
            <input type="email" name="email_cliente" value="<%=request.getParameter("email_cliente")%>"/>
            <br>
            <br>
            <label for="telefone">Telefone</label>
            <input type="text" name="telefone_cliente" value="<%=request.getParameter("telefone_cliente")%>"/>
            <br>
            <br>
            <input type="submit" value="Excluir" class="btn"/>
        </form>
            
            <div>
                <ul>
                    <li><a href="index.jsp">Início</a></li>
                    <li><a href="consultar_cliente.jsp">Voltar</a></li>
                </ul>
            </div>

    </body>
</html>
