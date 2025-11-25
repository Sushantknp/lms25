<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Admin - Manage Users | LMS</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body class="bg-light">

        <div class="container py-5">

            <h3 class="mb-4">Manage Users</h3>

            <div class="card shadow p-4">
                <table id="userTable" class="table table-bordered table-striped ">
                    <thead class="table-danger">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th width="180">Actions</th>
                        </tr>
                    </thead>
                    <tbody>

                        <!-- Example rows -->
                        <c:forEach var="user" items="${list}">
                            <tr data-id="${user.getUserId()}">
                                <td>${user.getUserId()}</td>
                                <td class="col-name">${user.getName()}</td>
                                <td class="col-email">${user.getEmail()}</td>
                                <td class="col-role">${user.getRole()}</td>
                                <td>
                                    <button class="btn btn-sm btn-primary editBtn"
                                            data-id="${user.getUserId()}"
                                            data-name="${user.getName()}"
                                            data-email="${user.getEmail()}"
                                            data-role="${user.getRole()}"
                                            data-bs-toggle="modal"
                                            data-bs-target="#editUserModal">
                                        
                                        Edit
                                    </button>

                                    <button class="btn btn-sm btn-danger deleteBtn" 
                                            data-id="${user.getUserId()}"
                                            data-name="${user.getName()}"
                                            data-bs-toggle="modal"
                                            data-bs-target="#deleteUserModal">
                                        Delete
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
            </div>

        </div>

        <!-- =======================
             EDIT USER MODAL
        ========================= -->
        <div class="modal fade" id="editUserModal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">

                    <form action="#" method="post">
                        <div class="modal-header">
                            <h5 class="modal-title">Edit User</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>

                        <div class="modal-body">

                            <input type="hidden" name="userId" id="editUserId">

                            <div class="mb-3">
                                <label class="form-label">Full Name</label>
                                <input type="text" name="name" id="editUserName" class="form-control" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <input type="email" name="email" id="editUserEmail" class="form-control" required disabled>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Role</label>
                                <select name="role" id="editUserRole" class="form-select" required>
                                    <option value="STUDENT" >Student</option>
                                    <option value="INSTRUCTOR">Instructor</option>
                                    <option value="ADMIN">Admin</option>
                                </select>
                            </div>

                        </div>

                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">Save Changes</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>

        <!-- =======================
             DELETE USER MODAL
        ========================= -->
        <div class="modal fade" id="deleteUserModal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">

                        <div class="modal-header">
                            <h5 class="modal-title text-danger">Delete User</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>

                        <div class="modal-body">
                            Are you sure you want to delete the User from <strong></strong>?
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                Cancel
                            </button>
                            <button class="btn btn-danger confirmDeleteBtn">Delete</button>
                        </div>

                </div>
            </div>
        </div>

        <!-- ✅ Toast Container (Place near bottom of <body>) -->
        <div class="position-fixed bottom-0 end-0 p-3" style="z-index: 1080;">
            <div id="liveToast"
                 class="toast align-items-center text-white bg-success border-0"
                 role="alert">
                <div class="d-flex">
                    <div class="toast-body" id="toastMessage">Record deleted
                        successfully!</div>
                    <button type="button" class="btn-close btn-close-dark me-2 m-auto"
                            data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
            </div>
        </div>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

        <script type="module">
            document.addEventListener("DOMContentLoaded", () => {

                // --- DELETE BUTTON HANDLER ---
                document.querySelectorAll(".deleteBtn").forEach(btn => {
                    btn.addEventListener("click", () => {
                        const {id, name} = btn.dataset;
                        
                        console.log(name);

                        document.querySelector("#deleteUserModal .modal-body strong").textContent = name;
                        document.querySelector("#deleteUserModal .confirmDeleteBtn").dataset.id = id;
                    });
                });


                // --- CONFIRM DELETE ASYNC ---
                document.querySelector(".confirmDeleteBtn").addEventListener("click", async () => {
                    const btn = document.querySelector(".confirmDeleteBtn");
                    const id = btn.dataset.id;
                    if (!id)
                        return;

                    try {
                        const res = await fetch("user/delete/" + id, {method: "DELETE"});
                        const data = await res.json();

                        if (!res.ok || !data.success) {
                            console.error("Server error:", data);
                            throw new Error("Delete failed");
                        }

                        bootstrap.Modal.getInstance(document.querySelector("#deleteModal1")).hide();
                        const row = table.querySelector('tr[data-id="' + id + '"]');
                        if (row)
                            row.remove();

                        showToast(data.message, "bg-success");
                        console.log(data);

                    } catch (err) {
                        console.error(err);
                        bootstrap.Modal.getInstance(document.querySelector("#deleteModal1")).hide();
                        showToast(data.message, "bg-danger");
                    }
                });

                // --- EDIT BUTTON HANDLER ---
                document.querySelectorAll(".editBtn").forEach(btn => {
                    btn.addEventListener("click", () => {
                        const {id, name, email, role} = btn.dataset;

                        const modal = document.querySelector("#editUserModal");
                        modal.querySelector('[name="userId"]').value = id || "";
                        modal.querySelector('[name="name"]').value = name || "";
                        modal.querySelector('[name="email"]').value = email || "";
                        modal.querySelector('[name="role"]').value = role || "";
                    });
                });

                const editForm = document.querySelector("#editUserModal form");
                const table = document.querySelector("#userTable tbody");

                // --- EDIT FORM SUBMIT ASYNC ---
                editForm.addEventListener("submit", async e => {
                    e.preventDefault();
                    const formData = Object.fromEntries(new FormData(editForm).entries());
                    console.log(formData);

                    try {
                        const res = await fetch("user/update", {
                            method: "PUT",
                            headers: {"Content-Type": "application/json"},
                            body: JSON.stringify(formData)
                        });

                        const result = await res.json();
                        
                        console.log(result);

                        if (result.success) {
                            showToast(result.message, "bg-success");

                            // Update table row
                            const row = table.querySelector('tr[data-id="' + formData.id + '"]');
                            if (row) {
                                row.querySelector(".col-name").textContent = formData.name;
                                row.querySelector(".col-email").textContent = formData.email;
                                row.querySelector(".col-role").textContent = formData.role;

                                // Update edit button dataset
                                const editBtn = row.querySelector(".editBtn");
                                editBtn.dataset.name = formData.name;
                                editBtn.dataset.email = formData.email;
                                editBtn.dataset.role = formData.role;

                            }

                            bootstrap.Modal.getInstance(document.querySelector("#editUserModal")).hide();

                        } else {
                            showToast(result.message, "bg-danger");
                            console.log(result.errors);
                        }
                    } catch (err) {
                        console.error(err);
                        showToast("Server error!", "bg-danger");
                    }
                });



                // --- TOAST UTILITY FUNCTION ---
                function showToast(message, bgClass) {
                    const toastEl = document.getElementById("liveToast");
                    const toastBody = document.getElementById("toastMessage");

                    toastBody.textContent = message;
                    toastEl.className = "toast align-items-center text-dark border-2" + bgClass;
                    const toast = new bootstrap.Toast(toastEl);
                    toast.show();
                }

           });
        </script>

    </body>
</html>
