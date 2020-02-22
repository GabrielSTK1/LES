<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Carrinho</title>
	<link rel="stylesheet" href="_PLUGINS/bootstrap.min.css">
	<script src="_PLUGINS/jquery-3.4.1.slim.min.js"></script>
	</head>
	<body>
		<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
			<div class="container">
				<a class="navbar-brand" href="#">ROUPEX</a>
			</div>
		</nav>
		<div class="container">
		    <div class="row">
		        <div class="col-sm-12 col-md-10 col-md-offset-1">
		            <table class="table table-hover">
		                <thead>
		                    <tr>
		                        <th>Produto</th>
		                        <th>Quantidade</th>
		                        <th class="text-center">Preço</th>
		                        <th class="text-center">Total</th>
		                        <th> </th>
		                    </tr>
		                </thead>
		                <tbody>
		                    <tr>
		                        <td class="col-sm-8 col-md-6">
		                        <div class="media">
		                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 72px; height: 72px;"> </a>
		                            <div class="media-body">
		                                <h4 class="media-heading"><a href="#">Nome do Produto</a></h4>
		                                <h5 class="media-heading"> by <a href="#">Marca</a></h5>
		                            </div>
		                        </div></td>
		                        <td class="col-sm-1 col-md-1" style="text-align: center">
		                        <input type="email" class="form-control" id="exampleInputEmail1" value="3">
		                        </td>
		                        <td class="col-sm-1 col-md-1 text-center"><strong>R$4.87</strong></td>
		                        <td class="col-sm-1 col-md-1 text-center"><strong>R$14.61</strong></td>
		                        <td class="col-sm-1 col-md-1">
		                        <button type="button" class="btn btn-danger">
		                            <span class="glyphicon glyphicon-remove"></span> Remover
		                        </button></td>
		                    </tr>
		                    <tr>
		                        <td class="col-md-6">
		                        <div class="media">
		                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 72px; height: 72px;"> </a>
		                            <div class="media-body">
		                                <h4 class="media-heading"><a href="#">Nome do Produto</a></h4>
		                                <h5 class="media-heading"> by <a href="#">Marca</a></h5>
		                            </div>
		                        </div></td>
		                        <td class="col-md-1" style="text-align: center">
		                        <input type="email" class="form-control" id="exampleInputEmail1" value="2">
		                        </td>
		                        <td class="col-md-1 text-center"><strong>R$4.99</strong></td>
		                        <td class="col-md-1 text-center"><strong>R$9.98</strong></td>
		                        <td class="col-md-1">
		                        <button type="button" class="btn btn-danger">
		                            <span class="glyphicon glyphicon-remove"></span> Remover
		                        </button></td>
		                    </tr>
		                    <tr>
		                        <td>   </td>
		                        <td>   </td>
		                        <td>   </td>
		                        <td><h5>Subtotal</h5></td>
		                        <td class="text-right"><h5><strong>R$24.59</strong></h5></td>
		                    </tr>
		                    <tr>
		                        <td>   </td>
		                        <td>   </td>
		                        <td>   </td>
		                        <td><h5>Frete</h5></td>
		                        <td class="text-right"><h5><strong>R$6.94</strong></h5></td>
		                    </tr>
		                    <tr>
		                        <td>   </td>
		                        <td>   </td>
		                        <td>   </td>
		                        <td><h3>Total</h3></td>
		                        <td class="text-right"><h3><strong>R$31.53</strong></h3></td>
		                    </tr>
		                    <tr>
		                        <td>   </td>
		                        <td>   </td>
		                        <td>   </td>
		                        <td>
		                        <button type="button" class="btn btn-default">
		                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Comprando
		                        </button></td>
		                        <td>
		                        <button type="button" class="btn btn-success">
		                            Finalizar Compra <span class="glyphicon glyphicon-play"></span>
		                        </button></td>
		                    </tr>
		                </tbody>
		            </table>
		        </div>
		    </div>
		</div>
	
	
	</body>
</html>