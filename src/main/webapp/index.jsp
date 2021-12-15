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
<!doctype html>
<html lang="fr" class="h-100">
<head>
    <jsp:include page="base/head.jsp" >
        <jsp:param name="src" value=""/>
    </jsp:include>
    <title>Gestion de conventions </title>
</head>
<body class="d-flex text-center text-white bg-dark">
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <%@include file="base/header.html"  %>
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

    <div class="h1"> Liste des convention :</div>

<%--    <jsp:useBean id="conventions" scope="page" type="java.util.List">--%>
<%--        <jsp:setProperty name="conventions" property=""></jsp:setProperty>--%>
<%--    </jsp:useBean>--%>
    <c:forEach items="${conventions}" var="convention">
        <div class="row mb-3 bg-light">
            <div class="col-12">
                <div class="card bg-light">
                    <div class="card-body text-black">
                        ${conventions}
                        <h5 class="card-title">convention-${convention.index}</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <a href="#" class="btn btn-primary">Voir Plus</a>
                        <a href="#" class="btn btn-primary">Participer</a>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
    <%@include file="base/footer.html" %>
</div>
</body>
</html>



