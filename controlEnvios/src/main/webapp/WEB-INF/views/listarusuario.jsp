<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="cl.efpg.controlEnvios.model.entity.Usuario" %>
<%@ page import="cl.efpg.controlEnvios.model.entity.Repartidor" %>
<%@ page import="cl.efpg.controlEnvios.model.entity.Cliente" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Listado clientes</title>

    <!-- Enlaza la hoja de estilo CSS de DataTables -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css">

    <!-- Enlaza la hoja de estilo CSS de DataTables Buttons -->
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css">
    <script src="https://cdn.datatables.net/plug-ins/1.11.4/i18n/Spanish.json"></script>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>

    <!-- DataTables -->
    <script src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>

    <!-- DataTables Buttons -->
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>

    <!-- Enlace al CSS de Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Tu hoja de estilo personalizada -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/StyleList.css">



</head>
<body>

<%@ include file='navbar.jsp'%>	

<div class="content-container">

<h4>Listado de Usuario</h4>

<table id="table" class="display nowrap" style="width: 90%">
    <thead>
        <tr>
            <th>Id</th>            
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Run</th> 
            <th>Edad</th>                     
            <th>correoElectronico</th>            
            <th>numeroTelefonico</th>
            <th>tipoUsuario</th>  
            <th>Licencia</th>
            <th>Vehiculo</th>
            <th>Tipo de Empresa</th>      
            <th>Editar</th>
        </tr>
    </thead>
    <tbody>
        <%
        @SuppressWarnings("unchecked")
        List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
        for (Usuario u : usuarios) {
        %>
        <tr>
            <td><%= u.getId() %></td>
            <td><%= u.getNombre() %></td>
            <td><%= u.getApellido() %></td>
            <td><%= u.getRun() %></td> 
            <td><%= u.getEdad() %></td>                        
            <td><%= u.getCorreoElectronico() %></td>
            <td><%= u.getNumeroTelefonico() %></td>
            <td><%= u.getTipoUsuario() %></td>
            
            <% if (u instanceof Repartidor) {
                Repartidor repartidor = (Repartidor) u;
            %>
            <td><%= repartidor.getLicencia() %></td>
            <td><%= repartidor.getVehiculo() %></td>
            <td></td> <!-- Deja en blanco el campo de "Tipo de Empresa" para Repartidores -->
            <% } else if (u instanceof Cliente) {
                Cliente cliente = (Cliente) u;
            %>
            <td></td> <!-- Deja en blanco los campos de "Licencia" y "Vehiculo" para Clientes -->
            <td></td>
            <td><%= cliente.getTipoEmpresa() %></td>
            <% } else {
            %>
            <td></td>
            <td></td>
            <td></td>
            <% } %>
            
            <td><button class="btn btn-warning">Editar</button></td>
        </tr>
        <% } %>
    </tbody>
      <tfoot>
        <tr>
             <th>Id</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Fecha Nacimiento</th>
            <th>Run</th>          
            <th>Telefono</th>            
            <th>Afp</th>
            <th>Sistema Salud</th>
            <th>Direccion</th>
            <th>Comuna</th>
            <th>Edad</th>            
            <th>Editar</th>
        </tr>
    </tfoot>
</table>
</div>
<div class="modal-container" id="modal" style="display: none;">
		<div class="modal-wrapper">
			<div class="modal-content">
				<form class="modal-form" id="registrationForm"
					action="actualizarusuario" method="POST">
					<h3 class="text-center">Actualizar Registro</h3>

					<div class="modal-field">
						<label for="nombreCliente">Nombre:</label> <input
							type="text" class="form-control w-75" name="nombre" id="nombre"
							placeholder="Ingrese el nombre del cliente" required>
					</div>
					
					
					
					
					
					
					
					<div class="modal-field">
						<label for="fechanacimiento">Fecha Nacimiento:</label> <input type="text"
							class="form-control" name="fechaNacimiento" id="fechaNacimiento"
							placeholder="Ingrese fecha de nacimiento" required>
					</div>
					<div class="modal-field">
						<label for="run">Run cliente:</label> <input type="text"
							class="form-control w-50" name="run" id="run"
							placeholder="Ingrese el rut del cliente" required>
					</div>
					<div class="modal-field">
						<label for="apellido">Apellido:</label> <input
							type="text" class="form-control" name="apellido" id="apellido"
							placeholder="Ingrese el apellido" required>
					</div>
					<div class="modal-field">
						<label for="telefono">Telefono:</label> <input type="text"
							class="form-control w-25" name="telefono" id="telefono"
							placeholder="Ingrese el telefono" required>
					</div>
					
					
					
					
					
					<div class="modal-field">
						<label for="afp">Afp:</label> <input
							type="text" class="form-control w-75" name="afp" id="afp"
							placeholder="Ingrese afp cliente" required>
					</div>
					<div class="modal-field">
						<label for="sistemaSalud">Sistema Salud:</label> <input type="text"
							class="form-control" name="sistemaSalud" id="sistemaSalud"
							placeholder="Ingrese sistema salud" required>
					</div>
					<div class="modal-field">
						<label for="direccion">direccion cliente:</label> <input type="text"
							class="form-control w-50" name="direccion" id="direccion"
							placeholder="Ingrese direccion del cliente" required>
					</div>
					<div class="modal-field">
						<label for="comuna">comuna:</label> <input
							type="text" class="form-control" name="comuna" id="comuna"
							placeholder="Ingrese comuna" required>
					</div>
					<div class="modal-field">
						<label for="edad">Edad:</label> <input type="text"
							class="form-control w-25" name="edad" id="edad"
							placeholder="Ingrese la edad" required>
					</div>
					
					
					
					
					
					
					
					
					<div class="modal-buttons">
						<button type="submit" class="btn btn-primary" id="btnEnviar" >Enviar</button>		
						<button class="btn btn-primary close-btn">Cerrar</button>
					</div>
					
				</form>
			</div>
		</div>
	</div>

 <!--  <%@ include file='footer.jsp'%>-->	

<script src="${pageContext.request.contextPath}/res/js/ConfirmarModal.js"></script>
 <script src="${pageContext.request.contextPath}/res/js/StyleJsList.js"></script> 









</body>
</html>