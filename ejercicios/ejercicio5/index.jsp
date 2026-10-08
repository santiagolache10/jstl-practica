<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <title>Ejercicio 5 - JSTL Lab</title>
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
            <h1 class="fw-bold">Ejercicio 5</h1>
            <p>Captura de excepciones con <strong>c:catch</strong></p>
        </div>

        <div class="resultado">
            <h3>Convertir un parámetro en número</h3>

            <%-- Solo se intenta la conversión cuando se pulsa un botón --%>
            <c:if test="${not empty param.probar}">

                <%-- c:catch atrapa el error y lo guarda en la variable error01 --%>
                <c:catch var="error01">
                    <%
                        int valor = Integer.parseInt(request.getParameter("parametro"));
                        request.setAttribute("valor", valor);
                    %>
                </c:catch>

                <%-- Si error01 tiene algo, hubo excepción; si no, se muestra el valor --%>
                <c:choose>
                    <c:when test="${not empty error01}">
                        <div class="alert alert-danger">
                            <strong>Se produjo un error:</strong> <c:out value="${error01}"/>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="alert alert-info">
                            <strong>Valor recibido: <c:out value="${valor}"/></strong>
                        </div>
                    </c:otherwise>
                </c:choose>
            </c:if>

            <%-- Tres botones: valor no numérico, valor numérico y sin parámetro --%>
            <div class="d-flex flex-wrap justify-content-center gap-2 mt-3">
                <form method="GET">
                    <input type="hidden" name="probar" value="1">
                    <input type="hidden" name="parametro" value="prueba">
                    <button type="submit" class="btn btn-outline-dark">Enviar 'prueba'</button>
                </form>
                <form method="GET">
                    <input type="hidden" name="probar" value="1">
                    <input type="hidden" name="parametro" value="1234">
                    <button type="submit" class="btn btn-outline-success">Enviar '1234'</button>
                </form>
                <form method="GET">
                    <input type="hidden" name="probar" value="1">
                    <button type="submit" class="btn btn-outline-danger">No enviar el parámetro</button>
                </form>
            </div>
        </div>
    </main>

    <footer class="pie">Julian Lache</footer>

</body>
</html>