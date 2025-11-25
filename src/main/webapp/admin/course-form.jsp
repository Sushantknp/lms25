<%-- 
    Document   : course-list
    Created on : Nov 22, 2025, 11:47:24 AM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Create Course | LMS</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

 <%@include file="Navbar.jsp" %>

    <!-- Create Course Form -->
    <div class="container py-5">
        <div class="card shadow p-4">
            <h3 class="mb-4">Create a New Course</h3>

            <form action="${pageContext.request.contextPath}/course" method="post" enctype="multipart/form-data">

                <div class="mb-3">
                    <label class="form-label">Course Title</label>
                    <input type="text" name="title" class="form-control" placeholder="Enter course title" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Category</label>
                    <select class="form-select" name="category">
                        <option>Programming</option>
                        <option>Web Development</option>
                        <option>Database</option>
                        <option>Machine Learning</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label class="form-label">Course Description</label>
                    <textarea class="form-control" name="description" rows="5" placeholder="Enter description"></textarea>
                </div>

                <div class="mb-3">
                    <label class="form-label">Thumbnail Image</label>
                    <input type="file" name="file" class="form-control">
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn btn-success">Create Course</button>
                </div>

            </form>

        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
