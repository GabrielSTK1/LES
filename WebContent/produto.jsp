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
		<title>Produto</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script>
			$(document).ready(function(){
				$("#txtMargem").focusout(function(){
					var valorMargem = $("#txtValorCompra").val() * ($("#txtMargem").val()/100);
					
					
					var valorVenda = parseFloat(valorMargem) + parseFloat($("#txtValorCompra").val());
					$("#txtPrecoVenda").val(valorVenda);
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
										<label for="txtHabilitado" class="col-md-4 col-form-label text-md-right">Habilitado</label>
										<div class="com-md-6">
											<input type="text" id="txtHabilitado" name="txtHabilitado" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtMarca" class="col-md-4 col-form-label text-md-right">Marca</label>
										<div class="com-md-6">
											<input type="text" id="txtMarca" name="txtMarca" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtValorCompra" class="col-md-4 col-form-label text-md-right">Valor de Compra</label>
										<div class="com-md-6">
											<input type="number" id="txtValorCompra" name="txtValorCompra" class="form-control" step=".1">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtMargem" class="col-md-4 col-form-label text-md-right">Margem de Lucro</label>
										<div class="com-md-6">
											<input type="number" id="txtMargem" name="txtMargem" class="form-control" step="1">
											<small>Em porcentagem</small>
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtPrecoVenda" class="col-md-4 col-form-label text-md-right">Preço de Venda</label>
										<div class="com-md-6">
											<input type="text" id="txtPrecoVenda" name="txtPrecoVenda" class="form-control" disabled>
										</div>
									</div>
									
									<div class="form-check row">
									<label class="form-check-label">Estampa</label>
										<div class="form-check">
											<input class="form-check-input" type="radio" name="txtEstampa" id="estampa" value="sim">
											<label class="form-check-label" for="txtEstampa">Sim</label>
										</div>
										
										<div class="form-check">
											<input class="form-check-input" type="radio" name="txtEstampa" id="estampa" value="nao">
											<label class="form-check-label" for="txtEstampa">Não</label>
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtDataCompra" class="col-md-4 col-form-label text-md-right">Data de Compra</label>
										<div class="com-md-6">
											<input type="date" id="txtDataCompra" name="txtDataCompra" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="cbTamanho" class="col-md-4 col-form-label text-md-right">Tamanho</label>
										<div class="com-md-6">
											<select class="form-control" name="cbTamanho" id="cbTamanho">
												<option value="">Selecione uma Opção</option>
												<option value="RN" class="PP">PP</option> 
												<option value="P" class="P">Pequeno</option>
												<option value="M" class="M">Médio</option>
												<option value="G" class="G">Grande</option>
												<option value="GG" class="GG">Extra Grande</option>
											</select>
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtCor" class="col-md-4 col-form-label text-md-right">Cor Principal</label>
										<div class="com-md-6">
											<input type="text" id="txtCor" name="txtCor" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtLote" class="col-md-4 col-form-label text-md-right">Código do Lote</label>
										<div class="com-md-6">
											<input type="text" id="txtLote" name="txtLote" class="form-control">
										</div>
									</div>
									
									<div class="form-group row">
										<label for="txtFornecedor" class="col-md-4 col-form-label text-md-right">Nome do Fornecedor</label>
										<div class="com-md-6">
											<input type="text" id="txtFornecedor" name="txtFornecedor" class="form-control">
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
		<script src="_PLUGINS/jquery-3.1.1.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
	</body>
</html>