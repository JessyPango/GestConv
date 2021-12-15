<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="fr" class="h-100">
<head>
    <%@include file="../base/head.jsp" %>
    <title> Connection : </title>
</head>
<body class="d-flex text-center text-white bg-dark">
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <%@include file="../base/header.html" %>

    <h2>Users: </h2>
    <c:if test="${errMsg != null}">
		<span style="color: red;">
			<c:out value="${errMsg}"></c:out>
		</span>
    </c:if>
    <table>
        <tr>
            <th>Id</th>
            <th>First Name</th>
            <th> Login</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.login}</td>
                <td>${user.motsDePasse}</td>
            </tr>
        </c:forEach>
    </table>

    <%@include file="../base/footer.html" %>
</div>
</body>
</html>