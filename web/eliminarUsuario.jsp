<%@page import="dao.UsuarioDAOImpl"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    UsuarioDAOImpl dao = new UsuarioDAOImpl();
    dao.eliminar(id);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Usuario Eliminado</title>
</head>
<body>

    <h1>Usuario eliminado correctamente</h1>

    <a href="index.jsp">Regresar al menú principal</a>
    <br><br>

    <a href="eliminar.jsp">Eliminar otro usuario</a>
    <br><br>

    <a href="LISTA.jsp">Ver lista de usuarios</a>

</body>
</html>