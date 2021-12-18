<%--
  Created by IntelliJ IDEA.
  User: jessy
  Date: 14/12/2021
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="title">
        <title> Création de compte utilisateur </title>
    </jsp:attribute>
    <jsp:attribute name="css">

<%--        <%@include file="/static/css/bootstrap.css"%>--%>
    </jsp:attribute>
    <jsp:attribute name="header">
            <jsp:include page="/templates/base/header.jsp"/>
    </jsp:attribute>
    <jsp:attribute name="footer">
        <jsp:include page="/templates/base/footer.jsp" />
    </jsp:attribute>
    <jsp:body>
        <main>
            <div id="register">
                <h1>Créer votre compte utilisateur</h1>
                <p class="small" style="color: #595C5F">
                    Donnez un login et un mots de passe qui vous permettrons de vous
                    authentifiez lors de vos prochains connection.
                    Ensuite vous pouvez enregistrer vos paramètres de participation
                </p>
                <form method="post" action="/register" class="d-flex justify-content-center align-items-center flex-column mb-3">
                    <div class="form-floating w-75">
                        <input type="text" name="login" class="form-control" id="nameRegister"
                               placeholder="Nom de la structure">
                        <label for="nameRegister">Nom</label>
                    </div>
                    <div class="form-floating mb-2 w-75">
                        <input type="password" class="form-control" name="motsDePasse" id="passwordRegister"
                               placeholder="Password">
                        <label for="passwordRegister">Mots de passe</label>
                    </div>
                    <button class="w-75 btn btn-lg btn-primary" type="submit">S'enregistrer</button>
                </form>
            </div>
        </main>
    </jsp:body>
</t:genericpage>