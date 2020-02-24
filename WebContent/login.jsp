<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rek="stylesheet" href="_CSS/login.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<title>Login</title>
		<style>
			body{
	font-family: "Lato", sans-serif;
}

.main-head{
	height: 150px;
	background: #FFF;
}

.sidenav{
	height: 100%;
	background-color: #000;
	overflow-x: hidden;
	padding-top: 20px;
}

.main{
	padding: 0px 10px;
}

@media screen and (max-height: 450px){
	.sidenav {padding-top: 15px;}
}

@media screen and (max-width: 450px){
	.login-form{
		margin-top: 10%;
	}
	
	.register-form{
		margin-top: 10%;
	}
}

@media screen and (min-width: 768px){
	.main{margin-left: 40%;}
	.sidenav{
		width: 40%;
		position: fixed;
		z-index: 1;
		top: 0;
		left: 0;
	}
	.login-form{margin-top: 80%;}
	.register-form{margin-top: 80%;}
}

.login-main-text{
	margin-top: 20%;
	padding: 60px;
	color: #FFF;
}

.login-main-text h2{
	font-weight: 300;
}

.btn-black{
	background-color: #000 !important;
	color: #FFF;
}
		</style>
	</head>
	<body>
		
		<div class="sidenav">
			<div class="login-main-text">
				<h2>ROUPEX</h2>
				<p>Entre ou Regristre-se por aqui</p>
			</div>
		</div>
		
		<div class="main">
			<div class="col-md-6 com-sm-12">
				<div class="login-form">
					<form>
					
						<div class="form-group">
							<label>Email</label>
							<input type="text" class="form-control" placeholder="Email" name="" id="">
						</div>
						
						<div class="form-group">
							<label>Senha</label>
							<input type="password" class="form-control" placeholder="Senha" name="" id="">
						</div>
						
						<button type="submit" class="btn btn-black">Login</button>
						<button href="cliente.jsp" class="btn btn-secundary">Registre-se</button>
						
					</form>
				</div>
			</div>
		</div>
	
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
</html>