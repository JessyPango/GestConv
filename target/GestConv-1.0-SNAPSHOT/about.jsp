<%--
  Created by IntelliJ IDEA.
  User: jessy
  Date: 14/12/2021
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <%@include file="base/head.jsp"%>
    <title>A propos du projet. </title>
</head>
<body class="d-flex text-center text-white bg-dark">
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <%@include file="base/header.html"%>
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
                <a href="participate" class="btn btn-lg btn-secondary fw-bold border-white bg-white">Participer</a>
            </p>
        </div>
    </main>
    <%@include file="base/footer.html"%>
</div>
</body>
</html>
