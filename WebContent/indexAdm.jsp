<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Produtos Cadastrados</title>
	<link rel="stylesheet" href="_PLUGINS/bootstrap.min.css">
	<script src="_PLUGINS/jquery-3.4.1.slim.min.js"></script>
	<c:import url="import.jsp"/>
	<script>
	$(document).ready(function(){
		$("#mytable #checkall").click(function () {
		        if ($("#mytable #checkall").is(':checked')) {
		            $("#mytable input[type=checkbox]").each(function () {
		                $(this).prop("checked", true);
		            });

		        } else {
		            $("#mytable input[type=checkbox]").each(function () {
		                $(this).prop("checked", false);
		            });
		        }
		    });
		    
		    $("[data-toggle=tooltip]").tooltip();
		});

	</script>
	</head>
	<body>
		<c:import url="navbarAdm.jsp"/>
		
		<div class="container mt-5">
	<div class="row">
		
        
        <div class="col-md-12">
        <h4>Produtos Cadastrados</h4>
        <div class="table-responsive">
        <div class="row text-right" >
				<a href="/ROUPEX/produto.jsp" class="botao-cadastrar col-12 text-truncate " value="">
				  	NOVO PRODUTO
				</a>
			</div>

                
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>                 
                   <th>Nome</th>
                    <th>C�digo</th>
                     <th>Marca</th>
                     <th>Valor de Compra</th>
                     <th>Pre�o de Venda</th>
                     <th>Margem de Lucro</th>
                     <th>Quantidade Dipon�vel</th>
                     <th>Estampa</th>
                     <th>Data de Compra</th>
                      <th>Editar</th>
                      
                       <th>Inativar</th>
                   </thead>
				    <tbody>
				    
				    <tr>
				    
				    <td>Camisa Preta</td>
				    <td>#12BC</td>
				    <td>GUCCI</td>
				    <td>10</td>
				    <td>10</td>
				    <td>10%</td>
				    <td>20</td>
				    <td>N�O</td>
				    <td>01/01/2020</td>
				    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
				    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
				    </tr>
				    
				 <tr>
				    
				    <td>Camisa Preta</td>
				    <td>#12BC</td>
				    <td>GUCCI</td>
				    <td>10</td>
				    <td>10</td>
				    <td>10%</td>
				    <td>20</td>
				    <td>N�O</td>
				    <td>01/01/2020</td>
				    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
				    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
				    </tr>
				    
				    
				 <tr>
				    
				    <td>Camisa Preta</td>
				    <td>#12BC</td>
				    <td>GUCCI</td>
				    <td>10</td>
				    <td>10</td>
				    <td>10%</td>
				    <td>20</td>
				    <td>N�O</td>
				    <td>01/01/2020</td>
				    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
				    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
				    </tr>
				    
				    
				    
				 <tr>
				    
				    <td>Camisa Preta</td>
				    <td>#12BC</td>
				    <td>GUCCI</td>
				    <td>10</td>
				    <td>10</td>
				    <td>10%</td>
				    <td>20</td>
				    <td>N�O</td>
				    <td>01/01/2020</td>
				    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
				    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
				    </tr>
				    
				    
				 <tr>
				    
				    <td>Camisa Preta</td>
				    <td>#12BC</td>
				    <td>GUCCI</td>
				    <td>10</td>
				    <td>10</td>
				    <td>10%</td>
				    <td>20</td>
				    <td>N�O</td>
				    <td>01/01/2020</td>
				    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
				    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
				    </tr>
				    
				   
				    
				   
				    
				    </tbody>
				        
				</table>
				
				<!-- <div class="clearfix"></div>				
				                
				            </div>
				            
				        </div>
					</div>
				</div>
				
				
				<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
				      <div class="modal-dialog">
				    <div class="modal-content">
				          <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
				        <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
				      </div>
				          <div class="modal-body">
				          <div class="form-group">
				        <input class="form-control " type="text" placeholder="Camisa Preta">
				        </div>
				        <div class="form-group">
				        
				        <input class="form-control " type="text" placeholder="Irshad">
				        </div>
				        <div class="form-group">
				        <textarea rows="2" class="form-control" placeholder="GUCCI"></textarea>
				    
				        
				        </div>
				      </div>
				          <div class="modal-footer ">
				        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span>�Update</button>
				      </div>
				        </div>
				    /.modal-content 
				  </div>
				      /.modal-dialog 
				    </div>
				    
				    
				    
				    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
				      <div class="modal-dialog">
				    <div class="modal-content">
				          <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
				        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
				      </div>
				          <div class="modal-body">
				       
				       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>
				       
				      </div>
				        <div class="modal-footer ">
				        <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span>�Yes</button>
				        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>�No</button>
				      </div>
				        </div>
				    /.modal-content 
				  </div>
				      /.modal-dialog 
				    </div> -->
		
	</body>
</html>