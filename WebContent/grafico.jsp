<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Rendimento</title>
		<link rel="stylesheet" href="_PLUGINS/bootstrap.min.css">
		<script src="_PLUGINS/jquery-3.4.1.slim.min.js"></script>"
		<c:import url="import.jsp"/>
		</head>
	<body>
		<c:import url="navbarAdm.jsp"/>
		<div class="container mt-5 text-center">
			<div class="col-md-4 text-center">
				<div class="thumbnail">
	
					<img src="_IMAGENS/graficoExemplo.png" alt="Camisa Preta">
					<div class="caption">
						<p class="text-center">Relatório Mensal</p>
					</div>
	
				</div>
			</div>
		</div>
	</body>
</html>