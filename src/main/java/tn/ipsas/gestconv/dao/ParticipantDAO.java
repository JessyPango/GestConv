package tn.ipsas.gestconv.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import tn.ipsas.gestconv.bean.Convention;
import tn.ipsas.gestconv.bean.Participant;
import tn.ipsas.gestconv.bean.ParticipantConvention;
import tn.ipsas.gestconv.bean.ParticipantConventionId;
import tn.ipsas.gestconv.utils.HibernateUtil;

import java.time.LocalDate;
import java.util.List;

public class ParticipantDAO {

    /**
     * @param participant Save Participant
     */
    public static void saveParticipant(Participant participant) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the participant object
            session.save(participant);

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
     * @param participant Update Participant
     */
    public static void updateParticipant(Participant participant) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the participant object
            session.update(participant);
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
     * @param id Delete Participant
     */
    public static void deleteParticipant(int id) {

        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();

            // Delete a participant object
            Participant participant = session.get(Participant.class, id);
            if (participant != null) {
                session.delete(participant);
                System.out.println("Participant is deleted");
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
     * Get Participant By ID
     */
    public static Participant getParticipant(int id) {

        Transaction transaction = null;
        Participant participant = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an participant object
            participant = session.get(Participant.class, id);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return participant;
    }

    /**
     * @params Get all Participants
     */
    @SuppressWarnings("unchecked")
    public static List<Participant> getAllParticipant() {
        Transaction transaction = null;
        List<Participant> listOfParticipant = null;
        try {

            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            // start a transaction
            transaction = session.beginTransaction();
            // get an participant object

            listOfParticipant = session.createQuery("from Participant").getResultList();

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfParticipant;
    }

    /**
     * @param idParticipant id of participant
     * @param idConvention  id of convention
     */
    public static void joinConvention(int idParticipant, int idConvention) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();

            // get convention from session
            Convention convention = session.get(Convention.class, idConvention);
            if (convention != null) {

                // create an record of table ParticipantConvention
                ParticipantConvention participantConvention = new
                        ParticipantConvention();
                // 1---> Create ParticipantConventionId
                ParticipantConventionId participantConventionId = new
                        ParticipantConventionId();
                participantConventionId.setIdParticipant(idParticipant);
                participantConventionId.setIdConvention(idConvention);

                participantConvention.setId(participantConventionId);
                // 2 ---> Create dateSignature
                participantConvention.setDateSignature(LocalDate.now());
//                System.out.println("Participant is deleted");

                session.save(participantConvention);
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

}

