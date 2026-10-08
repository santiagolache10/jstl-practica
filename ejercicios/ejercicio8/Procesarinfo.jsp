<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<fmt:requestEncoding value="UTF-8"/>
<%@ include file="/WEB-INF/jspf/conexion.jspf" %>

<%-- INSERTAR: solo si llegan datos del formulario --%>
<c:if test="${not empty param.nombres}">
    <c:catch var="errorSql">
        <sql:update var="insertar" dataSource="${empleados}">
            INSERT INTO empleados (nombres, apellido1, apellido2, edad)
            VALUES (?, ?, ?, ?)
            <sql:param value="${param.nombres}"/>
            <sql:param value="${param.apellido1}"/>
            <sql:param value="${param.apellido2}"/>
            <sql:param value="${param.edad}"/>
        </sql:update>
    </c:catch>
</c:if>

<%-- CONSULTAR: trae todos los empleados --%>
<sql:query var="resultado" dataSource="${empleados}">
    SELECT * FROM empleados ORDER BY id
</sql:query>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <title>Ejercicio 8 - Resultado</title>
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
            <h1 class="fw-bold">Ejercicio 8</h1>
            <p>Empleados guardados en la base de datos</p>
        </div>

        <div class="resultado ancho">
            <h3>Empleados</h3>

            <c:if test="${insertar == 1 and empty errorSql}">
                <div class="alert alert-success">Empleado guardado correctamente.</div>
            </c:if>
            <c:if test="${not empty errorSql}">
                <div class="alert alert-danger">
                    <strong>No se pudo guardar:</strong> <c:out value="${errorSql}"/>
                </div>
            </c:if>

            <table class="table table-striped text-start">
                <thead class="table-dark">
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Edad</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- FOR EACH: una fila por cada empleado --%>
                    <c:forEach var="fila" items="${resultado.rows}">
                        <tr>
                            <td><c:out value="${fila.id}"/></td>
                            <td><c:out value="${fila.nombres}"/></td>
                            <td><c:out value="${fila.apellido1} ${fila.apellido2}"/></td>
                            <td><c:out value="${fila.edad}"/></td>
                        </tr>
                    </c:forEach>
                    <c:if test="${resultado.rowCount == 0}">
                        <tr><td colspan="4" class="text-center text-muted">Todavía no hay empleados.</td></tr>
                    </c:if>
                </tbody>
            </table>

            <a href="index.jsp" class="btn btn-principal">Volver</a>
        </div>
    </main>

    <footer class="pie">Julian Lache</footer>

</body>
</html>