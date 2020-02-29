<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Trocas</title>
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
		<c:import url="navbar.jsp"/>
		
		<div class="container">
	<div class="row">
		
        
        <div class="col-md-12">
        <h4>Minhas Trocas</h4>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped text-center">
                   
                   <thead>                 
                   <th>Número da Troca</th>
                   <th>Número do Pedido</th>
                    <th>Data</th>
                    <th>Códido para Envio</th>
                    <th>Cupom</th>
                     <th>Status</th>                    
                   </thead>
				    <tbody>
				    
				    <tr>				  
				    <td>#ABC123</td>
				    <td>#123ABC</td>
				    <td>02/02/2020</td>
				    <td>R1234</td>
				    <td>CP123</td>
				    <td>Em Transporte</td>				    
				    </tr>
				    
				 <tr>
				    
				    <td>#ABC123</td>
				    <td>#123ABC</td>
				    <td>02/02/2020</td>
				    <td>R1234</td>
				    <td>CP123</td>
				    <td>Em Transporte</td>
				    </tr>
				    
				    
				 <tr>
				    
				    <td>#ABC123</td>
				    <td>#123ABC</td>
				    <td>02/02/2020</td>
				    <td>R1234</td>
				    <td>CP123</td>
				    <td>Em Transporte</td>
				    </tr>
				    
				    
				    
				 <tr>
				    
				    <td>#ABC123</td>
				    <td>#123ABC</td>
				    <td>02/02/2020</td>
				    <td>R1234</td>
				    <td>CP123</td>
				    <td>Em Transporte</td>
				    </tr>
				    
				    
				 <tr>
				    
				    <td>#ABC123</td>
				    <td>#123ABC</td>
				    <td>02/02/2020</td>
				    <td>R1234</td>
				    <td>CP123</td>
				    <td>Em Transporte</td>
				    </tr>
				   
				    </tbody>
				        
				</table>
				
				<div class="clearfix"></div>				
				                
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
				        <input class="form-control " type="text" placeholder="Mohsin">
				        </div>
				        <div class="form-group">
				        
				        <input class="form-control " type="text" placeholder="Irshad">
				        </div>
				        <div class="form-group">
				        <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
				    
				        
				        </div>
				      </div>
				          <div class="modal-footer ">
				        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
				      </div>
				        </div>
				    <!-- /.modal-content --> 
				  </div>
				      <!-- /.modal-dialog --> 
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
				        <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
				        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
				      </div>
				        </div>
				    <!-- /.modal-content --> 
				  </div>
				      <!-- /.modal-dialog --> 
				    </div>
		
	</body>
</html>