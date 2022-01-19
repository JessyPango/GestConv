package tn.ipsas.gestconv.servlet;

import tn.ipsas.gestconv.bean.Convention;
import tn.ipsas.gestconv.dao.ConventionDAO;
import tn.ipsas.gestconv.utils.AuthUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet(name = "addconv" , urlPatterns={"/admin/convention/add"})
public class AddConventionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(AuthUtils.deniedAccessIfNotAdmin(request, response, "index")){
            return;
        };
        request.getServletContext()
                .getRequestDispatcher("/templates/convention/add.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(AuthUtils.deniedAccessIfNotAdmin(request, response, "index")){
            return;
        };

        String errMsg="";
        String objetConvention = request.getParameter("objet_convention");
        String titreConvention = request.getParameter("titre_convention");
        LocalDate dateEntreeVigueur = LocalDate.parse(request.getParameter("date_entree_vigueur"));
        LocalDate dateExpiration = LocalDate.parse(request.getParameter("date_expiration"));
        String typeConvention = request.getParameter("type_convention");

        Convention convention = new Convention();
        convention.setObjetConvention(objetConvention);
        convention.setTitreConvention(titreConvention);
        convention.setTypeConvention(typeConvention.toLowerCase());
        convention.setDateEntreeVigueur(dateEntreeVigueur);
        convention.setDateExpiration(dateExpiration);

        if (!convention.isValidConvention()){
            errMsg = "Paramettre d'enregistrement invalide";
        } else {
            try {
                convention.setDateEdition(LocalDate.now());
                ConventionDAO.saveConvention(convention);

                response.sendRedirect("index");
                System.out.println("Sauvegarde réusie. Redirection vers la page d'acceuil!");
            } catch (Exception e) {
                errMsg = e.getMessage();
                request.getServletContext().setAttribute("errMsg", errMsg);
                doGet(request, response);
                System.out.println("Message d'erreur !!!!!!");
            }
        }
    }
}
