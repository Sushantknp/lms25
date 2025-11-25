
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>LMS – Learning Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .hero {
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),
                        url('https://picsum.photos/1500/400?random=8');
            background-size: cover;
            background-position: center;
            height: 85vh;
            color: white;
            display: flex;
            align-items: center;
        }

        .feature-icon {
            font-size: 40px;
            color: #0d6efd;
        }

        footer {
            background: #0d6efd;
            color: white;
            padding: 15px 0;
        }
    </style>
</head>

<body>

    <%@include file="Navbar.jsp" %>


<!-- HERO SECTION -->
<div class="hero text-center">
    <div class="container">
        <h1 class="display-4 fw-bold">Welcome to LMS</h1>
        <p class="lead mt-3">
            Learn anytime, anywhere — Courses, Assignments, Quizzes & More.
        </p>

        <a href="login.jsp" class="btn btn-light btn-lg mt-3 px-4">Get Started</a>
    </div>
</div>

<!-- FEATURES SECTION -->
<section class="py-5">
    <div class="container text-center">

        <h2 class="fw-bold mb-4">Why Choose LMS?</h2>

        <div class="row g-4 mt-3">

            <div class="col-md-4">
                <div class="card p-4">
                    <div class="feature-icon mb-3">📚</div>
                    <h5>Quality Courses</h5>
                    <p>Access curated courses across various subjects.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card p-4">
                    <div class="feature-icon mb-3">📝</div>
                    <h5>Assignments</h5>
                    <p>Submit assignments and track your progress easily.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card p-4">
                    <div class="feature-icon mb-3">❓</div>
                    <h5>Quizzes</h5>
                    <p>Interactive quizzes to test and improve your knowledge.</p>
                </div>
            </div>

        </div>

    </div>
</section>

<!-- COURSES PREVIEW -->
<section class="py-5 bg-light">
    <div class="container">

        <h2 class="fw-bold text-center mb-4">Popular Courses</h2>

        <div class="row g-4">

            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="https://picsum.photos/600/400?random=8" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Web Development</h5>
                        <p class="card-text">Learn HTML, CSS, JS and build real projects.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="https://picsum.photos/600/400?random=9" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Data Science</h5>
                        <p class="card-text">Master Python, ML models, and data analytics.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="https://picsum.photos/600/400?random=10" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Cyber Security</h5>
                        <p class="card-text">Understand ethical hacking and network security.</p>
                    </div>
                </div>
            </div>

        </div>

    </div>
</section>

<%@include file="footer.jsp" %>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
