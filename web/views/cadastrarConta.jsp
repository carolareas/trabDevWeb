<%-- 
    Document   : cadastrarConta
    Created on : 22 de out. de 2023, 15:39:07
    Author     : carol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastrar Conta</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="../css/second.css" rel="stylesheet" type="text/css">

    </head>
    <body style="background-color: #E6F9FC">
        <br><br><br>
        
        <div class="quadro"  class="d-flex justify-content-center" class="align-self-center"  style="width: 700px;">
            <form action="../ControladorAdministrador" method="POST" >
                <h3 class="d-flex justify-content-center">Cadastre uma nova conta</h3>
                <br><br>
                <div class="inputs form-group"  id="background_login">
                    <b><label for="nome">Nome:</label></b>
                    <input type="text" class="form-control" name="nome" required>
                    <br><br>
                    <b><label for="cpf">CPF:</label></b>
                    <input type="text" class="form-control" name="cpf" required>
                    <br><br>
                    <b><label for="senha">Senha:</label></b>
                    <input type="password"  class="form-control" name="senha" required> 
                    <br><br>
                    <b><label for="endereco">Endereço:</label></b>
                    <input type="text" class="form-control"  name="endereco" required> 
                    <br><br>
                    <input class="btn btn-light btn-lg" type="submit" name="action" value="Cadastrar">
                </div>
                <br><br>

            </form>
            <br>
        </div>

    </body>
</html>
