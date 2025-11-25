<%-- 
    Document   : regiter
    Created on : Nov 22, 2025, 11:35:42 AM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register - LMS</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">


    <%@include file="Navbar.jsp" %>


    <!-- Register Form -->
    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-6">

                <div class="card shadow-sm">
                    <div class="card-header bg-primary text-white text-center">
                        <h4 class="mb-0">Create an Account</h4>
                    </div>

                    <div class="card-body">

                        <form action="${contextPath}/user" method="post">
                            
                            <div class="mb-3">
                                <label class="form-label fw-semibold">Full Name</label>
                                <input type="text" name="name" class="form-control" placeholder="Enter your full name" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-semibold">Email Address</label>
                                <input type="email" name="email" class="form-control" placeholder="Enter your email" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-semibold">Password</label>
                                <input type="password" name="password" class="form-control" placeholder="Create a password" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-semibold">Select Role</label>
                                <select class="form-select" required name="role">
                                    <option value="" disabled selected>Choose your role</option>
                                    <option>Student</option>
                                    <option>Instructor</option>
                                </select>
                            </div>

                            <button class="btn btn-primary w-100 mt-2">Register</button>

                        </form>

                        <p class="text-center mt-3 mb-0">
                            Already have an account?
                            <a href="login.jsp" class="text-primary">Login</a>
                        </p>

                    </div>
                </div>

            </div>
        </div>
    </div>
<%@include file="footer.jsp" %>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

