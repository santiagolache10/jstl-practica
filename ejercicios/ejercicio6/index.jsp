<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <title>Ejercicio 6 - JSTL Lab</title>
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
            <h1 class="fw-bold">Ejercicio 6</h1>
            <p>Ciclo repetitivo con <strong>c:forEach</strong></p>
        </div>

        <div class="resultado">
            <h3>Uso de c:forEach</h3>
            <p class="text-muted">Números del 1 al 24, de 2 en 2</p>

            <%-- FOR: cuenta de 1 a 24 saltando de 2 en 2 --%>
            <c:forEach begin="1" end="24" step="2" var="hour" varStatus="status">
                <p>
                    <c:out value="${hour}"/>

                    <%-- Solo en la primera vuelta --%>
                    <c:if test="${status.first}">
                        <span class="etiqueta">Estoy en uno</span>
                    </c:if>

                    <%-- Solo en la vuelta número 5 --%>
                    <c:if test="${status.count == 5}">
                        <span class="etiqueta">Estoy en la iteración número 5</span>
                    </c:if>
                </p>
            </c:forEach>

            <a href="../../index.jsp" class="btn btn-principal">Volver</a>
        </div>
    </main>

    <footer class="pie">Julian Lache</footer>

</body>
</html>