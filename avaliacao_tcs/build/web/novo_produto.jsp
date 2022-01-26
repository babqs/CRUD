<%-- 
    Document   : novo_produto
    Created on : 21/01/2022, 16:31:21
    Author     : Bárbara Quesada Santana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Novo Produto</title>
    </head>
    <body>
        <h1 class="titlePage">NOVO PRODUTO</h1>
        <form method="post" action="executar_novo_produto.jsp">
            <label for="nome">Nome</label>
            <input type="text" name="nome_produto"/>
            <br>
            <br>
            <label for="quantidade">Quantidade</label>
            <input type="text" name="qtd_produto"/>
            <br>
            <br>
            <input type="submit" value="Enviar" class="btn"/>
        </form>
        
        <div>
            <a href="index.jsp">Voltar</a>
        </div>
        
    </body>
</html>
