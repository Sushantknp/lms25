<%-- 
    Document   : profilepage
    Created on : Nov 22, 2025, 11:59:59 AM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Profile | LMS</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<%@include file="Navbar.jsp" %>

<div class="container py-5">

    <div class="row">
        <div class="col-md-4 text-center">

            <img src="https://via.placeholder.com/150" class="rounded-circle shadow mb-3">
            <h4>Student Name</h4>
            <p class="text-muted">student@example.com</p>

        </div>

        <div class="col-md-8">

            <div class="card shadow p-4 mb-4">
                <h5 class="mb-3">Personal Information</h5>

                <form>
                    <div class="mb-3">
                        <label class="form-label">Full Name</label>
                        <input type="text" class="form-control" placeholder="Enter name">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Email Address</label>
                        <input type="email" class="form-control" placeholder="Enter email">
                    </div>

                    <div class="d-grid">
                        <button class="btn btn-primary">Save Changes</button>
                    </div>
                </form>
            </div>

            <div class="card shadow p-4">
                <h5 class="mb-3">Change Password</h5>

                <form>
                    <div class="mb-3">
                        <label class="form-label">Current Password</label>
                        <input type="password" class="form-control">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">New Password</label>
                        <input type="password" class="form-control">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Confirm Password</label>
                        <input type="password" class="form-control">
                    </div>

                    <div class="d-grid">
                        <button class="btn btn-success">Update Password</button>
                    </div>
                </form>
            </div>

        </div>
    </div>

</div>

</body>
</html>

