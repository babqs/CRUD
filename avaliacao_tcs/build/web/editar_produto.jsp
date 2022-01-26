<%-- 
    Document   : editar_produto
    Created on : 24/01/2022, 13:20:29
    Author     : Bárbara Quesada Santana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Editar Produto</title>
    </head>
    <body>
        <h1 class="titlePage">EDITAR PRODUTO</h1>
        <form method="post" action="executar_editar_produto.jsp">
            <label for="id">ID</label>
            <input type="text" name="id_produto" value="<%=request.getParameter("id_produto")%>"/>
            <br>
            <br>
            <label for="nome">Nome</label>
            <input type="text" name="nome_produto" value="<%=request.getParameter("nome_produto")%>"/>
            <br>
            <br>
            <label for="quantidade">Quantidade</label>
            <input type="text" name="qtd_produto" value="<%=request.getParameter("qtd_produto")%>"/>
            <br>
            <br>
            <input type="submit" value="Editar" class="btn"/>
        </form>
        <div>
            <ul>
                <li><a href="index.jsp">Início</a></li>
                <li><a href="consultar_produto.jsp">Voltar</a></li>
            </ul>
        </div>
    </body>
</html>
