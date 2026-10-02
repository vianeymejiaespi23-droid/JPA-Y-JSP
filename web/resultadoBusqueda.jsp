<%@page import="dao.UsuarioDAOImpl"%>
<%@page import="modelo.Usuario"%>

<%
    String idTexto = request.getParameter("id");
    Usuario usuario = null;

    if (idTexto != null && !idTexto.isEmpty()) {
        int id = Integer.parseInt(idTexto);

        UsuarioDAOImpl dao = new UsuarioDAOImpl();
        usuario = dao.buscar(id);
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Buscar Usuario</title>
</head>
<body>

    <h1>Buscar Usuario</h1>

    <form action="resultadoBusqueda.jsp" method="get">

        <label>ID del usuario:</label>
        <input type="number" name="id" required>

        <input type="submit" value="Buscar">

    </form>

    <br>

    <% if (usuario != null) { %>

        <h2>Usuario encontrado</h2>

        <p><strong>ID:</strong> <%= usuario.getId() %></p>
        <p><strong>Nombre:</strong> <%= usuario.getNombre() %></p>
        <p><strong>CP:</strong> <%= usuario.getCp() %></p>
        <p><strong>Teléfono:</strong> <%= usuario.getTelefono() %></p>
        <p><strong>Edad:</strong> <%= usuario.getEdad() %></p>

    <% } else if (idTexto != null) { %>

        <p>Usuario no encontrado.</p>

    <% } %>

    <br>

    <a href="index.jsp">Regresar al menú principal</a>
    <br><br>

    <a href="LISTA.jsp">Ver lista de usuarios</a>

</body>
</html>