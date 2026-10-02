<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAOImpl"%>

<%
    UsuarioDAOImpl dao = new UsuarioDAOImpl();
    List<Usuario> usuarios = dao.consultar();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Usuarios</title>
</head>
<body>

    <h1>Lista de Usuarios</h1>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>CP</th>
            <th>Teléfono</th>
            <th>Edad</th>
        </tr>

        <% for (Usuario usuario : usuarios) { %>
        <tr>
            <td><%= usuario.getId() %></td>
            <td><%= usuario.getNombre() %></td>
            <td><%= usuario.getCp() %></td>
            <td><%= usuario.getTelefono() %></td>
            <td><%= usuario.getEdad() %></td>
        </tr>
        <% } %>

    </table>

    <br><br>

    <a href="index.jsp">Regresar al menú principal</a>

</body>
</html>