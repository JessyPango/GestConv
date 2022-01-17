package tn.ipsas.gestconv.servlet;

import org.hibernate.Session;
import tn.ipsas.gestconv.bean.Convention;
import tn.ipsas.gestconv.dao.ConventionDAO;
import tn.ipsas.gestconv.utils.HibernateUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "index", urlPatterns ={"/participant/index"})
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("next");
        List<Convention> conventions = null;
        if ( "search".equals(action) ) {
            String q = request.getParameter("q");
            conventions = ConventionDAO.search(q);
        } else if ("advanced_search".equals(action) ){
            String q = request.getParameter("q");
            String type = request.getParameter("type");
            conventions = ConventionDAO.advanced_search(q, type.toLowerCase());
        } else {
            conventions = ConventionDAO.getAllConvention();
        }
        request.setAttribute("conventions", conventions);
        request.getServletContext()
                .getRequestDispatcher("/templates/index.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
