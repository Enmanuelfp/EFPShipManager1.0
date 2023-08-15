<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Control de Env�os</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilo.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <style>
        /* Tu estilo personalizado aqu� */
    </style>
</head>
<body>
    <%@include file="navbar2.jsp" %>
    
    <!-- Encabezado -->
    <header class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-3">Sistema de Control de Env�os</h1>
            <p class="lead">Optimizaci�n log�stica para tu negocio</p>
            <a href="login" class="btn btn-primary btn-lg">Empezar</a>
        </div>
    </header>

    <!-- Secci�n de Beneficios -->
    <section class="container my-5">
        <div class="row">
            <div class="col-md-6">
                <h2 class="section-heading">�Por qu� elegir nuestro sistema?</h2>
                <p>Optimiza tus procesos de env�o, asignaci�n de repartidores y rutas.</p>
            </div>
            <div class="col-md-6 text-center">
                <i class="feature-icon fas fa-shipping-fast"></i>
            </div>
        </div>
    </section>

    <!-- Secci�n de Servicios -->
    <section class="bg-light py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center">
                    <i class="feature-icon fas fa-tools"></i>
                </div>
                <div class="col-md-6">
                    <h2 class="section-heading">Nuestros Servicios</h2>
                    <ul class="list-unstyled service-list">
                        <li><i class="service-icon fas fa-truck-moving"></i> Seguimiento en tiempo real</li>
                        <li><i class="service-icon fas fa-route"></i> Asignaci�n inteligente de repartidores</li>
                        <li><i class="service-icon fas fa-bell"></i> Notificaciones autom�ticas</li>
                        <li><i class="service-icon fas fa-chart-bar"></i> Reportes detallados</li>
                        <li><i class="service-icon fas fa-users"></i> Gesti�n de usuarios y roles</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Llamada a la Acci�n -->
    <section class="cta-section">
        <div class="container">
            <h2 class="section-heading">��nete a nosotros y mejora tu log�stica!</h2>
            <p class="lead">Optimiza tus procesos de env�o y proporciona un mejor servicio a tus clientes.</p>
            <a href="#" class="btn btn-primary btn-lg">Registrarse</a>
        </div>
    </section>

    <%@include file="footer.jsp" %>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>