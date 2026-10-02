<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insertar Usuario</title>
</head>
<body>

    <h1>Insertar Usuario</h1>

    <form action="GuardarUsuario.jsp" method="post">

        <label>Nombre:</label>
        <input type="text" name="nombre" required>
        <br><br>

        <label>CP:</label>
        <input type="text" name="cp" required>
        <br><br>

        <label>Teléfono:</label>
        <input type="text" name="telefono" required>
        <br><br>

        <label>Edad:</label>
        <input type="number" name="edad" required>
        <br><br>

        <input type="submit" value="Insertar Usuario">

    </form>

    <br>

    <a href="index.jsp">Regresar al menú principal</a>
    <br><br>

    <a href="LISTA.jsp">Ver lista de usuarios</a>

</body>
</html>