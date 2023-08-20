<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="cl.efpg.controlEnvios.model.entity.Paquete" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Paquetes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet">
</head>
<body>

<%@ include file='navbar.jsp'%>
<div class="container">
    <h1 class="titulo">Lista de Paquetes</h1>
    <div class="table-responsive">
        <table class="table table-striped table-bordered" id="paquetesTable">
            <thead>
                <tr>
                    <th>Número de Paquete</th>
                    <th>Dirección de Destino</th>
                    <th>Repartidor</th>
                    <th>Cliente</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${paquetes}" var="paquete">
                    <tr>
                        <td>${paquete.numeroPaquete}</td>
                        <td>${paquete.direccionDestino}</td>
                        <td>${paquete.repartidor.nombre} ${paquete.repartidor.apellido}</td>
                        <td>${paquete.cliente.nombre} ${paquete.cliente.apellido}</td>
                        <td>
                            <a href="#" class="btn btn-primary btn-editar" data-id="${paquete.numeroPaquete}">Editar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<div class="modal-container" id="modal" style="display: none;">
    <div class="modal-wrapper">
        <div class="modal-content">
            <form class="modal-form" id="registrationForm" action="/paquetes/editar" method="POST">
                <h3 class="text-center">Editar Paquete</h3>
                <div class="modal-field">
                    <label for="numeroPaquete">Número de Paquete:</label>
                    <input type="text" class="form-control w-75" name="numeroPaquete" id="numeroPaquete" readonly required>
                </div>
                <div class="modal-field">
                    <label for="direccionDestino">Dirección de Destino:</label>
                    <input type="text" class="form-control" name="direccionDestino" id="direccionDestino" required>
                </div>
                <div class="modal-field">
                    <label for="repartidorNombre">Nombre del Repartidor:</label>
                    <input type="text" class="form-control" name="repartidorNombre" id="repartidorNombre" required>
                </div>
                <div class="modal-field">
                    <label for="repartidorApellido">Apellido del Repartidor:</label>
                    <input type="text" class="form-control" name="repartidorApellido" id="repartidorApellido" required>
                </div>
                <div class="modal-field">
                    <label for="clienteNombre">Nombre del Cliente:</label>
                    <input type="text" class="form-control" name="clienteNombre" id="clienteNombre" required>
                </div>
                <div class="modal-field">
                    <label for="clienteApellido">Apellido del Cliente:</label>
                    <input type="text" class="form-control" name="clienteApellido" id="clienteApellido" required>
                </div>
                <div class="modal-buttons">
                    <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                    <button class="btn btn-primary close-btn">Cerrar</button>
                </div>
            </form>
        </div>
    </div>
</div>

<%@ include file='footer.jsp'%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/listarpaquetes.js"></script>

</body>
</html>
