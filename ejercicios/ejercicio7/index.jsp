<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <title>Ejercicio 7 - JSTL Lab</title>
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
            <h1 class="fw-bold">Ejercicio 7</h1>
            <p>Separar un texto con <strong>c:forTokens</strong></p>
        </div>

        <div class="resultado">
            <h3>c:forTokens Demo</h3>
            <form action="ResultTokens.jsp" method="POST" class="text-start">
                <div class="mb-3">
                    <label for="delimText" class="form-label">Introduzca un texto con delimitador:</label>
                    <input type="text" class="form-control" id="delimText" name="delimText" placeholder="Ejemplo: Java,C++,Perl">
                </div>
                <div class="mb-3">
                    <label for="delim" class="form-label">Introduzca el delimitador:</label>
                    <input type="text" class="form-control" id="delim" name="delim" placeholder="Ejemplo: ,">
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-principal">Tokenize</button>
                </div>
            </form>
        </div>
    </main>

    <footer class="pie">Julian Lache</footer>

</body>
</html>