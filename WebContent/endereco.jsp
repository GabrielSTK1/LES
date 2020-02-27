<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<link rel="dns-prefetch" href="https://fonts.gstatic.col">
		<link href="https://fonts.googleapis.col/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="_PLUGINS/bootstrap.min.css">
		<link rel="stylesheet" href=_CSS/form.css">
		<script src="_PLUGINS/jquery-3.4.1.slim.min.js"></script>
		<title>Endereço</title>
		<style>
			@import url(https://fonts.googleapis.col/css?family=Raleway:300,400,600);
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
					<div class="col-md-8">
						<div class="card">
							<div class="card-body">
							
								<form name="my-form" action="" method="post">
										<div class="form-group row d-none" >
											<label for="txtIdCliente" class="col-md-4 col-form-label text-md-right">ID Cliente</label>
											<div class="col-md-6">
												<input type="text" id="txtIdCliente" name="txtIdCliente" class="form-control">
											</div>
										</div>
										<div class="form-group row d-none" >
											<label for="txtID" class="col-md-4 col-form-label text-md-right">ID</label>
											<div class="col-md-6">
												<input type="text" id="txtID" name="txtID" class="form-control">
											</div>
										</div>
										
										<div class="form-group row d-none" >
											<label for="txtHabilitado" class="col-md-4 col-form-label text-md-right">ID</label>
											<div class="col-md-6">
												<input type="text" id="txtHabilitado" name="txtHabilitado" class="form-control">
											</div>
										</div>
									<div class="form-group row">
										<label for="txtLogradouro" class="col-md-4 col-form-label text-md-right">Logradouro</label>
										<div class="col-md-6">
											<input type="text" id="txtLogradouro" name="txtLogradouro" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="cbTipoLogradouro" class="col-md-4 col-form-label text-md-right">Tipo de Logradouro</label>
										<select class="form-control" name="cbTipoLogradouro" id="cbTipoLogradouro">
											<option value="">Selecione uma Opção</option>
											<option value="RN" class="AVENIDA">Avenida</option> 
											<option value="P" class="RUA">Rua</option>
											<option value="M" class="TRAVESSA">Travessa</option>
											<option value="G" class="OUTRO">Outro</option>
										</select>
									</div>
									
									<div class="form-group row">
										<label for="cbTipoResidencia" class="col-md-4 col-form-label text-md-right">Tipo de Residência</label>
										<select class="form-control" name="cbTipoResidencia" id="cbTipoResidencia">
											<option value="">Selecione uma Opção</option>
											<option value="RN" class="CASA">Casa</option> 
											<option value="P" class="APARTAMENTO">Apartamento</option>
											<option value="M" class="COMERCIAL">Comercial</option>
											<option value="G" class="OUTRO">Outro</option>
										</select>
									</div>
									
									<div class="form-group row">
										<label for="txtBairro" class="col-md-4 col-form-label text-md-right">Bairro</label>
										<div class="col-md-6">
											<input type="text" id="txtBairro" name="txtBairro" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtNumero" class="col-md-4 col-form-label text-md-right">Número</label>
										<div class="col-md-6">
											<input type="number" id="txtNumero" name="txtNumero" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtCidade" class="col-md-4 col-form-label text-md-right">Cidade</label>
										<div class="col-md-6">
											<input type="text" id="txtCidade" name="txtCidade" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtEstado" class="col-md-4 col-form-label text-md-right">Estado</label>
										<div class="col-md-6">
											<input type="text" id="txtEstado" name="txtEstado" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtPais" class="col-md-4 col-form-label text-md-right">País</label>
										<div class="col-md-6">
											<input type="text" id="txtPais" name="txtPais" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtObservacao" class="col-md-4 col-form-label text-md-right">Obervação</label>
										<div class="col-md-6">
											<input type="text" id="txtObservacao" name="txtObservacao" class="form-control" maxlenght="50">
										</div>
									</div>
									
									<div class="form-check row">
									<label class="form-check-label">Definir colo Principal?</label>
										<div class="form-check">
											<input class="form-check-input" type="radio" name="txtPrincipal" id="principal" value="sim">
											<label class="form-check-label" for="txtPrincipal">Sim</label>
										</div>
										
										<div class="form-check">
											<input class="form-check-input" type="radio" name="txtPrincipal" id="principal" value="nao">
											<label class="form-check-label" for="txtPrincipal">Não</label>
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