package tn.ipsas.gestconv.servlet;

import tn.ipsas.gestconv.bean.Convention;
import tn.ipsas.gestconv.dao.ConventionDAO;
import tn.ipsas.gestconv.utils.AuthUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet(name = "editconv", value = "/admin/convention/edit")
public class EditConventionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(AuthUtils.deniedAccessIfNotAdmin(request, response, "index")){
            return;
        };
        int idconv = Integer.parseInt(request.getParameter("idconv"));

        Convention convention = ConventionDAO.getConvention(idconv);
        request.getServletContext().setAttribute("convention", convention);
        request.getServletContext()
                .getRequestDispatcher("/templates/convention/update.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(AuthUtils.deniedAccessIfNotAdmin(request, response, "index")){
            return;
        };
        int idconv = Integer.parseInt(request.getParameter("idconv"));

        Convention convention = ConventionDAO.getConvention(idconv);

        String objetConvention = request.getParameter("objet_convention");
        String titreConvention = request.getParameter("titre_convention");
        LocalDate dateEntreeVigueur = LocalDate.parse(request.getParameter("date_entree_vigueur"));
        LocalDate dateExpiration = LocalDate.parse(request.getParameter("date_expiration"));
        String typeConvention = request.getParameter("type_convention");

        convention.setObjetConvention(objetConvention);
        convention.setTitreConvention(titreConvention);
        convention.setTypeConvention(typeConvention.toLowerCase());
        convention.setDateEntreeVigueur(dateEntreeVigueur);
        convention.setDateExpiration(dateExpiration);
        ConventionDAO.updateConvention(convention);
        request.getServletContext().setAttribute("convention", convention);
        request.getServletContext().setAttribute("errMsg", "Convention id="+idconv+" modifié");
        response.sendRedirect("index");
    }
}
