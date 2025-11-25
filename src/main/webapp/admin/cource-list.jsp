<%-- 
    Document   : cource-list
    Created on : Nov 22, 2025, 11:46:19 AM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Course List | LMS</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

  <%@include file="Navbar.jsp" %>

    <!-- Course List -->
    <div class="container py-5">

        <h3 class="mb-4">Available Courses</h3>

        <div class="row g-4">

            <!-- Course Card -->
            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="https://via.placeholder.com/400x200" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Java Programming</h5>
                        <p class="text-muted">Learn OOP, Java Basics, and Projects.</p>
                        <a href="#" class="btn btn-primary btn-sm">Enroll</a>
                    </div>
                </div>
            </div>

            <!-- Course Card -->
            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="https://via.placeholder.com/400x200" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Web Development</h5>
                        <p class="text-muted">HTML, CSS, JS, Bootstrap, Projects.</p>
                        <a href="#" class="btn btn-primary btn-sm">Enroll</a>
                    </div>
                </div>
            </div>

            <!-- Course Card -->
            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="https://via.placeholder.com/400x200" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Python Programming</h5>
                        <p class="text-muted">Basics, Functions, Projects.</p>
                        <a href="#" class="btn btn-primary btn-sm">Enroll</a>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
