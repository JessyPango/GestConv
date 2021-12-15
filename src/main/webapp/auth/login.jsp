<%--
  Created by IntelliJ IDEA.
  User: jessy
  Date: 14/12/2021
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="fr" class="h-100">
<head>
    <jsp:include page="../base/head.jsp" >
        <jsp:param name="src" value="../"/>
    </jsp:include>
    <title> Connection :  </title>
</head>
<body class="d-flex text-center text-white bg-dark">
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <%@include file="../base/header.html" %>

    <main>
        <div id="participate">
            <h1>
                Entrez vos identifiants
            </h1>
            <div class="small"> ${message}</div>
            <form class="d-flex justify-content-center align-items-center flex-column mb-3">
                <div class="form-floating w-75">
                    <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">Email address</label>
                </div>
                <div class="form-floating mb-2 w-75">
                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword">Password</label>
                </div>
                <button class="w-75 btn btn-lg btn-primary" type="submit">Se connecter</button>
            </form>
            <p class="lead">
                Ou bien <a href="register">créer un compte</a>
            </p>

        </div>
    </main>

    <%@include file="../base/footer.html" %>
</div>
</body>
</html>
