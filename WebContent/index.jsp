<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="cadastro">
		<form method="post" action="Login">
			<h1>Login</h1>
			<p>
				<label for="nome">Seu nome</label> <input id="nome"
					name="nome" required="required" type="text" placeholder="Nome" />
			</p>
			<p>
				<label for="senha">Sua senha</label> <input id="senha"
					name="senha" required="required" type="password"
					placeholder="ex. 1234" />
			</p>
			<p>
				<input type="submit" value="Entrar" />
			</p>
			<p class="link">
			</p>
		</form>
	</div>
</body>
</html>



