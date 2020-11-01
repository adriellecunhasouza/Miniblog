<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://displaytag.sf.net" prefix="display"%>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mensagens</title>
<style type="text/css" media="all">
@import url("css/maven-base.css");
@import url("css/maven-theme.css");
@import url("css/site.css");
@import url("css/screen.css");
</style>
<link rel="stylesheet" href="css/print.css" type="text/css"
	media="print" />
<link rel="stylesheet" type="text/css" href="css/stylesheet.css" />	
</head>
<body>
<div class="container" style="margin: auto; width: 100%">
  
	<h2>Mensagem:</h2>
	<form action="Blog" style="margin=auto; ">
		<textarea rows="2" cols="40" value="" name="mensagem"></textarea>
		<br> <input type="submit" value="ENVIAR" />
	</form>
	</div>

    <%= request.getParameter("erro") %>

  
   <jsp:include page="mensagens.jsp" />
   </body>
</html>
