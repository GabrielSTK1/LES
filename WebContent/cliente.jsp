<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<link rel="dns-prefetch" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">
		
		<title>Cliente</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
									<div class="form-group row">
									
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
									
										<label for="txtNome" class="col-md-4 col-form-label text-md-right">Nome Completo</label>
										<div class="com-md-6">
											<input type="text" id="txtNome" name="txtNome" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtEmail" class="col-md-4 col-form-label text-md-right">Email</label>
										<div class="com-md-6">
											<input type="text" id="txtEmail" name="txtEmail" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtSenha" class="col-md-4 col-form-label text-md-right">Senha</label>
										<div class="com-md-6">
											<input type="text" id="txtSenha" name="txtSenha" class="form-control">
										</div>
									</div>
									
									<div class="form-check row">
									<label class="form-check-label">Gênero</label>
										<div class="form-check">
											<input class="form-check-input" type="radio" name="txtSexo" id="genero" value="masculino">
											<label class="form-check-label" for="txtSexo">Masculino</label>
										</div>
										
										<div class="form-check">
											<input class="form-check-input" type="radio" name="txtSexo" id="genero" value="feminino">
											<label class="form-check-label" for="txtSexo">Feminino</label>
										</div>
										
										<div class="form-check">
											<input class="form-check-input" type="radio" name="txtSexo" id="genero" value="outro">
											<label class="form-check-label" for="txtSexo">Outro</label>
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtData" class="col-md-4 col-form-label text-md-right">Data de Nascimento</label>
										<div class="com-md-6">
											<input type="Date" id="txtData" name="txtData" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtCpf" class="col-md-4 col-form-label text-md-right">CPF</label>
										<div class="com-md-6">
											<input type="text" id="txtCpf" name="txtCpf" class="form-control" maxlenght="11" minlenght="11">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtTelefone" class="col-md-4 col-form-label text-md-right">Telefone Celular</label>
										<div class="com-md-6">
											<input type="tel" id="txtTelefone" name="txtTelefone" class="form-control" pattern="[0-9]{2}[0-9]{5}[0-9]{4}" placeholder="XX-XXXXX-XXXX">
											<small>Formato: XXXXXXXXXXX</small>
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
	
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
</html>