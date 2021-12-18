package tn.ipsas.gestconv.servlet.auth;

import tn.ipsas.gestconv.bean.User;
import tn.ipsas.gestconv.dao.UserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getServletContext()
                .getRequestDispatcher("/templates/auth/login.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("login");
        String motsDePasse = request.getParameter("motsDePasse");
        User user = new User();
        user.setLogin(login);
        user.setMotsDePasse(motsDePasse);
        user = UserDAO.getUser(2);
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        response.sendRedirect("index.jsp");
    }
}
