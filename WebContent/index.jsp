<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
<br><br><br>
	<div class="container">
		<a class="links" id="paracadastro"></a> <a class="links"
			id="paralogin"></a>

		<div class="content">
			<!--FORMULÁRIO DE LOGIN-->
			<div id="login">
				<form method="post" action="Login">
					<h1>Login</h1>
					<p>
						<label for="nome">Seu nome</label> <input id="nome"
							name="nome" required="required" type="text"
							placeholder="Nome" />
					</p>

					<p>
						<label for="senha">Sua senha</label> <input id="senha"
							name="senha" required="required" type="password"
							placeholder="ex. 1234" />
					</p>

					<p>
						<input type="submit" value="Entrar" />
					</p>


				</form>
			</div>

		</div>
	</div>


</body>
</html>