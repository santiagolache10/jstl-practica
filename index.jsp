<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/estilo.css">
    <title>JSTL Lab</title>
</head>
<body>

    <nav class="barra py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <a href="index.jsp" class="marca">JSTL<span>
        </div>
    </nav>

    <main class="container my-5">
        <div class="hero mb-5">
            <h1 class="fw-bold">Ejercicios JSTL</h1>
            <p>Práctica de la librería de etiquetas estándar de JSP</p>
        </div>

        <div class="row g-4">
            <div class="col-md-6 col-lg-4">
                <a href="ejercicios/ejercicio1/index.jsp" class="tarjeta">
                    <span class="numero">01</span>
                    <h5 class="fw-bold">Impresión de datos</h5>
                    <p class="text-muted">Mostrar información en la página.</p>
                    <span class="etiqueta">c:out</span>
                </a>
            </div>

            <div class="col-md-6 col-lg-4">
                <a href="ejercicios/ejercicio2/index.jsp" class="tarjeta">
                    <span class="numero">02</span>
                    <h5 class="fw-bold">Guardar datos</h5>
                    <p class="text-muted">Guardar e imprimir datos de un formulario.</p>
                    <span class="etiqueta">c:set</span>
                </a>
            </div>

            <div class="col-md-6 col-lg-4">
                <a href="ejercicios/ejercicio3/index.jsp" class="tarjeta">
                    <span class="numero">03</span>
                    <h5 class="fw-bold">Condicional</h5>
                    <p class="text-muted">Validar datos antes de imprimirlos.</p>
                    <span class="etiqueta">c:if</span>
                </a>
            </div>

            <div class="col-md-6 col-lg-4">
                <a href="ejercicios/ejercicio4/index.jsp" class="tarjeta">
                    <span class="numero">04</span>
                    <h5 class="fw-bold">Condiciones múltiples</h5>
                    <p class="text-muted">Un mensaje distinto según la opción elegida.</p>
                    <span class="etiqueta">c:choose</span>
                </a>
            </div>

            <div class="col-md-6 col-lg-4">
                <a href="ejercicios/ejercicio5/index.jsp" class="tarjeta">
                    <span class="numero">05</span>
                    <h5 class="fw-bold">Capturar errores</h5>
                    <p class="text-muted">Atrapar una excepción sin que la página se caiga.</p>
                    <span class="etiqueta">c:catch</span>
                </a>
            </div>

            <div class="col-md-6 col-lg-4">
                <a href="ejercicios/ejercicio6/index.jsp" class="tarjeta">
                    <span class="numero">06</span>
                    <h5 class="fw-bold">Ciclo repetitivo</h5>
                    <p class="text-muted">Repetir un bloque contando de 2 en 2.</p>
                    <span class="etiqueta">c:forEach</span>
                </a>
            </div>

            <div class="col-md-6 col-lg-4">
                <a href="ejercicios/ejercicio7/index.jsp" class="tarjeta">
                    <span class="numero">07</span>
                    <h5 class="fw-bold">Separar un texto</h5>
                    <p class="text-muted">Dividir un texto usando un delimitador.</p>
                    <span class="etiqueta">c:forTokens</span>
                </a>
            </div>

            <div class="col-md-6 col-lg-4">
                <a href="ejercicios/ejercicio8/index.jsp" class="tarjeta">
                    <span class="numero">08</span>
                    <h5 class="fw-bold">Base de datos</h5>
                    <p class="text-muted">Guardar y consultar datos en MySQL.</p>
                    <span class="etiqueta">sql:update / sql:query</span>
                </a>
            </div>
        </div>
    </main>

    <footer class="pie">Julian Lache</footer>

</body>
</html>