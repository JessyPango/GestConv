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
<!doctype html>
<html lang="fr" class="h-100">
<head>
    <jsp:include page="../base/head.jsp">
        <jsp:param name="src" value="../"/>
    </jsp:include>
    <title>Ajout de conventions </title>
</head>
<body class="d-flex text-white bg-dark">
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <%@include file="../base/header.html" %>
    <main>
        <div id="addConvention" class="justify-content-start">
            <div class="mb-4 text-center">
                <h3>Ajouter une convention </h3>
                <p class="small"> Completez les champs pour créer une convention </p>
                <p class="small text-danger"> ${errMsg}</p>

            </div>
            <form method="post" action="add" >
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
                        <textarea name="objet_convention" id="objet_convention" class="col-12" rows="5">Donner une bref description a cette convention</textarea>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="date_entree_vigueur" class="col-sm-4 col-form-label">Date d'entrée en vigueur :</label>
                    <div class="col-sm-8">
                        <input type="date" name="date_entree_vigueur" id="date_entree_vigueur" class="form-control">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="date_expiration" class="col-sm-4 col-form-label">Date d'expiration :</label>
                    <div class="col-sm-8">
                        <input type="date" name="date_expiration" id="date_expiration" class="form-control">
                    </div>
                </div>
                <div class="row text-center ">
                    <input type="submit" value="Ajouter" class="btn btn-primary">
                </div>
            </form>
        </div>
    </main>
    <%@include file="../base/footer.html" %>
</div>
</body>
</html>
