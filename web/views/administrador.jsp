<!DOCTYPE html>
<html>
    <head>
        <title>Bootstrap</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Área do administrador</h1>
            <h2>Opções</h2>
            <form>
                <button type="button" id="cadastrarUsuario" class="cadastrarUsuarioBtn">Cadastrar Usuário</button>
                <button type="button"  id="cadastrarConta"class="cadastrarContaBtn">Cadastrar Conta</button>
                <button type="button"  id="emitirSaldo"class="EmitirSaldoBtn">Emitir Saldos</button>
                <button type="button"  id="emitirExtrato" class="EmitirExtratoBtn">Emitir Extratos</button>
                
            </form>
        </div>
        <script src="bootstrap/bootstrap.bundle.min.js"></script>
        <script>
         document.getElementById('cadastrarUsuario').addEventListener('click', function() {
         window.location.href = 'cadastrarUsuario.jsp';
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