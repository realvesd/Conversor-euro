<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
	
	/*
	Em: 27 de abril 17:13 UTC
    1 Dólar americano igual a 5,70 Real brasileiro
    1 Real brasileiro igual a 0,18 Dólar americano
	*/
	
	function converterEuro(){
		var valor = document.getElementById("valor");
		alert("A conversão deu: € " + valor.value * 0.0076);
	}
	
	function converterYene(){
		var valor = document.getElementById("valor");
		alert("A conversão deu: ¥ " + valor.value * 131.44);
	}
	
	</script>
	<meta charset="UTF-8">
	<title>Conversor Monetário</title>
</head>
<body>

	<form:form name = "formMoeda" method="post" modelAttribute="moeda" action="valores">
	<h2>1. Qual é o valor?</h2>	
		<p>Valor a ser convertido: <form:input path="valor" id = "valor"/></p>
		<p><form:button onClick = "converterEuro()">Converter Para Euro</form:button></p>
		<p><form:button onClick = "converterYene()">Converter Para Yene</form:button></p>
	</form:form>
</body>
</html>