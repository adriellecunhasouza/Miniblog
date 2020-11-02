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


	<br>
<div class="container" style="width: 100%!important;">

	<br>	<h3 style="padding: 0!important;">Mensagens postadas: </h3>	<br>
		
<display:table name="${BEAN_LISTA}" uid="objmsg" defaultsort="2" defaultorder="descending">

 <display:column property="mensagem" style="width: 70%;" />
 <display:column property="nome" title="Usuário" />
 <display:column property="dataMensagem" title="Data" format="{0,date,dd/MM/yyyy}" style="width: 10%;" />
 <display:column property="horaMensagem" title="Hora" format="{0,date,HH:mm}" />
 <display:column href="ControleExcluiMensagem" paramId="id" paramProperty="id" title="Excluir">
 <img alt="Excluir" src="img/close.gif">
 </display:column>

</display:table>
</div>
 
</body>
</html>