package tn.ipsas.gestconv.servlet.auth;

import tn.ipsas.gestconv.bean.User;
import tn.ipsas.gestconv.dao.UserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "registerServlet", value = "/register")
public class registerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.sendRedirect("auth/register.jsp");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String errMsg="";
        String login = request.getParameter("login");
        String motsDePasse = request.getParameter("motsDePasse");
        User user = new User();
        user.setLogin(login);
        user.setMotsDePasse(motsDePasse);

        if (!user.isValidUser()){
            errMsg = "Paramettre d'enregistrement invalige";
        } else {
            try {
                UserDAO.saveUser(user);
                request.setAttribute("message", "Votre compte a été créer avec succes!" +
                        "<br> Entrez vos identifiant pour continuer.");
                request.getServletContext()
                        .getRequestDispatcher("login")
                        .forward(request, response);
                response.sendRedirect("auth/login.jsp");
            } catch (Exception e) {
                errMsg = e.getMessage();
                request.getServletContext().setAttribute("errMsg", errMsg);
                doPost(request, response);
            }
        }
    }
}
