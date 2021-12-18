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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="Hugo 0.84.0">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        #about {
            height: calc(100vh - 126px);
        }

        #participate {
            height: 100vh;
        }
        #register, #addConvention{
            height: calc(100vh - 75px);
        }

        #about, #participate,#register, #addConvention {
            padding-top: 100px;
            display: flex;
            vertical-align: center;
            justify-content: center;
            flex-direction: column;
        }
        #searchZone {
            padding-top: 100px;
            padding-bottom: 100px;
        }
        nav .nav-link:hover, nav .nav-link:focus {
            color: whitesmoke;
        }
        .main {

        }
    </style>


    <!-- Custom styles for this template -->
    <style type="text/css">
        <%@ include file="css/cover.css" %>
        <%@ include file="css/signin.css" %>
    </style>

<%--    <link href="css/cover.css" rel="stylesheet" type="text/css">--%>
<%--    <link href="css/signin.css" rel="stylesheet" type="text/css">--%>
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
    <%@include file="base/footer.html" %>
</div>
</body>
</html>



