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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="./css/home.css" rel="stylesheet" type="text/css">

    </head>
<body style="background-color: #E6F9FC">
    
        <h1 class="container" class="d-flex justify-content-center" class="align-self-center" >Sistema do Banco</h1>

        <div class="container" class="d-flex justify-content-center" class="align-self-center"  >
            <h3>Log In</h3>
            
            <form  action="./ControladorAdministrador" method ="post">
                 <div class=form-group" >
                    <button type="button" class="btn btn-light"  id="clienteBtn">Cliente</button>
                    <button type="button" class="btn btn-light"  id="administradorbtn">Administrador</button>
                </div>
                
                <div class="inputs" id="background_login" >

                   <div class="form-group" >
                        <b><label for="cpf">CPF: </label></b>
                        <input type="text" class="form-control" id="cpf" name="cpf">
                    </div>
                        <div   class="form-group" >
                            <b><label for="senha">Senha: </label></b>
                            <input type="password" class="form-control" id="senha" name="senha">
                        </div>
                    <div  class="text-center">
                        <button class="btn btn-light btn-lg"  class="enviarbtn"  type="submit" name="action" value="Login" >Enviar</button>
                   </div>
                    </div>

                    

         </form>
        </div>

        <!--
        <script>
         document.getElementById('clienteBtn').addEventListener('click', function() {
         window.location.href = 'views/cliente.jsp';
    });
        </script>-->
        <script>
         document.getElementById('administradorbtn').addEventListener('click', function() {
         window.location.href = 'views/administrador.jsp';
    });
        </script>
        
     </body>
</html>



