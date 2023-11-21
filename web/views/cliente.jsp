<%@page import="entidade.User"%>
<!DOCTYPE html>
<html>
    <head>
        <title>banco dev web</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="../css/Page.css" rel="stylesheet" type="text/css">

    </head>
<body style="background-color: #E6F9FC">
    
    <nav class="navbar navbar-expand-lg navbar-dark"  style="background-color: #08373E">
		<div class="container-fluid">
                        <h4 class="navbar-brand">Bem vindo, <%= ((User)session.getAttribute("authenticatedUser")).getNome() %></h4>

			<a class="navbar-brand" href="index.html">Início</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">

				<a class="navbar-brand" href="index.jsp">Log Out
				</a>
			</div>
		</div>
	</nav>

        <!-- <h1 class="container" class="d-flex justify-content-center" class="align-self-center" style="margin-top:60px" >Bem vindo, <%= ((User)session.getAttribute("authenticatedUser")).getNome() %></h1> -->
        
        <div class="container" class="d-flex justify-content-center" class="align-self-center" style="margin-top:60px"  >
            <h3>Opções</h3>


            <form>
                <div class="buttons">
                    <button type="button" class="btn btn-outline-info">Saldos</button>
                    <button type="button" class="btn btn-outline-info">Extratos</button>
                    <button type="button" class="btn btn-outline-info" onclick="toggleDepositForm()">Realizar Depósitos</button>
                    <button type="button" class="btn btn-outline-info" onclick="toggleSaqueForm()">Saques</button>
                    <button type="button" class="btn btn-outline-info" onclick="toggleTransactionForm()">Transferências</button>
                    <button type="button" class="btn btn-outline-info" onclick="toggleInvestimentos()">Investimentos</button>
                </div>
            </form>
            
            <div  id="transactionForm" style="display: none;">
            <form action="../ControladorTransacao" method="POST" class="toggled">
                <label  for="valor">Valor(R$):</label>
                <input type="number" id="valor" name="valor" step="0.01" required> 
                <label for="useriddestino">Conta Destino:</label>
                <input type="text"  name="useriddestino" required> 
                <input type="hidden" name="tipo" value="transferencia_cc">
                <input type="hidden" name="useridorigem" value="<%= ((User)session.getAttribute("authenticatedUser")).getId() %>">
                    <input class="btn btn-light btn-lg" type="submit" name="action" value="Transferir">
                </form>
            </div>
                    
            <div  id="depositForm" style="display: none;">
            <form action="../ControladorDeposito" method="POST" class="toggled">
                <label  for="valordeposito">Valor(R$):</label>
                <input type="number" id="valor" name="valordeposito" step="0.01" required> 
                <input type="hidden" name="tipo" value="deposito">
                <input type="hidden" name="useridorigem" value="<%= ((User)session.getAttribute("authenticatedUser")).getId() %>">
                <input type="hidden" name="useriddestino" value="<%= ((User)session.getAttribute("authenticatedUser")).getId() %>">

                    <input class="btn btn-light btn-lg" type="submit" name="action" value="Depositar">
                </form>
            </div>
                
            <div  id="saqueForm" style="display: none;">
            <form action="../ControladorSaque" method="POST" class="toggled">
                <label  for="valorsaque">Valor(R$):</label>
                <input type="number" id="valor" name="valorsaque" step="0.01" required> 
                <input type="hidden" name="tipo" value="saque">
                <input type="hidden" name="useridorigem" value="<%= ((User)session.getAttribute("authenticatedUser")).getId() %>">
                <input type="hidden" name="useriddestino" value="<%= ((User)session.getAttribute("authenticatedUser")).getId() %>">

                    <input class="btn btn-light btn-lg" type="submit" name="action" value="Sacar">
                </form>
            </div>
                

        <script>
        function toggleTransactionForm() {
            var transactionForm = document.getElementById('transactionForm');
            transactionForm.style.display = transactionForm.style.display === 'none' ? 'block' : 'none';
            depositForm.style.display = 'none';
            saqueForm.style.display = 'none';
        }
        
        function toggleDepositForm() {
            var depositForm = document.getElementById('depositForm');
            depositForm.style.display = depositForm.style.display === 'none' ? 'block' : 'none';
            transactionForm.style.display = 'none';
            saqueForm.style.display = 'none';
        }
        
        function toggleSaqueForm() {
            var saqueForm = document.getElementById('saqueForm');
            saqueForm.style.display = saqueForm.style.display === 'none' ? 'block' : 'none';
            transactionForm.style.display = 'none';
            depositForm.style.display = 'none';
        }
        

        </script>
</body>
</html>