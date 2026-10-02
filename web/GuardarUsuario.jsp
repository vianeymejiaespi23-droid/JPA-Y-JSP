<%@page import="dao.UsuarioDAOImpl"%>
<%@page import="modelo.Usuario"%>

<%
    String nombre = request.getParameter("nombre");
    String cp = request.getParameter("cp");
    String telefono = request.getParameter("telefono");
    int edad = Integer.parseInt(request.getParameter("edad"));

    Usuario usuario = new Usuario();

    usuario.setNombre(nombre);
    usuario.setCp(cp);
    usuario.setTelefono(telefono);
    usuario.setEdad(edad);

    UsuarioDAOImpl dao = new UsuarioDAOImpl();
    dao.insertar(usuario);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Usuario Guardado</title>
</head>
<body>

    <h1>Usuario insertado correctamente</h1>

    <a href="index.jsp">Regresar al menú principal</a>
    <br><br>

    <a href="INSERTAR.jsp">Insertar otro usuario</a>
    <br><br>

    <a href="LISTA.jsp">Ver lista de usuarios</a>

</body>
</html>