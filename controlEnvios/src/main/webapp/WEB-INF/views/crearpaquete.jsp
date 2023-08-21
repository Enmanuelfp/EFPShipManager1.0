<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="cl.efpg.controlEnvios.model.entity.Usuario"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Crear Paquete</title>
</head>
<body>

	<%@ include file='navbar.jsp'%>

	<div style="margin-top: 40px;">
		<h3 style="text-align: center;">Crear Paquete</h3>
	</div>

	<div class="content-container">
		<div class="container-fluid mt-4">
			<div class="row justify-content-center">
				<div class="col-md-6">
					<form action="crearpaquete" method="POST"
						class="border border-dark rounded p-4 shadow">
						<div class="mb-3">
							<label for="direccionDestino" class="form-label">Dirección
								de Destino</label> <input type="text"
								class="formulario__input form-control form-control-sm"
								name="direccionDestino" id="direccionDestino"
								placeholder="Dirección de Destino">
						</div>
						<div class="mb-3">
							<label for="numeroPaquete" class="form-label">Número de
								Paquete</label> <input type="text"
								class="formulario__input form-control form-control-sm"
								name="numeroPaquete" id="numeroPaquete"
								placeholder="Número de Paquete">
						</div>
						<div class="mb-3">
							<label for="repartidor" class="form-label">Cliente</label> <select
								class="formulario__input form-control form-control-sm"
								name="cliente" id="cliente">
								<option value="" disabled selected>Selecciona un
									cliente</option>
								<c:forEach items="${clientes}" var="clienteItem">
									<option value="${clienteItem.id}">${clienteItem.nombre}
										${clienteItem.apellido}</option>
								</c:forEach>
							</select>

						</div>
						<div class="mb-3">
							<label for="cliente" class="form-label">Repartidor</label> <select
								class="formulario__input form-control form-control-sm"
								name="repartidor" id="repartidor">
								<option value="" disabled selected>Selecciona un
									repartidor</option>
								<c:forEach items="${repartidores}" var="repartidorItem">
									<option value="${repartidorItem.id}">${repartidorItem.nombre}
										${repartidorItem.apellido}</option>
								</c:forEach>
							</select>

						</div>
						<div class="text-center">
							<button type="submit" class="formulario__btn btn btn-primary">Enviar</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
