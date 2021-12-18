<%--
  Created by IntelliJ IDEA.
  User: jessy
  Date: 14/12/2021
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="title">
        <title> Gestion de convention</title>
        <!-- CSS only -->
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
        <c:if test="user != null">
            <div> Welcome: ${user.login}-${user.id}</div>
        </c:if>
        <div id="searchZone">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Rechercher des conventions..." aria-label="Recipient's username" aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary" type="button" id="button-addon2">Rechercher</button>
            </div>
            <div class="my-2">
                <a href="" style="color: #6C757D">ou recherche avancé</a>
            </div>
        </div>

        <div class="h1"> Liste des conventions :</div>
        <c:forEach items="${conventions}" var="convention">
            <div class="row mb-3 bg-light">
                <div class="col-12">
                    <div class="card bg-light">
                        <div class="card-body text-black">
                            <h5 class="card-title">convention---${convention.getId()}</h5>
                            <p class="card-text">${convention.getObjetConvention()}</p>
                            <a href="convention.url" class="btn btn-primary">Voir Plus</a>
                            <a href="convention.url" class="btn btn-primary">Participer</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </jsp:body>
</t:genericpage>