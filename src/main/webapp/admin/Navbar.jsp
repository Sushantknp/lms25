<%-- 
    Document   : Navbar
    Created on : Nov 22, 2025, 5:14:31 PM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-danger">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="../image/galgotias-logo.png" height="40" class="me-2">
                    Admin - Users
                </a>

                <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navMenu">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navMenu">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="admindasboard.jsp">Dashboard</a></li>
                        <li class="nav-item"><a class="nav-link" href="${contextPath}/user">Users</a></li>
                        <li class="nav-item"><a class="nav-link" href="${contextPath}/course">Courses</a></li>
                        <li class="nav-item"><a class="nav-link" href="setting.jsp">Setting</a></li>
                        <li class="nav-item"><a class="nav-link" href="performance-analytics.jsp">Performance Analytics</a></li>
                        <li class="nav-item"><a class="nav-link" href="course-form.jsp">Create Courses</a></li>
                          <li class="nav-item"><a class="nav-link" href="${contextPath}/logout">logout</a></li>

                    </ul>
                </div>
            </div>
        </nav>

    </body>
</html>
