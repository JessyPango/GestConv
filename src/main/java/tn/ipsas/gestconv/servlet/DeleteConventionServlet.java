package tn.ipsas.gestconv.servlet;

import tn.ipsas.gestconv.dao.ConventionDAO;
import tn.ipsas.gestconv.utils.AuthUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "delconv", value = "/admin/convention/del")
public class DeleteConventionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(AuthUtils.deniedAccessIfNotAdmin(request, response, "index")){
            return;
        };
        response.sendRedirect("index");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(AuthUtils.deniedAccessIfNotAdmin(request, response, "index")){
            return;
        };
        int idconv = Integer.parseInt(request.getParameter("idconv"));
        ConventionDAO.deleteConvention(idconv);
        request.getServletContext().setAttribute("errMsg", "Convention id=" + idconv + " suprimer");
        response.sendRedirect("index");
    }
}
