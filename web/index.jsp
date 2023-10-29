<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>banco dev web</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet">
        <link href="./css/Home.css" rel="stylesheet" type="text/css">

    </head>
<body style="background-color: #beccd2">
        <div class="container">
            <h1>Sistema do Banco</h1>
            <h2>Log In</h2>
            
            <form action="views/cliente.jsp" method ="post">
                 <div class=form-group">
                    <button type="button" class="clienteBtn" id="clienteBtn">Cliente</button>
                    <button type="button" class="administradorBtn" id="administradorbtn">Administrador</button>
                </div>
                
                <div class="inputs">
                    <label class= "titulo-select" for="tipoUsuario">Selecione o tipo de usuário:</label>
                    <select class="select-usuario" id="tipoUsuario">
                        <option value="administrador">Administrador</option>
                        <option value="cliente">Cliente</option>
                    </select>
                   <div class="form-group">
                        <label for="cpf">CPF: </label>
                        <input type="text" class="form-control" id="cpf" name="cpf">
                    </div>
                        <div class="form-group">
                            <label for="senha">Senha: </label>
                            <input type="password" class="form-control" id="senha" name="senha">
                        </div>
                    <button class="enviarbtn" type="submit">Enviar</button>
                   </div>

                    

         </form>
        </div>


        <script src="bootstrap/bootstrap.bundle.min.js"></script>
        <script>
         document.getElementById('clienteBtn').addEventListener('click', function() {
         window.location.href = 'views/cliente.jsp';
    });
        </script>
        <script>
         document.getElementById('administradorbtn').addEventListener('click', function() {
         window.location.href = 'views/administrador.jsp';
    });
        </script>
     </body>
</html>



