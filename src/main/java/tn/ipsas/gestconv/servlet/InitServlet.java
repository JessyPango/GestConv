package tn.ipsas.gestconv.servlet;

import org.hibernate.Session;
import tn.ipsas.gestconv.bean.Convention;
import tn.ipsas.gestconv.utils.HibernateUtil;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(value = "/initServlet", name = "init", loadOnStartup = 1)
public class InitServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public InitServlet() {
        super();
    }

    @Override
    public void init() throws ServletException {
        // Indexage initiale par hibernate search

    }
}