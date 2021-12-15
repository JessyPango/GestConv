package tn.ipsas.gestconv.servlet;

import tn.ipsas.gestconv.bean.Convention;
import tn.ipsas.gestconv.dao.ConventionDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet(name = "addconv" , urlPatterns={"/convention/add"})
public class ConventionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/convention/add.jsp");
        System.out.println("Do get Here !!!!!! ");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String errMsg="";
        String objetConvention = request.getParameter("objet_convention");
        LocalDate dateEntreeVigueur = LocalDate.parse(request.getParameter("date_entree_vigueur"));
        LocalDate dateExpiration = LocalDate.parse(request.getParameter("date_expiration"));
        String typeConvention = request.getParameter("type_convention");

        Convention convention = new Convention();
        convention.setObjetConvention(objetConvention);
        convention.setTypeConvention(typeConvention);
        convention.setDateEntreeVigueur(dateEntreeVigueur);
        convention.setDateExpiration(dateExpiration);

        if (!convention.isValidConvention()){
            errMsg = "Paramettre d'enregistrement invalide";
        } else {
            try {
                convention.setDateEdition(LocalDate.now());
                ConventionDAO.saveConvention(convention);

                request.setAttribute("conventions", ConventionDAO.getAllConvention());
                getServletContext().getRequestDispatcher("/index.jsp")
                        .forward(request,response);
                System.out.println("Sauvegarde réusie. Redirection vers la page d'acceuil!");
//                response.sendRedirect("index.jsp");
            } catch (Exception e) {
                errMsg = e.getMessage();
                request.getServletContext().setAttribute("errMsg", errMsg);
                doGet(request, response);
                System.out.println("Message d'erreur !!!!!!");
            }
        }
    }
}
