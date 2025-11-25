<%-- 
    Document   : performance-analytics
    Created on : Nov 22, 2025, 12:11:12 PM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Performance Analytics | LMS</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

   <%@include file="Navbar.jsp" %>

    <!-- Page Container -->
    <div class="container py-4">

        <h3 class="fw-bold mb-4">Performance Analytics Overview</h3>

        <!-- Summary Cards -->
        <div class="row mb-4">

            <div class="col-md-3">
                <div class="card shadow-sm p-3 text-center">
                    <h5>Total Students</h5>
                    <h2 class="text-primary fw-bold">320</h2>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card shadow-sm p-3 text-center">
                    <h5>Courses Active</h5>
                    <h2 class="text-success fw-bold">12</h2>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card shadow-sm p-3 text-center">
                    <h5>Avg Quiz Score</h5>
                    <h2 class="text-warning fw-bold">76%</h2>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card shadow-sm p-3 text-center">
                    <h5>Assignments Submitted</h5>
                    <h2 class="text-danger fw-bold">1104</h2>
                </div>
            </div>

        </div>

        <!-- Charts Row -->
        <div class="row mb-4">

            <!-- Performance Chart -->
            <div class="col-lg-6 mb-4">
                <div class="card shadow-sm p-4">
                    <h5 class="mb-3">Overall Student Progress</h5>
                    <img src="https://picsum.photos/600/300?random=10" class="img-fluid rounded">
                    <small class="text-muted d-block mt-2">*Chart placeholder*</small>
                </div>
            </div>

            <!-- Course Comparison Chart -->
            <div class="col-lg-6 mb-4">
                <div class="card shadow-sm p-4">
                    <h5 class="mb-3">Course Performance Comparison</h5>
                    <img src="https://picsum.photos/600/300?random=11" class="img-fluid rounded">
                    <small class="text-muted d-block mt-2">*Chart placeholder*</small>
                </div>
            </div>

        </div>

        <!-- Table of Student Insights -->
        <div class="card shadow-sm p-4 mb-4">
            <h5 class="mb-3">Student Performance Insights</h5>

            <div class="table-responsive">
                <table class="table table-striped table-hover align-middle">
                    <thead class="table-dark">
                        <tr>
                            <th>Student</th>
                            <th>Course</th>
                            <th>Progress</th>
                            <th>Average Score</th>
                            <th>Status</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>Rahul Singh</td>
                            <td>Java Programming</td>
                            <td>85%</td>
                            <td>78%</td>
                            <td><span class="badge bg-success">Improving</span></td>
                        </tr>

                        <tr>
                            <td>Priya Sharma</td>
                            <td>Web Development</td>
                            <td>60%</td>
                            <td>67%</td>
                            <td><span class="badge bg-warning">Average</span></td>
                        </tr>

                        <tr>
                            <td>Arjun Verma</td>
                            <td>Python Basics</td>
                            <td>40%</td>
                            <td>45%</td>
                            <td><span class="badge bg-danger">Needs Support</span></td>
                        </tr>

                        <tr>
                            <td>Sneha Kapoor</td>
                            <td>Data Structures</td>
                            <td>92%</td>
                            <td>88%</td>
                            <td><span class="badge bg-success">Excellent</span></td>
                        </tr>

                    </tbody>
                </table>
            </div>

        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
