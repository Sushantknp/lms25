<%-- 
    Document   : Navbar
    Created on : Nov 22, 2025, 5:14:31 PM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="${pageContext.request.contextPath}/image/galgotias-logo.png" height="40" class="me-2">
                </a>

                <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navMenu">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navMenu">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="course-enrollment.jsp">Courses </a></li>
                        <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                        
                          <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/logout">logout</a></li>

                    </ul>
                </div>
            </div>
        </nav>


    </body>
</html>
