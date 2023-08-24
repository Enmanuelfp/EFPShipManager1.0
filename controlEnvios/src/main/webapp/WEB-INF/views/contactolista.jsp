<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="cl.efpg.controlEnvios.model.entity.Contacto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contacto List</title>

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
    <h4>Listado de Contactos</h4>
    
    <table id="table" class="display nowrap" style="width: 90%">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Correo Electrónico</th>
                <th>Número Telefónico</th>
                <th>Mensaje</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${contactoList}" var="contacto">
                <tr>
                    <td>${contacto.id}</td>
                    <td>${contacto.nombre}</td>
                    <td>${contacto.correoElectronico}</td>
                    <td>${contacto.numeroTelefonico}</td>
                    <td>${contacto.mensaje}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<div class="modal-container" id="modal" style="display: none;">
    <!-- Código del modal aquí -->
</div>

<script src="${pageContext.request.contextPath}/res/js/ConfirmarModal.js"></script>
<script src="${pageContext.request.contextPath}/res/js/StyleJsList.js"></script>

</body>
</html>
