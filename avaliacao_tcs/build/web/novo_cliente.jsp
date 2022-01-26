<%-- 
    Document   : novo_cliente
    Created on : 21/01/2022, 14:31:34
    Author     : Bárbara Quesada Santana
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Novo Cliente</title>
    </head>
    <body>
        <h1 class="titlePage">NOVO CLIENTE</h1>
        <form method="post" action="executar_novo_cliente.jsp">
            <label for="nome">Nome</label>
            <input type="text" name="nome_cliente"/>
            <br>
            <br>
            <label for="email">E-mail</label>
            <input type="email" name="email_cliente"/>
            <br>
            <br>
            <label for="telefone">Telefone</label>
            <input type="text" name="telefone_cliente"/>
            <br>
            <br>
            <input type="submit" value="Enviar" class="btn"/>
        </form>
        <div>
            <a href="index.jsp">Voltar</a>
        </div>
    </body>
</html>

