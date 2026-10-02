package dao;

import java.util.List;
import modelo.Usuario;

public interface UsuarioDAO {

    void insertar(Usuario usuario);

    List<Usuario> consultar();

    Usuario buscar(int id);

    void actualizar(Usuario usuario);

    void eliminar(int id);
}