<%-- 
    Document   : instructor-dashboard
    Created on : Nov 22, 2025, 11:40:47 AM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Instructor Dashboard | LMS</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<%@include file="Navbar.jsp" %>

    <!-- Main -->
    <div class="container py-5">

        <!-- Welcome -->
        <div class="card shadow mb-4 p-4">
            <h3>Welcome, Instructor!</h3>
            <p class="text-muted">Manage your courses and track student performance.</p>
        </div>

        <!-- Course List -->
        <h4 class="mb-3">Your Courses</h4>

        <div class="row g-4">
            <div class="col-md-4">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title">Web Development</h5>
                        <p class="text-muted">Students Enrolled: 45</p>
                        <a href="#" class="btn btn-success btn-sm">View</a>
                        <a href="#" class="btn btn-secondary btn-sm">Edit</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title">Python Programming</h5>
                        <p class="text-muted">Students Enrolled: 30</p>
                        <a href="#" class="btn btn-success btn-sm">View</a>
                        <a href="#" class="btn btn-secondary btn-sm">Edit</a>
                    </div>
                </div>
            </div>

        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

