<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="fixed-top bg-dark p-3 w-100">
    <div class="row px-1 px-sm-2 px-md-3 px-lg-5">
        <h3 class="order-1 col-6 col-md-auto text-start">
            <a class="text-decoration-none text-white" href="/">
                <span class="d-none d-md-inline">Gestion de convention</span>
                <span class="d-md-none">GestConv</span>
            </a>
        </h3>
        <nav class="nav nav-masthead  order-3 order-md-2 col-12 col-md-auto flex-md-fill justify-content-center">
            <a class="nav-link" aria-current="page" href="/index">Acceuil</a>
            <a class="nav-link" aria-current="page" href="/admin/convention/add">Ajouter une convention</a>
            <a class="nav-link" aria-current="page" href="/about">A propos</a>
        </nav>
        <div class="nav-masthead order-2 order-md-3 col-6 col-md-auto text-end text-white">
            <c:choose>
                <c:when test="${sessionScope.uer != null}">
                    <a class="nav-link d-inline" data-bs-toggle="tooltip" data-bs-placement="bottom"
                       title="Se déconnecter"
                    href="/logout">
                        <span class="material-icons-outlined">
                            account_circle
                        </span>
                        ${sessionScope.user.getUsername()}
                    </a>
                </c:when>
                <c:otherwise>
                    <a class="nav-link d-inline" aria-current="page" href="/login">Se connecter</a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</header>