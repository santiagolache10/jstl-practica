<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <title>Ejercicio 2 - JSTL Lab</title>
</head>
<body>

    <nav class="barra py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <a href="../../index.jsp" class="marca">JSTL<span>.lab</span></a>
            <a href="../../index.jsp" class="volver">&larr; Volver a los ejercicios</a>
        </div>
    </nav>

    <main class="container my-5">
        <div class="hero mb-5">
            <h1 class="fw-bold">Ejercicio 2</h1>
            <p>Guardado e impresión de datos con <strong>c:set</strong></p>
        </div>

        <div class="resultado">
            <h3>Datos personales</h3>
            <form action="ProcesarC.jsp" method="POST" class="text-start">
                <div class="mb-3">
                    <label for="nombre" class="form-label">Ingrese su nombre:</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre">
                </div>
                <div class="mb-3">
                    <label for="apellido1" class="form-label">Ingrese su primer apellido:</label>
                    <input type="text" class="form-control" id="apellido1" name="apellido1" placeholder="Primer apellido">
                </div>
                <div class="mb-3">
                    <label for="apellido2" class="form-label">Ingrese su segundo apellido:</label>
                    <input type="text" class="form-control" id="apellido2" name="apellido2" placeholder="Segundo apellido">
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-principal">Enviar</button>
                    <a href="set1.jsp" class="btn btn-outline-secondary mt-2">Ver uso de set en JSTL</a>
                </div>
            </form>
        </div>
    </main>

    <footer class="pie">Julian Lache</footer>

</body>
</html>