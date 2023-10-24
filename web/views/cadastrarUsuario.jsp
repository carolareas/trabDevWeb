<%-- 
    Document   : cadastrarUsuario
    Created on : 22 de out. de 2023, 15:36:50
    Author     : carol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
 <link rel="stylesheet" type="text/css" href="./styles/formulario.css"/>
    </head>
    <body>
        <script src="./bootstrap/bootstrap.bundle.min.js"></script>         
        <br><br><br>
        
        <div class="quadro" style="width: 700px;">
            <form action="./ControladorAdministrador" method="POST" class="formulario">
                <h3>Cadastre um novo usuário</h3>
                <br><br>
                <label for="nome">Nome:</label>
                <input type="text" name="nome" required>
                <br><br>
                <label for="CPF">CPF:</label>
                <input type="text" name="CPF" required>
                <br><br>
                <label for="senha">Senha:</label>
                <input type="password"  name="senha" required> 
                <br><br>
                
                <br><br>
                <input type="submit" name="action" value="Cadastrar">
            </form>
            <br>
        </div>
        <script src="bootstrap/bootstrap.bundle.min.js"></script>

    </body>
</html>
