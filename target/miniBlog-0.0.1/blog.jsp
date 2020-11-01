<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MiniBlog</title>
</head>
<body>
<div class="container" style="margin: auto; width: 100%">
    <h3>Bem-vindo: ${NAME.nome}</h3>
	<h2>Mensagem:</h2>
	<form action="Blog" style="margin=auto; ">
		<textarea rows="2" cols="40" value="" name="mensagem"></textarea>
		<br> <input type="submit" value="ENVIAR" />
	</form>
	</div>

    <%= request.getParameter("erro") %>

	<jsp:include page="mensagens.jsp" flush="true" />
</html>
