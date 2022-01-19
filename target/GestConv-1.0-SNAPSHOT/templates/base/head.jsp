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
    <title>${title}</title>

    <style>
        /*Bootstrap core CSS*/
        <%@include file="/static/css/bootstrap.css"%>


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

        #register, #addConvention {
            height: calc(100vh - 75px);
        }

        #about, #participate, #register, #addConvention {
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

        <%@include file="/static/css/signin.css"%>
        <%@include file="/static/css/cover.css"%>
    </style>
</head>