<%-- 
    Document   : monitor-students-performance.html
    Created on : Nov 22, 2025, 12:02:34 PM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Monitor Students Performance | LMS</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

    <%@include file="Navbar.jsp" %>

    <!-- Page Header -->
    <div class="container py-4">
        <h3 class="mb-3 fw-bold">Monitor Students Performance</h3>

        <!-- Search Bar -->
        <div class="card shadow-sm p-3 mb-4">
            <form class="row g-3">
                <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Search student by name...">
                </div>

                <div class="col-md-4">
                    <select class="form-select">
                        <option selected disabled>Filter by Course</option>
                        <option>Java Programming</option>
                        <option>Web Development</option>
                        <option>Data Structures</option>
                        <option>Python Basics</option>
                    </select>
                </div>

                <div class="col-md-4 d-grid">
                    <button class="btn btn-primary">Search</button>
                </div>
            </form>
        </div>

        <!-- Students Performance Table -->
        <div class="card shadow-sm p-4">
            <h5 class="mb-3">Students Overview</h5>

            <div class="table-responsive">
                <table class="table table-striped table-hover align-middle">
                    <thead class="table-primary">
                        <tr>
                            <th>Student Name</th>
                            <th>Course</th>
                            <th>Progress</th>
                            <th>Assignments</th>
                            <th>Quiz Score</th>
                            <th>Status</th>
                            <th>View</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>Rahul Singh</td>
                            <td>Java Programming</td>
                            <td><div class="progress"><div class="progress-bar bg-success" style="width: 85%">85%</div></div></td>
                            <td>12/14</td>
                            <td>78%</td>
                            <td><span class="badge bg-success">Good</span></td>
                            <td><a class="btn btn-sm btn-outline-primary">Details</a></td>
                        </tr>

                        <tr>
                            <td>Priya Sharma</td>
                            <td>Web Development</td>
                            <td><div class="progress"><div class="progress-bar bg-warning" style="width: 60%">60%</div></div></td>
                            <td>10/14</td>
                            <td>67%</td>
                            <td><span class="badge bg-warning">Average</span></td>
                            <td><a class="btn btn-sm btn-outline-primary">Details</a></td>
                        </tr>

                        <tr>
                            <td>Arjun Verma</td>
                            <td>Python Basics</td>
                            <td><div class="progress"><div class="progress-bar bg-danger" style="width: 40%">40%</div></div></td>
                            <td>5/12</td>
                            <td>45%</td>
                            <td><span class="badge bg-danger">Needs Help</span></td>
                            <td><a class="btn btn-sm btn-outline-primary">Details</a></td>
                        </tr>

                        <tr>
                            <td>Sneha Kapoor</td>
                            <td>Data Structures</td>
                            <td><div class="progress"><div class="progress-bar bg-success" style="width: 92%">92%</div></div></td>
                            <td>14/14</td>
                            <td>88%</td>
                            <td><span class="badge bg-success">Excellent</span></td>
                            <td><a class="btn btn-sm btn-outline-primary">Details</a></td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

