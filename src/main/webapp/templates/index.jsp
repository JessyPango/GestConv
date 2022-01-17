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
        <title> Gestion de convention</title>
        <!-- CSS only -->
    </jsp:attribute>
    <jsp:attribute name="css">

    </jsp:attribute>
    <jsp:attribute name="header">
            <jsp:include page="/templates/base/header.jsp"/>
    </jsp:attribute>
    User: <b>${request.getRemoteUser()}
    <jsp:attribute name="footer">
        <jsp:include page="/templates/base/footer.jsp"/>
    </jsp:attribute>
    <jsp:body>
        <c:if test="user != null">
            <div> Welcome: ${user.login}-${user.id}</div>
        </c:if>

        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
            <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
            </symbol>
            <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
                <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
            </symbol>
            <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
                <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
            </symbol>
        </svg>
        <c:if test="${not empty conventions}">
            <div id="searchZone">
                <div>
                    <form method="GET" action="index" id="search" class="d-block">
                        <div class="text-center h3"> Recherche simple</div>
                        <input type="hidden" name="next" value="search">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Rechercher des conventions...">
                            <button class="btn btn-outline-secondary" type="submit">Rechercher</button>
                        </div>
                    </form>
                    <form method="GET" action="index" id="advanced-search" class="d-none">
                        <div class="text-center h3"> Recherche avancé</div>
                        <input type="hidden" name="next" value="advanced_search">
                        <div class="input-group">
                                <%--                        <label for="q"> Texte : </label>--%>
                            <input type="text" name="q" id="q" class="form-control " placeholder="Saisir le texte...">
                        </div>
                        <div class="input-group">
                                <%--                        <label for="type"> Type Convention: </label>--%>
                            <select name="type" id="type" class="form-control">
                                <option selected disabled>Type convention</option>
                                <option value="Universitaire">Universitaire</option>
                                <option value="Industrielle">Industrielle</option>
                                <option value="IndustrielleNationnale">Industrielle Nationnale</option>
                            </select>
                        </div>
                        <button class="btn btn-outline-secondary" type="submit">Rechercher</button>
                    </form>
                </div>
                <div class="my-2">
                    <button class="btn btn-as" style="color: #6C757D">ou recherche avancé</button>
                    <script>
                        $(document).ready(
                            function () {
                                form_hided = true;
                                $(".btn-as").click(
                                    function () {
                                        if (form_hided) {
                                            $("#advanced-search").removeClass("d-none");
                                            $("#advanced-search").addClass("d-block");
                                            $("#search").removeClass("d-block");
                                            $("#search").addClass("d-none");
                                            $(".btn-as").html("ou simple recherche")
                                            form_hided = false;
                                        } else {
                                            $("#advanced-search").removeClass("d-block");
                                            $("#advanced-search").addClass("d-none");
                                            $("#search").removeClass("d-none");
                                            $("#search").addClass("d-block");
                                            $(".btn-as").html("ou recherche avancé")
                                            form_hided = true;
                                        }
                                    }
                                )
                            });
                    </script>
                </div>
            </div>
            <div class="h1"> Liste des conventions :</div>

            <c:if test="${not empty errMsg}">
                <div class="alert alert-danger alert-dismissible  d-flex align-items-center" role="alert">
                    <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:">
                        <use xlink:href="#exclamation-triangle-fill"/>
                    </svg>
                    <div>${errMsg}</div>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </c:if>
            <c:forEach items="${conventions}" var="convention">
                <div class="row mb-3 bg-light conv${convention.getId()}">
                    <div class="col-12">
                        <div class="card bg-light">
                            <div class="card-body text-black position-relative">
                                <div class="d-none position-absolute top-0 end-0 form${convention.getId()}">
                                    <form method="post" action="/admin/convention/del">
                                        <input type="hidden" name="idconv" value="${convention.getId()}">
                                        <button class="btn-outline-danger p-2"><span class="material-icons-outlined"> delete_outline</span>
                                        </button>
                                    </form>
                                    <form method="get" action="/admin/convention/edit">
                                        <input type="hidden" name="idconv" value="${convention.getId()}">
                                        <button class="btn-outline-warning p-2"><span
                                                class="material-icons-outlined"> edit </span></button>
                                    </form>
                                </div>
                                <h5 class="card-title">convention---${convention.getId()}</h5>
                                <p class="card-text">${convention.getObjetConvention()}</p>
                                <div class="d-flex justify-content-center">
                                    <form method="get" action="detail_conv" class="mx-3">
                                        <input type="hidden" name="idconv" value="${convention.getId()}">
                                        <button type="submit" class="btn btn-primary">Voir Plus</button>
                                    </form>
                                    <form method="get" action="/participate/conv" class="mx-3">
                                        <input type="hidden" name="idconv" value="${convention.getId()}">
                                        <input type="hidden" name="iduser" value="user.getId()">
                                        <button type="submit" class="btn btn-primary">Participer</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    $(document).ready(function () {
                        $('.conv${convention.getId()}').mouseenter(function () {
                            $('.conv${convention.getId()} .form${convention.getId()}').removeClass("d-none")
                            $('.conv${convention.getId()} .form${convention.getId()}').addClass("d-flex")
                        })
                        $('.conv${convention.getId()}').mouseleave(function () {
                            $('.conv${convention.getId()} .form${convention.getId()}').removeClass("d-flex")
                            $('.conv${convention.getId()} .form${convention.getId()}').addClass("d-none")
                        })
                    })
                </script>
            </c:forEach>
        </c:if>
        <c:if test="${empty conventions}">
            <div class="h3" style="margin-top:150px">Aucunne convention pour le moment </div>
            <p><a href="/admin/convention/add">Ajouter une convention</a> si vous êtes Administrateur.</p>
        </c:if>
    </jsp:body>
</t:genericpage>