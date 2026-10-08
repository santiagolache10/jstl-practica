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
    <title>Ejercicio 7 - Resultado</title>
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
            <h1 class="fw-bold">Ejercicio 7</h1>
            <p>Texto separado con <strong>c:forTokens</strong></p>
        </div>

        <div class="resultado">
            <h3>Your tokens</h3>
            <p class="text-muted">
                Texto: <strong><c:out value="${param.delimText}"/></strong><br>
                Delimitador: <strong><c:out value="${param.delim}"/></strong>
            </p>

            <%-- FOR de tokens: recorre el texto separándolo por el delimitador --%>
            <c:forTokens items="${param.delimText}" delims="${param.delim}" var="myToken" varStatus="status">
                <p>
                    <span class="etiqueta"><c:out value="${status.count}"/></span>
                    <strong><c:out value="${myToken}"/></strong>
                </p>
            </c:forTokens>

            <a href="index.jsp" class="btn btn-principal">Volver</a>
        </div>
    </main>

    <footer class="pie">Julian Lache</footer>

</body>
</html>