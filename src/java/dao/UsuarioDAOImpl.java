package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;
import modelo.Usuario;

public class UsuarioDAOImpl implements UsuarioDAO {

    private EntityManagerFactory emf;

    public UsuarioDAOImpl() {
        emf = Persistence.createEntityManagerFactory("neyPU");
    }

    private EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    @Override
    public void insertar(Usuario usuario) {
        EntityManager em = getEntityManager();

        try {
            em.getTransaction().begin();
            em.persist(usuario);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    @Override
    public List<Usuario> consultar() {
        EntityManager em = getEntityManager();

        try {
            return em.createNamedQuery("Usuario.findAll", Usuario.class)
                     .getResultList();
        } finally {
            em.close();
        }
    }

    @Override
    public Usuario buscar(int id) {
        EntityManager em = getEntityManager();

        try {
            return em.find(Usuario.class, id);
        } finally {
            em.close();
        }
    }

    @Override
    public void actualizar(Usuario usuario) {
        EntityManager em = getEntityManager();

        try {
            em.getTransaction().begin();
            em.merge(usuario);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    @Override
    public void eliminar(int id) {
        EntityManager em = getEntityManager();

        try {
            em.getTransaction().begin();

            Usuario usuario = em.find(Usuario.class, id);

            if (usuario != null) {
                em.remove(usuario);
            }

            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }
}