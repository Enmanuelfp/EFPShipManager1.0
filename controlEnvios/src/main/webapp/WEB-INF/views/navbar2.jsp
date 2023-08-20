<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Navbar con Bootstrap</title>
  <!-- Agrega el enlace a la hoja de estilos de Bootstrap -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/navbar.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <!-- Logo o nombre de la empresa a la izquierda -->
    
    <a class="navbar-brand" href="home">EFPShipManager1.0</a>

    <!-- Botón que aparecerá en dispositivos pequeños para desplegar el menú -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Contenedor de los elementos del menú -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <!-- Elementos del menú a la derecha -->
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="index">Volver al portafolio </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contacto">Contacto</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Registro</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Agrega el enlace al archivo de scripts de Bootstrap (jQuery y Popper.js son requeridos) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>