<%-- 
    Document   : admin-course
    Created on : Nov 22, 2025, 11:50:32?AM
    Author     : NISHANT
--%>

<%@include file="Navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin - Manage Courses | LMS</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<%@include file="Navbar.jsp" %>

    <!-- Course Management -->
    <div class="container py-5">

        <h3 class="mb-4">Manage Courses</h3>

        <div class="card shadow p-4">
            <table class="table table-bordered table-striped">
                <thead class="table-danger">
                    <tr>
                        <th>#</th>
                        <th>Course Name</th>
                        <th>Instructor</th>
                        <th>Students</th>
                        <th width="180">Actions</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Java Programming</td>
                        <td>Riya Verma</td>
                        <td>45</td>
                        <td>
                            <button class="btn btn-sm btn-secondary">Edit</button>
                            <button class="btn btn-sm btn-danger">Delete</button>
                        </td>
                    </tr>

                    <tr>
                        <td>2</td>
                        <td>Web Development</td>
                        <td>Amit Sharma</td>
                        <td>30</td>
                        <td>
                            <button class="btn btn-sm btn-secondary">Edit</button>
                            <button class="btn btn-sm btn-danger">Delete</button>
                        </td>
                    </tr>

                    <tr>
                        <td>3</td>
                        <td>Python Programming</td>
                        <td>Rohan Singh</td>
                        <td>55</td>
                        <td>
                            <button class="btn btn-sm btn-secondary">Edit</button>
                            <button class="btn btn-sm btn-danger">Delete</button>
                        </td>
                    </tr>

                </tbody>
            </table>
        </div>

    </div>

</body>
</html>

