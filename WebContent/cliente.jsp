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
		
		<link rel="stylesheet" href="_PLUGINS/bootstrap.min.css">
		<script src="_PLUGINS/jquery-3.4.1.slim.min.js"></script>
		<title>Cliente</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script>
			$(document).ready(function(){
				$("#txtSenhaConfirma").focusout(function(){
					var senha = $("#txtSenha").val();
					var confirmaSenha = $("#txtSenhaConfirma").val();
					
					if(senha != confirmaSenha){
						$("#msg").removeClass("d-none");
					}else{
						$("#msg").addClass("d-none");
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
											<input type="password" id="txtSenha" name="txtSenha" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtSenhaConfirma" class="col-md-4 col-form-label text-md-right">Confirme a Senha</label>
										<div class="com-md-6">
											<input type="password" id="txtSenhaConfirma" name="txtSenhaConfirma" class="form-control">
											<small style="color: red" class="d-none" id="msg">As Senhas não são iguais</small>
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
	</body>
</html>