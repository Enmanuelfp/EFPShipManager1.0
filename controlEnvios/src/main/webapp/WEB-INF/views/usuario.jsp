<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cl.efpg.controlEnvios.entity.Usuario" %>
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
        <%-- Aquí se debe escribir el código Java para obtener los datos de la base de datos y mostrarlos en la tabla --%>
        <%-- Por simplicidad, aquí solo se muestra un ejemplo estático --%>
        <tr>
            <td>1</td>
            <td>Juan</td>
            <td>Pérez</td>
            <td>12345678-9</td>
            <td>30</td>
            <td>Av. Libertad 123</td>
            <td>juan@example.com</td>
            <td>912345678</td>
            <td>Cliente</td>
        </tr>
    </table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script> 
</body>



</html>