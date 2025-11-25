<%-- 
    Document   : setting
    Created on : Nov 22, 2025, 11:55:15 AM
    Author     : NISHANT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Settings | LMS</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

    <%@include file="Navbar.jsp" %>
    <!-- Settings -->
    <div class="container py-5">
        <h3 class="mb-4">Account Settings</h3>

        <div class="row">
            <div class="col-lg-6">

                <!-- Profile Settings -->
                <div class="card shadow p-4 mb-4">
                    <h5 class="mb-3">Profile Information</h5>

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

                <!-- Password Settings -->
                <div class="card shadow p-4">
                    <h5 class="mb-3">Change Password</h5>

                    <form>
                        <div class="mb-3">
                            <label class="form-label">Current Password</label>
                            <input type="password" class="form-control" placeholder="Enter current password">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">New Password</label>
                            <input type="password" class="form-control" placeholder="Enter new password">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Confirm New Password</label>
                            <input type="password" class="form-control" placeholder="Confirm password">
                        </div>

                        <div class="d-grid">
                            <button class="btn btn-success">Update Password</button>
                        </div>
                    </form>
                </div>

            </div>

            <!-- Notification Settings -->
            <div class="col-lg-6">
                <div class="card shadow p-4">
                    <h5 class="mb-3">Notification Preferences</h5>

                    <form>
                        <div class="form-check mb-2">
                            <input class="form-check-input" type="checkbox">
                            <label class="form-check-label">Email Notifications</label>
                        </div>

                        <div class="form-check mb-2">
                            <input class="form-check-input" type="checkbox">
                            <label class="form-check-label">Course Updates</label>
                        </div>

                        <div class="form-check mb-2">
                            <input class="form-check-input" type="checkbox">
                            <label class="form-check-label">Announcements</label>
                        </div>

                        <div class="form-check mb-3">
                            <input class="form-check-input" type="checkbox">
                            <label class="form-check-label">Assignment Reminders</label>
                        </div>

                        <div class="d-grid">
                            <button class="btn btn-secondary">Save Preferences</button>
                        </div>

                    </form>
                </div>
            </div>

        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

