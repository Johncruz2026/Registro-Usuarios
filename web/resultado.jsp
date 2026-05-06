<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado</title>
</head>
<body>

<h1>Resultado del Registro</h1>

<p>${mensaje}</p>

<%-- ? SOLO mostrar datos si NO hay error --%>
<%
    String mensaje = (String) request.getAttribute("mensaje");
    if (mensaje != null && !mensaje.equals("Las contraseñas no coinciden")) {
%>

<p>Nombre: ${nombre}</p>
<p>Apellido: ${apellido}</p>
<p>Tipo Documento: ${tipoDocumento}</p>
<p>Número Documento: ${numeroDocumento}</p>
<p>Correo: ${correo}</p>

<%
    }
%>

<a href="registro.jsp">Volver</a>

</body>
</html>