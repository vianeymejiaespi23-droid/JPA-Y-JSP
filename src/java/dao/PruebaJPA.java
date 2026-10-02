package dao;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import java.util.List;
import modelo.Usuario;

public class PruebaJPA {

    public static void main(String[] args) {

        EntityManager em = Persistence
                .createEntityManagerFactory("neyPU")
                .createEntityManager();

        try {
            List<Usuario> usuarios = em
                    .createNamedQuery("Usuario.findAll", Usuario.class)
                    .getResultList();

            System.out.println("CONEXIÓN JPA EXITOSA");
            System.out.println("Usuarios encontrados: " + usuarios.size());

            for (Usuario usuario : usuarios) {
                System.out.println(
                    usuario.getId() + " - " +
                    usuario.getNombre() + " - " +
                    usuario.getCp() + " - " +
                    usuario.getTelefono() + " - " +
                    usuario.getEdad()
                );
            }

        } catch (Exception e) {
            System.out.println("ERROR EN JPA:");
            e.printStackTrace();

        } finally {
            em.close();
        }
    }
}