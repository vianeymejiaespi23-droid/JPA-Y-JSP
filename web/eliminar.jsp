<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Eliminar Usuario</title>
</head>
<body>

    <h1>Eliminar Usuario</h1>

    <form action="eliminarUsuario.jsp" method="post">

        <label>ID del usuario:</label>
        <input type="number" name="id" required>

        <input type="submit" value="Eliminar Usuario">

    </form>

    <br>

    <a href="index.jsp">Regresar al menú principal</a>
    <br><br>

    <a href="LISTA.jsp">Ver lista de usuarios</a>

</body>
</html>