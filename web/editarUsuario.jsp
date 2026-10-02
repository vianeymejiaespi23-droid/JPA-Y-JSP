<%@page import="dao.UsuarioDAOImpl"%>
<%@page import="modelo.Usuario"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    UsuarioDAOImpl dao = new UsuarioDAOImpl();
    Usuario usuario = dao.buscar(id);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Usuario</title>
</head>
<body>

    <h1>Editar Usuario</h1>

    <% if (usuario != null) { %>

        <form action="guardarCambios.jsp" method="post">

            <input type="hidden" name="id" value="<%= usuario.getId() %>">

            <label>Nombre:</label>
            <input type="text" name="nombre"
                   value="<%= usuario.getNombre() %>" required>
            <br><br>

            <label>CP:</label>
            <input type="text" name="cp"
                   value="<%= usuario.getCp() %>" required>
            <br><br>

            <label>Teléfono:</label>
            <input type="text" name="telefono"
                   value="<%= usuario.getTelefono() %>" required>
            <br><br>

            <label>Edad:</label>
            <input type="number" name="edad"
                   value="<%= usuario.getEdad() %>" required>
            <br><br>

            <input type="submit" value="Guardar cambios">

        </form>

    <% } else { %>

        <p>Usuario no encontrado.</p>

    <% } %>

    <br>

    <a href="index.jsp">Regresar al menú principal</a>
    <br><br>

    <a href="ACTUALIZAR.jsp">Actualizar otro usuario</a>
    <br><br>

    <a href="LISTA.jsp">Ver lista de usuarios</a>

</body>
</html>