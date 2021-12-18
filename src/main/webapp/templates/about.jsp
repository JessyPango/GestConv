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
            <jsp:include page="/templates/base/header.jsp"/>
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
                    <a href="participate" class="btn btn-lg btn-secondary fw-bold border-white bg-white text-dark">Participer</a>
                </p>
            </div>
        </main>
    </jsp:body>
</t:genericpage>
