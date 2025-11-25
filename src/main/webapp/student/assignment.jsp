<%-- 
    Document   : assignment
    Created on : Nov 22, 2025, 11:58:09 AM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Assignments | LMS</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">


<%@include file="Navbar.jsp" %>
<div class="container py-5">

    <h3 class="mb-4">Your Assignments</h3>

    <div class="card shadow p-4 mb-4">
        <h5 class="mb-2">Java Assignment 1</h5>
        <p class="text-muted mb-2">Submit a Java program for Calculator App.</p>
        <p class="mb-1"><strong>Due Date:</strong> 25 Nov 2025</p>
        <input type="file" class="form-control mb-2">
        <button class="btn btn-success btn-sm">Submit</button>
    </div>

    <div class="card shadow p-4">
        <h5 class="mb-2">Database Assignment</h5>
        <p class="text-muted mb-2">Write SQL queries based on normalization.</p>
        <p class="mb-1"><strong>Due Date:</strong> 30 Nov 2025</p>
        <input type="file" class="form-control mb-2">
        <button class="btn btn-success btn-sm">Submit</button>
    </div>

</div>

</body>
</html>

