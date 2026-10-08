<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <title>Ejercicio 4 - JSTL Lab</title>
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
            <h1 class="fw-bold">Ejercicio 4</h1>
            <p>Condiciones múltiples con <strong>c:choose</strong>, <strong>c:when</strong> y <strong>c:otherwise</strong></p>
        </div>

        <div class="resultado">
            <h3>Prueba de choose, when y otherwise</h3>
            <form action="ProcesarC2.jsp" method="POST" class="text-start">
                <div class="mb-3">
                    <label for="lenguaje" class="form-label">¿Cuál es tu lenguaje de programación favorito?</label>
                    <select name="lenguaje" id="lenguaje" class="form-select">
                        <option value="">-- Seleccionar un lenguaje --</option>
                        <option value="Java">Java</option>
                        <option value="C++">C++</option>
                        <option value="Perl">Perl</option>
                    </select>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-principal">Enviar</button>
                </div>
            </form>
        </div>
    </main>

    <footer class="pie">Julian Lache</footer>

</body>
</html>