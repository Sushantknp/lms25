<%-- 
    Document   : studentdasbhoard
    Created on : Nov 22, 2025, 11:39:26 AM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student Dashboard | LMS</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

    <%@include file="Navbar.jsp" %>

    <!-- Main -->
    <div class="container py-5">

        <!-- Welcome Card -->
        <div class="card shadow mb-4 p-4">
            <h3>Welcome, Student!</h3>
            <p class="text-muted">Track your progress and continue learning.</p>
        </div>

        <!-- Enrolled Courses -->
        <h4 class="mb-3">Your Courses</h4>

        <div class="row g-4">

            <div class="col-md-4">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title">Java Programming</h5>
                        <p class="text-muted">Progress: 60%</p>
                        <a href="#" class="btn btn-primary btn-sm">Continue</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title">Database Management system </h5>
                        <p class="text-muted">Progress: 50%</p>
                        <a href="#" class="btn btn-primary btn-sm">Continue</a>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

