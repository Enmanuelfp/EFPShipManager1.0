<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="cl.efpg.controlEnvios.model.entity.Usuario" %>
<%@ page import="cl.efpg.controlEnvios.model.entity.Repartidor" %>
<%@ page import="cl.efpg.controlEnvios.model.entity.Cliente" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/res/css/StyleList.css" rel="stylesheet">
</head>
<body>

<%@ include file='navbar.jsp'%>
<div class="container">
    <h1 class="titulo">Lista de Usuarios</h1>
    <div class="table-responsive">
        <table class="table table-striped table-bordered" id="userTable">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Run</th>
                    <th>Edad</th>
                    <th>Direccion</th>
                    <th>Numero Telefonico</th>
                    <th>Correo Electrónico</th>
                    <th>Tipo de Usuario</th>
                    <th>Licencia</th>
                    <th>Vehículo</th>
                    <th>Tipo de Empresa</th>
                    <th>Acciones</th>
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
                    <td><%= u.getDireccion() %></td>
                    <td><%= u.getNumeroTelefonico() %></td>
                    <td><%= u.getCorreoElectronico() %></td>
                    <td><%= u.getTipoUsuario() %></td>
                    <% if (u instanceof Repartidor) {
                        Repartidor repartidor = (Repartidor) u;
                    %>
                    <td><%= repartidor.getLicencia() %></td>
                    <td><%= repartidor.getVehiculo() %></td>
                    <td></td>
                    <% } else if (u instanceof Cliente) {
                        Cliente cliente = (Cliente) u;
                    %>
                    <td></td>
                    <td></td>
                    <td><%= cliente.getTipoEmpresa() %></td>
                    <% } else { %>
                    <td></td>
                    <td></td>
                    <td></td>
                    <% } %>
                    <td><a href="#" class="btn btn-primary btn-editar" data-id="<%= u.getId() %>">Editar</a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div>

<div class="modal fade" id="editarModal" tabindex="-1" role="dialog" aria-labelledby="editarModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editarModalLabel">Editar Usuario</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="editarForm" action=actualizarusuario method="POST">
                    <input type="hidden" id="userId" name="id">
                    <input type="text" id="nombreEdit" name="nombre" class="form-control mb-2" placeholder="Nombre">
                    <input type="text" id="apellidoEdit" name="apellido" class="form-control mb-2" placeholder="Apellido">
                    <input type="text" id="runEdit" name="run" class="form-control mb-2" placeholder="Run">
                    <input type="text" id="edadEdit" name="edad" class="form-control mb-2" placeholder="Edad">
                    <input type="text" id="direccionEdit" name="direccion" class="form-control mb-2" placeholder="Dirección">
                    <input type="text" id="numeroTelefonicoEdit" name="numeroTelefonico" class="form-control mb-2" placeholder="Número Telefónico">
                    <input type="text" id="correoElectronicoEdit" name="correoElectronico" class="form-control mb-2" placeholder="Correo Electrónico">
                    <input type="text" id="tipoUsuarioEdit" name="tipoUsuario" class="form-control mb-2" placeholder="Tipo de Usuario">
                    <input type="text" id="licenciaEdit" name="licencia" class="form-control mb-2" placeholder="Licencia">
                    <input type="text" id="vehiculoEdit" name="vehiculo" class="form-control mb-2" placeholder="Vehículo">
                    <input type="text" id="tipoEmpresaEdit" name="tipoEmpresa" class="form-control mb-2" placeholder="Tipo de Empresa">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="submit" form="editarForm" class="btn btn-primary">Guardar Cambios</button>
            </div>
        </div>
    </div>
</div>

<div>
<%@ include file='footer.jsp'%>
</div>

<script>
    var actualizarUsuarioURL = '<%= request.getContextPath() %>/actualizarusuario';
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" rel="stylesheet">
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/listarpaquetes.js"></script>

</body>
</html>
