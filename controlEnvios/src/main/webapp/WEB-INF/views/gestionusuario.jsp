<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="cl.efpg.controlEnvios.model.entity.UsuarioSistema"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gestion de usuarios</title>

<!-- Enlaza la hoja de estilo CSS de DataTables -->
<link rel="stylesheet"	href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css">

<!-- Enlaza la hoja de estilo CSS de DataTables Buttons -->
<link rel="stylesheet"	href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css">
<script	src="https://cdn.datatables.net/plug-ins/1.11.4/i18n/Spanish.json"></script>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

<!-- DataTables -->
<script
	src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
<!-- Enlaza la hoja de estilo CSS de DataTables -->

<!-- DataTables Buttons -->
<script
	src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script
	src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
<script
	src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>

<!-- Enlace al CSS de Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/res/css/StyleList.css">


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
<style>
    .is-invalid {
        border-color: red;
     }
</style>
</head>
<body>

	<%@ include file='navbar.jsp'%>

	<div class="content-container">

		<h4 style="margin-left: 70px;">Gestión de usuarios</h4>
		<br>
		<button class="btn btn-primary btn-sm" style=" margin-left: 70px;">Crear</button>
		<table id="table" class="display nowrap" style="width: 90%">
			<thead>
				<tr>
					<th>Id</th>
					<th>Nombre</th>
					<th>Password</th>
					<th>Rol</th>
					<th>Editar</th>

				</tr>
			</thead>
			<tbody>
				<%
				@SuppressWarnings("unchecked")
				List<UsuarioSistema> usuariosistema = (List<UsuarioSistema>) request.getAttribute("usuariosistema");
				for (UsuarioSistema u : usuariosistema) {
				%>
				<tr>
					<td><%=u.getIdUsuario()%></td>
					<td><%=u.getNombre()%></td>
					<td><%=u.getPassword()%></td>
					<td><%=u.getRol()%></td>
					<td><button class="btn btn-warning">Editar</button></td>

				</tr>
				<%
				}
				%>
			</tbody>

		</table>

	</div>

	<div class="modal-container" id="modal" style="display: none;">
		<div class="modal-wrapper">
			<div class="modal-content">
				<form class="modal-form" id="registrationForm"
					action="actualizarusuariosistema" method="POST">
					<h3 class="text-center">Actualizar Registro</h3>

					<div class="modal-field">
						<label for="idusuario">Id Usuario:</label> <input type="text"
							class="form-control w-75" name="idusuario" id="idusuario"
							readonly required>
					</div>

					<div class="modal-field">
						<label for="nombre">Nombre:</label> <input type="text"
							class="form-control w-75" name="nombre" id="nombre"
							placeholder="Ingrese el nombre " required>
					</div>
					<div class="modal-field">
						<label for="fechanacimiento">Password:</label> <input type="text"
							class="form-control" name="password" id="password"
							placeholder="Ingrese password encriptado" required>
					</div>
					<div class="modal-field">
						<label for="run">rol:</label> <input type="text"
							class="form-control w-50" name="rol" id="rol"
							placeholder="Ingrese el rut del cliente" required>
					</div>


					<div class="modal-buttons">
						<button type="submit" class="btn btn-primary" id="btnEnviar">Enviar</button>
						<button class="btn btn-primary close-btn">Cerrar</button>
					</div>

				</form>
			</div>
		</div>
	</div>



	<div class="modal-container" id="modalCrear" style="display: none;">
    <div class="modal-wrapper">
        <div class="modal-content">
            <form class="modal-form" id="crearUsuarioForm" action="crearusuariosistema" method="POST" >
				<h3 class="text-center">Crear Nuevo Usuario</h3>

                <div class="modal-field">
                    <label for="nombre" class="form-label"  >Nombre:</label>
                    <input type="text" class="formulario__input form-control form-control-sm" name="nombre" id="nombre" placeholder="Nombre" required>
                    <div class="invalid-feedback" id="nombreFeedback"></div>
					</div>

					<div class="modal-field">
                    <label for="password" class="form-label" >Password:</label>
                    <input type="text" class="formulario__input form-control form-control-sm" name="password" id="password" placeholder="Apellido" required>
                    <div class="invalid-feedback" id="passwordFeedback"></div>
					</div>
					
					<div class="modal-field">
                    <label for="rol" class="form-label" >Rol:</label>
                    <select class="form-control w-50" name="rol" id="rol" required>
                        <option value="">Seleccione un rol</option>
                        <option value="cliente">cliente</option>
                        <option value="admin">Admin</option>
                        <option value="administrativo">administrativo</option>
                        <option value="profesional">profesional</option>
                    </select>
                    <div class="invalid-feedback" id="rolFeedback"></div>
                </div>
                <div class="modal-buttons">
                    <button type="button" class="btn btn-primary" id="btnCrearUsuario">Crear</button>
                    <button class="btn btn-primary close-btn">Cerrar</button>
                    <a class="btn btn-primary" href="https://www.browserling.com/tools/bcrypt" target="_blank">Bcrypt</a>
                </div>
            </form>
        </div>
    </div>
</div>



	<script	src="${pageContext.request.contextPath}/res/js/ConfirmarModal.js"></script>


	<script src="${pageContext.request.contextPath}/res/js/StyleJsList2.js"></script>



<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>




</body>
</html>