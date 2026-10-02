<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>

<%
    EntityManager em = Persistence
            .createEntityManagerFactory("neyPU")
            .createEntityManager();

    List<String> nombres = em
            .createQuery("SELECT u.nombre FROM Usuario u", String.class)
            .getResultList();

    em.close();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SELECT de Nombres</title>
</head>
<body>

    <h1>Nombres de los Usuarios</h1>

    <table border="1">
        <tr>
            <th>Nombre</th>
        </tr>

        <% for (String nombre : nombres) { %>
        <tr>
            <td><%= nombre %></td>
        </tr>
        <% } %>

    </table>

    <br>

    <a href="index.jsp">Regresar al menú principal</a>

</body>
</html>