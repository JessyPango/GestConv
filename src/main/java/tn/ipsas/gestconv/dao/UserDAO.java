package tn.ipsas.gestconv.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import tn.ipsas.gestconv.bean.User;
import tn.ipsas.gestconv.utils.HibernateUtil;

import java.util.List;

public class UserDAO {

    /**
     * @param user Save User
     */
    public static void saveUser(User user) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the user object
            session.save(user);

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
     * @param user Update User
     */
    public static void updateUser(User user) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the user object
            session.update(user);
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
     * @param id Delete User
     */
    public static void deleteUser(int id) {

        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();

            // Delete a user object
            User user = session.get(User.class, id);
            if (user != null) {
                session.delete(user);
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
     * Get User By ID
     */
    public static User getUser(int id) {

        Transaction transaction = null;
        User user = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            user = session.get(User.class, id);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return user;
    }

    /**
     * Get all Users
     */
    @SuppressWarnings("unchecked")
    public static List<User> getAllUser() {
        Transaction transaction = null;
        List<User> listOfUser = null;
        try {

            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object

            listOfUser = session.createQuery("from User").getResultList();

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfUser;
    }
//    public static void addUser (User user) throws SQLException {
//        //get connection from connection pool
//
//        Transaction transaction = null;
//        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
//            // start a transaction
//            transaction = session.beginTransaction();
//            // save the user object
//            /*
//             * TODO: Vérifier la pertinence du login et du mots de passe avant d'exécuter le statement
//             */
//            session.save(user);
//
//            // commit transaction
//            transaction.commit();
//        } catch (Exception e) {
//            if (transaction != null) {
//                transaction.rollback();
//            }
//            e.printStackTrace();
//        }
//
//        Connection con = DatabaseConnectionFactory.getConnectionFactory().getConnection();
//        try {
//            final String sql = "insert into gestconv.User (login, mots_de_passe) values (?,?)";
//            //create prepared statement with option to get auto generated keys
//            PreparedStatement stmt = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
//            //set parameters
//            /*
//             * TODO: Vérifier la pertinence du login et du mots de passe avant d'exécuter le statement
//             */
//            stmt.setString(1, user.getLogin());
//            stmt.setString(2, user.getMotsDePasse());
//
//            stmt.execute();
//
//            //Get auto generated keys
//            ResultSet rs = stmt.getGeneratedKeys();
//
//            if (rs.next())
//                user.setId(rs.getInt(1));
//
//            rs.close();
//            stmt.close();
//        } finally {
//            con.close();
//        }
//    }

//    public static List<User> getUsers () throws SQLException {
//        //get connection from connection pool
//        final Connection con = DatabaseConnectionFactory.getConnectionFactory().getConnection();
//
//        List<User> users = new ArrayList<User>();
//        Statement stmt = null;
//        ResultSet rs = null;
//        try {
//            stmt = con.createStatement();
//
//            String sql = "SELECT * FROM gestconv.User;";
//
//            rs = stmt.executeQuery(sql);
//
//            while (rs.next()) {
//                User user = new User();
//                user.setId(rs.getInt("id_user"));
//                user.setLogin(rs.getString("login"));
//                user.setMotsDePasse(rs.getString("mots_de_passe"));
//                users.add(user);
//            }
//
//            return users;
//        } finally {
//            try {if (rs != null) rs.close();} catch (SQLException e) {}
//            try {if (stmt != null) stmt.close();} catch (SQLException e) {}
//            try {con.close();} catch (SQLException e) {}
//        }
//    }
}
