package tn.ipsas.gestconv.servlet.auth;

import tn.ipsas.gestconv.bean.User;
import tn.ipsas.gestconv.dao.UserDAO;
import tn.ipsas.gestconv.utils.AuthUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LogoutServlet", value = "/logout")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if(AuthUtils.isAuthenticated(request)){
            request.getSession(true).removeAttribute("user");
        }
        request.getServletContext().setAttribute("message","Déconection avec success. Vous devez entrez vos information pour continuer.");
        response.sendRedirect("login");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
