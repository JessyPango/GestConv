package tn.ipsas.gestconv.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import tn.ipsas.gestconv.bean.Convention;
import tn.ipsas.gestconv.utils.HibernateUtil;

import java.util.List;

public class ConventionDAO {

    /**
     * @param convention Save Convention
     */
    public static void saveConvention(Convention convention) {
        Transaction transaction = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            // start a transaction
            transaction = session.beginTransaction();
            // save the convention object
            session.save(convention);

            // commit transaction
            transaction.commit();
            System.out.println("Pause");
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    /**
     * @param convention Update Convention
     */
    public static void updateConvention(Convention convention) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the convention object
            session.update(convention);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    /**
     * @param id Delete Convention
     */
    public static void deleteConvention(int id) {

        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();

            // Delete a convention object
            Convention convention = session.get(Convention.class, id);
            if (convention != null) {
                session.delete(convention);
                System.out.println("Convention is deleted");
            }

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    /*
     * Get Convention By ID
     */
    public static Convention getConvention(int id) {

        Transaction transaction = null;
        Convention convention = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an convention object
            convention = session.get(Convention.class, id);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return convention;
    }

    /**
     * Get all Conventions
     */
    @SuppressWarnings("unchecked")
    public static List<Convention> getAllConvention() {
        Transaction transaction = null;
        List<Convention> listOfConvention = null;
        try {

            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            // start a transaction
            transaction = session.beginTransaction();
            // get an convention object

            listOfConvention = session.createQuery("from Convention").getResultList();

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfConvention;
    }
}

