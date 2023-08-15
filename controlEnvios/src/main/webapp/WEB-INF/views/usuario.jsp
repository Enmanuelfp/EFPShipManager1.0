<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cl.efpg.controlEnvios.model.entity.Usuario" %>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pagina de Productos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<%@ include file='navbar.jsp'%>
    <h1>Tabla de Usuarios</h1>
    
    <form action="AgregarUsuarioServlet" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" name="nombre" id="nombre" required>
        <br>
        <label for="apellido">Apellido:</label>
        <input type="text" name="apellido" id="apellido" required>
        <br>
        <label for="run">RUN:</label>
        <input type="text" name="run" id="run" required>
        <br>
        <label for="edad">Edad:</label>
        <input type="text" name="edad" id="edad" required>
        <br>
        <label for="direccion">Dirección:</label>
        <input type="text" name="direccion" id="direccion" required>
        <br>
        <label for="correo">Correo Electrónico:</label>
        <input type="email" name="correo" id="correo" required>
        <br>
        <label for="telefono">Número Telefónico:</label>
        <input type="tel" name="telefono" id="telefono" required>
        <br>
        <label for="tipo">Tipo de Usuario:</label>
        <select name="tipo" id="tipo">
            <option value="Cliente">Cliente</option>
            <option value="Repartidor">Repartidor</option>
        </select>
        <br>
        <input type="submit" value="Agregar Usuario">
    </form>
    
    <hr>
    
    <h2>Usuarios Registrados:</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>RUN</th>
            <th>Edad</th>
            <th>Dirección</th>
            <th>Correo Electrónico</th>
            <th>Número Telefónico</th>
            <th>Tipo de Usuario</th>
        </tr>
         <%
         @SuppressWarnings("unchecked")
         List<Usuario> usuarios = (List<Usuario>) request.getAttribute("Usuarios");
         for ( Usuario u : usuarios){
         %>
         
        <tr>
            <td><% u.getId(); %></td>
            <td><%u.getNombre(); %></td>
            <td><%u.getApellido(); %></td>
            <td><%u.getRun(); %></td>
            <td><%u.getEdad(); %></td>
            <td><%u.getDireccion(); %></td>
            <td><%u.getCorreoElectronico(); %></td>
            <td><%u.getNumeroTelefonico(); %></td>
            <td><%u.getTipoUsuario(); %></td>
        </tr>
        <% } %>
    </table>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script> 
    <script>
        const tipoUsuarioSelect = document.getElementById("tipoUsuario");
        const camposUsuario = document.getElementById("camposUsuario");
        const camposRepartidor = document.getElementById("camposRepartidor");
        const camposCliente = document.getElementById("camposCliente");

        tipoUsuarioSelect.addEventListener("change", function() {
            camposUsuario.style.display = "none";
            camposRepartidor.style.display = "none";
            camposCliente.style.display = "none";

            const tipoUsuario = tipoUsuarioSelect.value;

            if (tipoUsuario === "usuario") {
                camposUsuario.style.display = "block";
            } else if (tipoUsuario === "repartidor") {
                camposRepartidor.style.display = "block";
            } else if (tipoUsuario === "cliente") {
                camposCliente.style.display = "block";
            }
        });

        function mostrarAlerta() {
            Swal.fire({
                icon: 'success',
                title: '¡Enviado!',
                text: '¡Los datos han sido enviados correctamente!',
                timer: 4000,
                showConfirmButton: false,
                width: 300,
                heightAuto: false
            });
        }
    </script>
</body>



</html>