<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="../estrutura/head.jsp">
	<jsp:param name="css" value="/admin/assets/css/usuarios_adicionar.css"/>
</jsp:include>

	<div class="wrapper">

		<!-- Sidebar -->

		<%@include file="../estrutura/menu.jsp" %>

		<!-- Content -->

		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<nav>
							<a href="#" id="toggle"><i class="fas fa-bars ml-3"></i></a>
						</nav>
						<div class="below-toggle-content">
							<div class="col-md-12">
								<div class="top-part mb-3">
									<h2 class="d-inline">Adicionar</h2>
									<p class="d-inline ml-2">Usu�rios</p>
									<a href="<%= request.getContextPath() %>/admin/index.jsp" class="d-inline text-dark mt-2" style="text-decoration: none; float: right; font-weight: 500;"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
								</div>
								<div class="row">
									<a href="<%= request.getContextPath() %>/admin/usuarios/gerenciar.jsp" class="btn btn-primary ml-3 mb-2">Gerenciar Usu�rios</a>
								</div>
								<div class="row">
									<form method="POST" action="inserir" class="w-100 p-3">
										<div class="form-group">
									    	<label for="first-name" style="font-weight: 600;">Nome</label>
									    	<input type="text" name="Nome" class="form-control shadow-none" id="Nome" placeholder="Nome">
									  	</div>
									  	<div class="form-group">
									    	<label for="email" style="font-weight: 600;">Email</label>
									    	<input type="email" name="Email" class="form-control shadow-none" id="Email" placeholder="Email">
									  	</div>
									  	<div class="form-group">
									    	<label for="user-level" style="font-weight: 600;">Nivel de Acesso</label>
									    	<input type="number" name="Nivel_Acesso" class="form-control shadow-none" id="Nivel_Acesso" placeholder="Nivel de Acesso">
									  	</div>
									  	<div class="form-group">
									    	<label for="password" style="font-weight: 600;">Senha</label>
									    	<input type="password" name="Senha" class="form-control shadow-none" id="Senha" placeholder="Senha">
									  	</div>
									  	<div class="form-group">
									    	<label for="confirm-password" style="font-weight: 600;">Confirmar Senha</label>
									    	<input type="password" name="confirmPassword" class="form-control shadow-none" id="confirm-password" placeholder="Confirmar Senha">
									  	</div>
									  	<div>
									  	<button type="submit" name="save" class="btn btn-primary" id="save">Salvar</button>
									  	<a href="<%= request.getContextPath() %>/admin/usuarios/gerenciar.jsp"><button type="submit" name="cancel" class="btn btn-danger">Cancelar</button></a>
									  	</div>
									</form>
								</div>
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