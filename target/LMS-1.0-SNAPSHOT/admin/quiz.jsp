<%-- 
    Document   : quiz
    Created on : Nov 22, 2025, 11:59:15 AM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quiz | LMS</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<%@include file="Navbar.jsp" %>

<div class="container py-5">
    <h3 class="mb-4">Quiz: Java Basics</h3>

    <form>

        <div class="card shadow p-4 mb-4">
            <p><strong>1. What is JVM?</strong></p>
            <div class="form-check"><input type="radio" class="form-check-input" name="q1">Java Virtual Machine</div>
            <div class="form-check"><input type="radio" class="form-check-input" name="q1">Java Version Manager</div>
            <div class="form-check"><input type="radio" class="form-check-input" name="q1">Java Verified Module</div>
        </div>

        <div class="card shadow p-4 mb-4">
            <p><strong>2. Which keyword is used to inherit a class?</strong></p>
            <div class="form-check"><input type="radio" class="form-check-input" name="q2">this</div>
            <div class="form-check"><input type="radio" class="form-check-input" name="q2">import</div>
            <div class="form-check"><input type="radio" class="form-check-input" name="q2">extends</div>
        </div>

        <div class="d-grid">
            <button class="btn btn-primary">Submit Quiz</button>
        </div>

    </form>
</div>

</body>
</html>
