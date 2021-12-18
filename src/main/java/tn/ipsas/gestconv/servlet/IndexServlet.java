package tn.ipsas.gestconv.servlet;

import tn.ipsas.gestconv.dao.ConventionDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "index", urlPatterns ={"/", "/index"})
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("conventions", ConventionDAO.getAllConvention());
        request.getServletContext()
                        .getRequestDispatcher("/templates/index.jsp")
                                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
