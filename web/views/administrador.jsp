<!DOCTYPE html>
<html>
    <head>
        <title>Bootstrap</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         <link href="./css/Page.css" rel="stylesheet" type="text/css">

    </head>
    <body>
        <div class="container">
            <h1>Área do administrador</h1>
            <h2>Opções</h2>
            <form>
                <div>
                <button type="button" id="cadastrarUsuario" class="cadastrarUsuarioBtn">Cadastrar Usuário</button>
                <button type="button"  id="cadastrarConta"class="cadastrarContaBtn">Cadastrar Conta</button>
                <button type="button"  id="emitirSaldo"class="EmitirSaldoBtn">Emitir Saldos</button>
                <button type="button"  id="emitirExtrato" class="EmitirExtratoBtn">Emitir Extratos</button>
                </div>
            </form>
        </div>
        <script>
         document.getElementById('cadastrarUsuario').addEventListener('click', function() {
         window.location.href = 'cadastrarConta.jsp';
    });
        </script>
        <script>
         document.getElementById('cadastrarConta').addEventListener('click', function() {
         window.location.href = 'cadastrarConta.jsp';
    });
        </script>
                <script>
         document.getElementById('emitirSaldo').addEventListener('click', function() {
         window.location.href = 'emitirSaldo.jsp';
    });
        </script>
        <script>
         document.getElementById('emitirExtrato').addEventListener('click', function() {
         window.location.href = 'emitirExtrato.jsp';
    });
        </script>
    </body>
</html>