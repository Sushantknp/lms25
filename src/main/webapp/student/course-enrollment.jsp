<%-- 
    Document   : course-enrollment
    Created on : Nov 22, 2025, 12:04:51 PM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Course Enrollment | LMS</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<%@include file="Navbar.jsp" %>

    <!-- Page Header -->
    <div class="container py-4">
        <h3 class="mb-3 fw-bold">Enroll in a Course</h3>

        <!-- Search Courses -->
        <div class="card shadow-sm p-3 mb-4">
            <form class="row g-3">
                <div class="col-md-8">
                    <input type="text" class="form-control" placeholder="Search courses...">
                </div>

                <div class="col-md-4 d-grid">
                    <button class="btn btn-primary">Search</button>
                </div>
            </form>
        </div>

        <!-- Course List -->
        <div class="row">

            <!-- Course Card -->
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm h-100">
                    <img src="https://picsum.photos/600/400?random=1" class="card-img-top">

                    <div class="card-body">
                        <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Learn core Java, OOP concepts, and backend development.</p>
                    </div>

                    <div class="card-footer bg-white border-0">
                        <button class="btn btn-success w-100">Enroll Now</button>
                    </div>
                </div>
            </div>

            <!-- Course Card -->
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm h-100">
                    <img src="https://picsum.photos/600/400?random=2" class="card-img-top">

                    <div class="card-body">
                        <h5 class="card-title">Web Development</h5>
                        <p class="card-text">Master HTML, CSS, JS and build modern responsive websites.</p>
                    </div>

                    <div class="card-footer bg-white border-0">
                        <button class="btn btn-success w-100">Enroll Now</button>
                    </div>
                </div>
            </div>

            <!-- Course Card -->
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm h-100">
                    <img src="https://picsum.photos/600/400?random=3" class="card-img-top">

                    <div class="card-body">
                        <h5 class="card-title">Data Structures</h5>
                        <p class="card-text">Strengthen your problem-solving with DSA concepts.</p>
                    </div>

                    <div class="card-footer bg-white border-0">
                        <button class="btn btn-success w-100">Enroll Now</button>
                    </div>
                </div>
            </div>

            <!-- Course Card -->
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm h-100">
                    <img src="https://picsum.photos/600/400?random=4" class="card-img-top">

                    <div class="card-body">
                        <h5 class="card-title">Python Basics</h5>
                        <p class="card-text">A beginner-friendly course to learn Python step by step.</p>
                    </div>

                    <div class="card-footer bg-white border-0">
                        <button class="btn btn-success w-100">Enroll Now</button>
                    </div>
                </div>
            </div>

            <!-- Course Card -->
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm h-100">
                    <img src="https://picsum.photos/600/400?random=5" class="card-img-top">

                    <div class="card-body">
                        <h5 class="card-title">Machine Learning</h5>
                        <p class="card-text">Understand ML models, training, testing and algorithms.</p>
                    </div>

                    <div class="card-footer bg-white border-0">
                        <button class="btn btn-success w-100">Enroll Now</button>
                    </div>
                </div>
            </div>

            <!-- Course Card -->
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm h-100">
                    <img src="https://picsum.photos/600/400?random=6" class="card-img-top">

                    <div class="card-body">
                        <h5 class="card-title">Cyber Security</h5>
                        <p class="card-text">Learn ethical hacking, networking and security basics.</p>
                    </div>

                    <div class="card-footer bg-white border-0">
                        <button class="btn btn-success w-100">Enroll Now</button>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

