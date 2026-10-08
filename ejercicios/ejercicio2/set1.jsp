<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<%-- Guardar valores con c:set --%>
<c:set var="saludo" value="Hola desde JSTL"/>
<c:set var="a" value="10"/>
<c:set var="b" value="5"/>
<c:set var="suma" value="${a + b}"/>
<c:set var="mensaje" scope="session">Texto guardado en la sesión</c:set>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <title>Ejercicio 2 - Uso de c:set</title>
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
            <p>Uso de <strong>c:set</strong></p>
        </div>

        <div class="resultado">
            <h3>Variables guardadas con c:set</h3>
            <p>saludo (page): <strong><c:out value="${saludo}"/></strong></p>
            <p>a: <strong><c:out value="${a}"/></strong> | b: <strong><c:out value="${b}"/></strong></p>
            <p>suma (a + b): <strong><c:out value="${suma}"/></strong></p>
            <p>mensaje (session): <strong><c:out value="${mensaje}"/></strong></p>
            <a href="index.jsp" class="btn btn-principal">Volver</a>
        </div>
    </main>

    <footer class="pie">Julian Lache</footer>

</body>
</html>