<%--
  Created by IntelliJ IDEA.
  User: jessy
  Date: 14/12/2021
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="title">
        <title> Ajouter une convention </title>
    </jsp:attribute>
    <jsp:attribute name="css">

    </jsp:attribute>
    <jsp:attribute name="js">

    </jsp:attribute>
    <jsp:attribute name="header">
            <jsp:include page="/templates/base/header.jsp"/>
    </jsp:attribute>
    <jsp:attribute name="footer">
        <jsp:include page="/templates/base/footer.jsp" />
    </jsp:attribute>
    <jsp:body>
        <main>
            <div id="addConvention" class="justify-content-start">
                <div class="mb-4 text-center">
                    <h3>Modifier une convention </h3>
                    <p class="small text-danger"> ${errMsg}</p>

                </div>
                <form method="post" action="${pageContext.request.contextPath}/admin/convention/edit" >
                    <input type="hidden" name="idconv" value="${convention.getId()}">
                    <div class="mb-3 row">
                        <label for="titre_convention" class="col-sm-4 col-form-label">Titre Convention :</label>
                        <div class="col-sm-8">
                            <input type="text" name="titre_convention" id="titre_convention" value="${convention.getTitreConvention()}" class="form-control">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="type_convention" class="col-sm-4 col-form-label">Selectionner un type :</label>
                        <div class="col-sm-8">
                            <select name="type_convention" id="type_convention" class="form-control">
                                <option value="Universitaire">Universitaire</option>
                                <option value="Industrielle">Industrielle</option>
                                <option value="IndustrielleNationnale">Industrielle Nationnale</option>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="objet_convention" class="col-sm-4 col-form-label">Objet de la convention :</label>
                        <div class="col-sm-8">
                            <textarea name="objet_convention" id="objet_convention" class="col-12" rows="5">${convention.getObjetConvention()}</textarea>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="date_entree_vigueur" class="col-sm-4 col-form-label">Date d'entrée en vigueur :</label>
                        <div class="col-sm-8">
                            <input type="date" name="date_entree_vigueur" value="${convention.getDateEntreeVigueur()}" id="date_entree_vigueur" class="form-control">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="date_expiration" class="col-sm-4 col-form-label">Date d'expiration :</label>
                        <div class="col-sm-8">
                            <input type="date" name="date_expiration" value="${convention.getDateExpiration()}" id="date_expiration" class="form-control">
                        </div>
                    </div>
                    <div class="row text-center ">
                        <input type="submit" value="Valider" class="btn btn-primary">
                    </div>
                </form>
            </div>
        </main>
    </jsp:body>
</t:genericpage>
