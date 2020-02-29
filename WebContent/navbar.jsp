<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<nav
	class="navbar navbar-expand-lg navbar-dark indigo text-dark fixed-top">
	<a class="navbar-brand  font-weight-bold" href="index.jsp">ROUPEX</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarText" aria-controls="navbarText"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarText">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="pedidosCliente.jsp">PEDIDOS <span
					class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="trocasCliente.jsp">TROCAS</a></li>
		</ul>
		<a href="carrinho.jsp" class="navbar-text white-text"> <span
			class="fas fa-shopping-cart"></span>
		</a> <a href="perfilCliente.jsp" class="navbar-text white-text ml-3 mr-3"> <span
			class="far fa-user"></span>
		</a>
	</div>
</nav>