<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Cartão</title>
	<link rel="stylesheet" href="_PLUGINS/bootstrap.min.css">
	<script src="_PLUGINS/jquery-3.4.1.slim.min.js"></script>
	<script>
	$(document).ready(function(){
		$("#txtNumero").focusout(function(){
			var numeroCartao = $("#txtNumero").val();
			var ultimoNumero = numeroCartao.slice(-1);
			ultimoNumero = ultimoNumero.toString();
			
			
			
			if(ultimoNumero == '0' || ultimoNumero == '1' || ultimoNumero == '2' || ultimoNumero == '3' || ultimoNumero == '4'){
				$("#txtBandeira").val("VISA");
			}else{
				$("#txtBandeira").val("MASTERCARD");
			}	
		});
		
	});
		
	</script>
	<style>
			@import url(https://fonts.googleapis.com/css?family=Raleway:300,400,600);
			body{
			    margin: 0;
			    font-size: .9rem;
			    font-weight: 400;
			    line-height: 1.6;
			    color: #212529;
			    text-align: left;
			    background-color: #f5f8fa;
			}
			
			.navbar-laravel
			{
			    box-shadow: 0 2px 4px rgba(0,0,0,.04);
			}
			
			.navbar-brand , .nav-link, .my-form, .login-form
			{
			    font-family: Raleway, sans-serif;
			}
			
			.my-form
			{
			    padding-top: 1.5rem;
			    padding-bottom: 1.5rem;
			}
			
			.my-form .row
			{
			    margin-left: 0;
			    margin-right: 0;
			}
			
			.login-form
			{
			    padding-top: 1.5rem;
			    padding-bottom: 1.5rem;
			}
			
			.login-form .row
			{
			    margin-left: 0;
			    margin-right: 0;
			}
		</style>
	</head>
	<body>
		<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
			<div class="container">
				<a class="navbar-brand" href="#">ROUPEX</a>
			</div>
		</nav>
		
		<main class="my-form">
			<div class="container">
				<div class="row justify-content-center">
					<div class="com-md-8">
						<div class="card">
							<div class="card-body">
							
								<form name="my-form" action="" method="post">									
									
										<div class="form-group row d-none" >
											<label for="txtID" class="col-md-4 col-form-label text-md-right">ID</label>
											<div class="com-md-6">
												<input type="text" id="txtID" name="txtID" class="form-control">
											</div>
										</div>
										
										<div class="form-group row d-none" >
											<label for="txtHabilitado" class="col-md-4 col-form-label text-md-right">ID</label>
											<div class="com-md-6">
												<input type="text" id="txtHabilitado" name="txtHabilitado" class="form-control">
											</div>
										</div>
									
									<div class="form-group row">
										<label for="txtNumero" class="col-md-4 col-form-label text-md-right">Número do Cartão</label>
										<div class="com-md-6">
											<input type="text" id="txtNumero" name="txtNumero" class="form-control" maxlength="16" minlength="16">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtNome" class="col-md-4 col-form-label text-md-right">Nome impresso</label>
										<div class="com-md-6">
											<input type="text" id="txtNome" name="txtNome" class="form-control">
											<small>Nome impresso na frente do cartão</small>
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtCodigo" class="col-md-4 col-form-label text-md-right">Código de Segurança</label>
										<div class="com-md-6">
											<input type="text" id="txtCodigo" name="txtCodigo" class="form-control" maxlength="3" minlength="3">
											<small>Os três números impressos no verso do cartão</small>
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtBandeira" class="col-md-4 col-form-label text-md-right">Bandeira</label>
										<div class="com-md-6">
											<input type="text" id="txtBandeira" name="txtBandeira" class="form-control" disabled>
										</div>
									</div>

									
									<div class="col-md-6 offset-md-4">
										<button type="submit" class="btn btn-primary">Salvar</button>
									</div>
									
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		
		</main>
	</body>
</html>