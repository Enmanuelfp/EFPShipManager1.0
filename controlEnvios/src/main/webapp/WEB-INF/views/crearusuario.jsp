<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="cl.efpg.controlEnvios.model.entity.Usuario" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">

<title>Crear Usuario</title>
</head>
<body>

	<%@ include file='navbar.jsp'%>

	<div style="margin-top: 40px;">
		<h3 style="text-align: center;">Crear Usuario</h3>
	</div>

	<div class="content-container">
		<div class="container-fluid mt-4">
			<div class="row justify-content-center">
				<div class="col-md-6">
					<form action="crearusuario" method="POST"
						class="border border-dark rounded p-4 shadow">
						<div class="row mb-3">
							<div class="col-md-6">
								<label for="nombre" class="form-label">Nombre</label> <input
									type="text"
									class="formulario__input form-control form-control-sm"
									name="nombre" id="nombre" placeholder="Nombre">
							</div>
							<div class="col-md-6">
								<label for="apellido" class="form-label">Apellido</label> <input
									type="text"
									class="formulario__input form-control form-control-sm"
									name="apellido" id="apellido" placeholder="Apellido">
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-md-6">
								<label for="run" class="form-label">Run</label> <input
									type="text"
									class="formulario__input form-control form-control-sm"
									name="run" id="run" placeholder="Run">
							</div>
							<div class="col-md-6">
								<label for="edad" class="form-label">Edad</label> <input
									type="text"
									class="formulario__input form-control form-control-sm"
									name="edad" id="edad" placeholder="Edad">
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-md-6">
								<label for="direccion" class="form-label">Dirección</label> <input
									type="text"
									class="formulario__input form-control form-control-sm"
									name="direccion" id="direccion" placeholder="Dirección">
							</div>
							<div class="col-md-6">
								<label for="correoElectronico" class="form-label">Correo
									Electrónico</label> <input type="text"
									class="formulario__input form-control form-control-sm"
									name="correoElectronico" id="correoElectronico"
									placeholder="Correo Electrónico">
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-md-6">
								<label for="numeroTelefonico" class="form-label">Número
									Telefónico</label> <input type="text"
									class="formulario__input form-control form-control-sm"
									name="numeroTelefonico" id="numeroTelefonico"
									placeholder="Número Telefónico">
							</div>

							<div class="col-md-6">
								<div class="col-md-6">
									<label for="tipoUsuario" class="form-label">Tipo de
										Usuario</label> <select
										class="formulario__input form-control form-control-sm"
										name="tipoUsuario" id="tipoUsuarioSelect">
										<option value="Repartidor">Repartidor</option>
										<option value="Cliente">Cliente</option>
									</select>
								</div>
							</div>
							<div id="tipoUsuario" style="display: none;"></div>

							<div id="camposRepartidor" style="display: none;">
								<!-- Campos específicos para Repartidor -->
								<div class="mb-3">
									<label for="tipoLicencia" class="form-label">Tipo de
										Licencia</label> <input type="text"
										class="formulario__input form-control form-control-sm"
										name="tipoLicencia" id="tipoLicencia" placeholder="Licencia">
								</div>
								<div class="mb-3">
									<label for="tipoVehiculo" class="form-label">Tipo de
										Vehiculo</label> <input type="text"
										class="formulario__input form-control form-control-sm"
										name="tipoVehiculo" id="tipoVehiculo" placeholder="Vehiculo">
								</div>
								<!-- ... Agregar más campos si es necesario ... -->
							</div>

							<div id="camposCliente" style="display: none;">
								<!-- Campos específicos para Cliente -->
								<div class="mb-3">
									<label for="tipoEmpresa" class="form-label">Tipo de
										empresa</label> <input type="text"
										class="formulario__input form-control form-control-sm"
										name="tipoEmpresa" id="tipoEmpresa" placeholder="tipoEmpresa">
								</div>

								<!-- ... Agregar más campos si es necesario ... -->
							</div>

						</div>
						<div class="text-center">
							<button type="submit" class="formulario__btn btn btn-primary"
								onclick="mostrarAlerta()">Enviar</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>



	
	<script src="${pageContext.request.contextPath}/res/js/crearusuario.js"></script>
	<script src="${pageContext.request.contextPath}/res/js/Confirmar.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</body>
</html>
