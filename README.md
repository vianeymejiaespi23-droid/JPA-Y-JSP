## Sistema de gestión de usuarios

Este sistema está desarrollado en Java (usando Servlets/JSP y JPA para la base de datos) 
y funciona como un sistema **CRUD** (Crear, Leer, Actualizar y Eliminar).

### Opciones del Menú (`index.jsp`)

* **Insertar usuario** (`INSERTAR.jsp`): Para registrar un usuario nuevo.
* **Consultar usuarios** (`LISTA.jsp`): Para ver la lista completa de todos los usuarios registrados.
* **Buscar usuario** (`BUSCAR.jsp`): Para encontrar a un usuario en específico.
* **Actualizar usuario** (`ACTUALIZAR.jsp`): Para modificar los datos de un usuario existente.
* **Eliminar usuario** (`eliminar.jsp`): Para borrar un registro de usuario.
* **Salir** (`index.jsp`): Recarga la misma página principal.

### Estructura del Proyecto

* **`index.jsp`** (La Vista / Menú): Interfaz web que muestra las opciones principales mediante enlaces.
* **`usuario.java`** (El Modelo): Clase mapeada con JPA (`@Entity`)
  que representa la tabla `usuario` en la base de datos (con sus atributos, constructores, Getters/Setters y consultas predefinidas).
