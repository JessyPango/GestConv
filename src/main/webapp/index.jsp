<%--
  Created by IntelliJ IDEA.
  User: jessy
  Date: 14/12/2021
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:genericpage>
    <jsp:attribute name="title">
        <title> En savoir plus </title>
    </jsp:attribute>
    <jsp:attribute name="css">
    </jsp:attribute>
    <jsp:attribute name="header">
<%--            <header class="d-flex justify-content-center fixed-top bg-dark p-3">--%>
<%--                <div class="d-flex flex-column flex-lg-row">--%>
<%--                    <h3 class="float-md-start me-5"><a class="text-decoration-none" href="/index">Gestion de convention</a> </h3>--%>
<%--                    <nav class="nav nav-masthead justify-content-center float-md-end align-middle">--%>
<%--                        <a class="nav-link" aria-current="page" href="/index">Acceuil</a>--%>
<%--                        <a class="nav-link" aria-current="page" href="/admin/convention/add">Ajouter une convention</a>--%>
<%--                        <a class="nav-link" aria-current="page" href="/about">A propos</a>--%>
<%--                        <a class="nav-link" href="/login">Se connecter</a>--%>
<%--                        <a class="nav-link" href="/register">S'enregistrer</a>--%>
<%--                    </nav>--%>
<%--                </div>--%>
<%--            </header>--%>
    </jsp:attribute>
    <jsp:attribute name="footer">
        <jsp:include page="/templates/base/footer.jsp" />
    </jsp:attribute>
    <jsp:body>
        <main class="px-3">
            <div id="about">
                <h1>Activités d’ouverture sur l’environnement</h1>
                <p class="lead">
                    Dans le cadre de ses activités d’ouverture sur l’environnement, l’Institut Polytechnique des
                    Sciences Avancées de Sfax (IPSAS) établit des Conventions avec des industriels, des institutions
                    universitaires,
                    des instances régionales, des instances nationales et des institutions internationales.
                </p>
                <p class="lead">
                    <a href="/index" class="btn btn-lg btn-secondary fw-bold border-white bg-white text-dark">Participer</a>
                </p>
            </div>
        </main>
    </jsp:body>
</t:genericpage>
