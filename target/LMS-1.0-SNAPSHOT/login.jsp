<%-- 
    Document   : login
    Created on : Nov 22, 2025, 11:37:28 AM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login | LMS</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">
    <%@include file="Navbar.jsp" %>

    <div class="container d-flex justify-content-center align-items-center my-5">
        <div class="card shadow p-4" style="max-width: 500px; width: 100%;">

            <!-- Logo -->
            <div class="text-center mb-3">
                <img src="/mnt/data/8509f8f8-9946-499c-9472-a537d8a9573e.png" 
                     alt="Logo" class="img-fluid" style="max-height: 120px;">
            </div>

            <h3 class="text-center mb-3">Login</h3>

            <form action="login" method="post">
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input type="email" name="email" class="form-control" placeholder="Enter email" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <input type="password" name="password" class="form-control" placeholder="Enter password" required>
                </div>

                <div class="d-grid mb-2">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>

                <p class="text-center">
                    Don't have an account? 
                    <a href="regiter.jsp">Register</a>
                </p>
            </form>
        </div>
    </div>
<%@include file="footer.jsp" %>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
