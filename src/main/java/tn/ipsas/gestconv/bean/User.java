package tn.ipsas.gestconv.bean;

import tn.ipsas.gestconv.dao.UserDAO;

import javax.persistence.*;
import java.sql.SQLException;
import java.util.List;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_user", nullable = false)
    private Integer id;

    @Column(name = "login", nullable = false, unique = true, length = 45)
    private String login;

    @Column(name = "mots_de_passe", nullable = false, length = 45)
    private String motsDePasse;

    public String getMotsDePasse() {
        return motsDePasse;
    }

    public void setMotsDePasse(String motsDePasse) {
        this.motsDePasse = motsDePasse;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    /*
    TODO: REtirer le reste
     */
    public Boolean isValidUser(){
        System.out.println(login != null && motsDePasse != null);
        return login != null && motsDePasse != null;
    }

    public void saveUser(User user) {
        UserDAO.saveUser(user);
    }
    public void updateUser(User user) {
        UserDAO.updateUser(user);
    }
    public void deleteUser(int id) {
        UserDAO.deleteUser(id);
    }
    public User getUser(int id){
        return UserDAO.getUser(id);
    }
    public List<User> getAllUser() {
        return UserDAO.getAllUser();
    }
}