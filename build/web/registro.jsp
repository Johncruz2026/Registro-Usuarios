<h2>Registro de Usuario</h2>

<form action="UsuarioServlet" method="post">
    
    <label>Nombre:</label><br>
    <input type="text" name="nombre" required><br><br>

    <label>Apellido:</label><br>
    <input type="text" name="apellido" required><br><br>

    <label>Tipo de Documento:</label><br>
    <select name="tipoDocumento" required>
        <option value="">Seleccione</option>
        <option value="CC">Cédula de Ciudadanía</option>
        <option value="CE">Cédula de Extranjería</option>
        <option value="TI">Tarjeta de Identidad</option>
        <option value="PP">Pasaporte</option>
    </select><br><br>

    <label>Número de Documento:</label><br>
    <input type="text" name="numeroDocumento" required><br><br>

    <label>Correo:</label><br>
    <input type="email" name="correo" required><br><br>

    <label>Contraseña:</label><br>
    <input type="password" name="password" required><br><br>

    <label>Confirmar Contraseña:</label><br>
    <input type="password" name="confirmarPassword" required><br><br>

    <input type="submit" value="Registrar">

</form>
</form>
    
