<%@page import="dao.UsuarioDAOImpl"%>
<%@page import="modelo.Usuario"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    String nombre = request.getParameter("nombre");
    String cp = request.getParameter("cp");
    String telefono = request.getParameter("telefono");
    int edad = Integer.parseInt(request.getParameter("edad"));

    Usuario usuario = new Usuario();

    usuario.setId(id);
    usuario.setNombre(nombre);
    usuario.setCp(cp);
    usuario.setTelefono(telefono);
    usuario.setEdad(edad);

    UsuarioDAOImpl dao = new UsuarioDAOImpl();
    dao.actualizar(usuario);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Usuario Actualizado</title>
</head>
<body>

    <h1>Usuario actualizado correctamente</h1>

    <a href="index.jsp">Regresar al menú principal</a>
    <br><br>

    <a href="ACTUALIZAR.jsp">Actualizar otro usuario</a>
    <br><br>

    <a href="LISTA.jsp">Ver lista de usuarios</a>

</body>
</html>