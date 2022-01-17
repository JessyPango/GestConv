<%--
  Created by IntelliJ IDEA.
  User: jessy
  Date: 14/12/2021
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
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
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="title">
        <title> Authentification </title>
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
            <div id="participate">
                <h1>
                    Entrez vos identifiants
                </h1>
                <div class="small"> ${message}</div>
                <form method="post" action="j_security_check" class="d-flex justify-content-center align-items-center flex-column mb-3">
                    <div class="form-floating w-75">
                        <input type="text" name="j_username" class="form-control" id="floatingInput" placeholder="name@example.com">
                        <label for="floatingInput">Username</label>
                    </div>
                    <div class="form-floating mb-2 w-75">
                        <input type="password" name="j_password" class="form-control" id="floatingPassword" placeholder="Password">
                        <label for="floatingPassword">Password</label>
                    </div>
                    <button class="w-75 btn btn-lg btn-primary" type="submit">Se connecter</button>
                </form>
                <p class="lead">
                    Ou bien <a href="register">créer un compte</a>
                </p>

            </div>
        </main>
    </jsp:body>
</t:genericpage>