<%-- 
    Document   : material-access
    Created on : Nov 22, 2025, 12:07:01 PM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Material Access | LMS</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<%@include file="Navbar.jsp" %>

    <!-- Header -->
    <div class="container py-4">
        <h3 class="fw-bold mb-3">Course Materials</h3>

        <!-- Course Filter -->
        <div class="card shadow-sm p-3 mb-4">
            <div class="row g-3">
                <div class="col-md-6">
                    <select class="form-select">
                        <option selected disabled>Select Course</option>
                        <option>Java Programming</option>
                        <option>Web Development</option>
                        <option>Python Basics</option>
                        <option>Data Structures</option>
                    </select>
                </div>

                <div class="col-md-6 d-grid">
                    <button class="btn btn-primary">Load Materials</button>
                </div>
            </div>
        </div>

        <!-- Materials List -->
        <div class="card shadow-sm p-4">
            <h5 class="mb-3">Available Materials</h5>

            <div class="list-group">

                <!-- Material Item -->
                <div class="list-group-item d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="mb-1">Lecture 1: Introduction to Java</h6>
                        <small class="text-muted">PDF • Uploaded on: 12 Nov 2024</small>
                    </div>
                    <a class="btn btn-outline-primary btn-sm">Download</a>
                </div>

                <div class="list-group-item d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="mb-1">Chapter Notes: OOP Concepts</h6>
                        <small class="text-muted">DOCX • Uploaded on: 15 Nov 2024</small>
                    </div>
                    <a class="btn btn-outline-primary btn-sm">Download</a>
                </div>

                <div class="list-group-item d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="mb-1">Assignment 1: Classes & Objects</h6>
                        <small class="text-muted">PDF • Uploaded on: 18 Nov 2024</small>
                    </div>
                    <a class="btn btn-outline-primary btn-sm">Download</a>
                </div>

                <div class="list-group-item d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="mb-1">Slides: Inheritance & Polymorphism</h6>
                        <small class="text-muted">PPT • Uploaded on: 20 Nov 2024</small>
                    </div>
                    <a class="btn btn-outline-primary btn-sm">Download</a>
                </div>

                <div class="list-group-item d-flex justify-content-between align-items-center">
                    <div>
                        <h6 class="mb-1">Source Code Examples</h6>
                        <small class="text-muted">ZIP • Uploaded on: 21 Nov 2024</small>
                    </div>
                    <a class="btn btn-outline-primary btn-sm">Download</a>
                </div>

            </div>
        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

