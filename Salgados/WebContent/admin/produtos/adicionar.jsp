<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.ResultSet" %>
<jsp:include page="../estrutura/head.jsp">
	<jsp:param name="css" value="/admin/assets/css/produtos_adicionar.css"/>
</jsp:include>
<%@ include file="../estrutura/head.jsp" %>

	<div class="wrapper">

		<!-- Sidebar -->
		<%@ include file="../estrutura/menu.jsp" %>

		<!-- Content -->

		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<nav class="bar">
							<a href="#" id="toggle"><i class="fas fa-bars ml-3"></i></a>
						</nav>
						<div class="below-toggle-content">
							<div class="col-md-12">
								<div class="top-part mb-3">
									<h2 class="d-inline">Adicionar Produtos</h2>
									<p class="d-inline ml-2">Produtos</p>
									<a href="<%= request.getContextPath() %>/admin/index.jsp" class="d-inline text-dark mt-2" style="text-decoration: none; float: right; font-weight: 500;"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
								</div>
							</div>
							<div class="row">
								<h5 class="text-danger" style="margin-left: 32.5px;"><?php echo $msg; ?></h5>
								<form method="POST" action="adicionar">
								    <div class="form-group">
								    	<label for="name" style="font-weight: 600;">Foto</label>
								    	<input type="text" name="foto" class="form-control shadow-none" id="name" placeholder="Foto do Produto">
								  	</div>
							    	<div class="form-group">
								    	<label for="name" style="font-weight: 600;">Nome Produto</label>
								    	<input type="text" name="nome" class="form-control shadow-none" id="name" placeholder="Nome do Produto" ">
								  	</div>
								  	<div class="form-group">
								    	<label for="price" style="font-weight: 600;">Pre�o</label>
								    	<input type="text" name="valor" class="form-control shadow-none" id="price" placeholder="Pre�o do Produto" ">
								  	</div>
									<div class="form-group">
									    <label for="groups" style="font-weight: 600;">Categoria</label>
									    <select class="form-control shadow-none" id="category" name="tipo">
				    						<option selected>Selecionar um tipo</option>
				    						<option value="Salgados">Salgados</option>
				    						<option value="Pratos">Pratos</option>
				    						<option value="Bebidas">Bebidas</option>
				    						<option value="Doces">Doces</option>
									    </select>
									</div>
								  	<button type="submit" name="add" class="btn btn-primary shadow-none mt-3 mb-2">Adicionar Produto</button>
					  				<a href="<%= request.getContextPath() %>/admin/produtos/gerenciar.jsp"><button type="button" class="btn btn-danger shadow-none mt-3 mb-2" >Cancelar</button></a>
								</form>
							</div>
						</div>		
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$('#toggle').click(function(e){
			e.preventDefault();
			$('.wrapper').toggleClass('menuDisplayed');
		});
	</script>


</body>
</html>