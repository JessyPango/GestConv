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
<!doctype html>
<html lang="fr" class="h-100">
<head>
    <%@include file="base/head.html" %>
    <title> Connection :  </title>
</head>
<body class="d-flex text-center text-white bg-dark">
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <%@include file="base/header.html" %>

    <main>
        <div id="register">
            <h1>S'enregistrer</h1>
            <form method="post" action="register" class="d-flex justify-content-center align-items-center flex-column mb-3">
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

    <%@include file="base/footer.html" %>
</div>
</body>
</html>
