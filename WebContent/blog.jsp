<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MiniBlog</title>
<link rel="stylesheet" type="text/css" href="css/style2.css" />
</head>
<body>

<h4 style="float: right!important; width: 14%!important; top: 70px!important; padding-top: 7px!important;"><a href="deslogar.jsp">Deslogar</a></h4>
<div class="container" style="margin: auto!important; width: 80%">

		<h2>Mensagem:</h2>
	
		<form action="Blog" style="">
			<textarea rows="2" cols="40" value="" name="mensagem"></textarea>
			<br> <br><input type="submit" value="ENVIAR" />
		</form><br>


	<%=request.getParameter("erro")%>


	<jsp:include page="mensagens.jsp" />
	</div>
</body>
</html>