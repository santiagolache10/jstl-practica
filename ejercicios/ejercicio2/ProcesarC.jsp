<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<fmt:requestEncoding value="UTF-8"/>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <title>Ejercicio 2 - Resultado</title>
</head>
<body>

    <nav class="barra py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <a href="../../index.jsp" class="marca">JSTL<span>.lab</span></a>
            <a href="index.jsp" class="volver">&larr; Atrás</a>
        </div>
    </nav>

    <main class="container my-5">
        <div class="hero mb-5">
            <h1 class="fw-bold">Ejercicio 2</h1>
            <p>Imprimiendo parámetros con <strong>c:out</strong></p>
        </div>

        <div class="resultado">
            <h3>Imprimiendo parámetros con JSTL</h3>
            <p>Nombre: <strong><c:out value="${param.nombre}"/></strong></p>
            <p>Primer apellido: <strong><c:out value="${param.apellido1}"/></strong></p>
            <p>Segundo apellido: <strong><c:out value="${param.apellido2}"/></strong></p>
            <a href="index.jsp" class="btn btn-principal">Volver</a>
        </div>
    </main>

    <footer class="pie">Julian Lache</footer>

</body>
</html>