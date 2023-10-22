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
<body>
        <div class="container">
            <h2>Cadastrar Usuárop</h2>
            
            <form>
                
                <div class="inputs">
                    <label class= "titulo-select" for="tipoUsuario">Cadastre Usuário</label>
                    <select class="select-usuario" id="tipoUsuario">
                        <option value="administrador">Administrador</option>
                        <option value="cliente">Cliente</option>
                    </select>
                   <div>
                        <label for="cpf">CPF:</label>
                        <input type="text" class="cpfinput" id="cpf" name="cpf">
                    </div>

                        <div>
                            <label for="senha">Senha:</label>
                            <input type="password" class="senhainput" id="senha" name="senha">
                        </div>
                    <button class="enviarbtn" type="submit">Enviar</button>
                   </div>

                    

         </form>
        </div>
        <script src="bootstrap/bootstrap.bundle.min.js"></script>
        
    </body>
</html>
