<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Admin - Manage Courses | LMS</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body class="bg-light">

        <div class="container py-5">

            <h3 class="mb-4">Manage Courses</h3>

            <div class="card shadow p-4">
                <table id="courseTable" class="table table-bordered table-striped">
                    <thead class="table-danger">
                        <tr>
                            <th>#</th>
                            <th>Course Name</th>
                            <th>Instructor</th>
                            <th>Description</th>

                            <th width="180">Actions</th>
                        </tr>
                    </thead>

                    <tbody>

                        <c:forEach var="course" items="${list}">
                            <!-- Row 1 -->
                            <tr data-id="${course.getCourseId()}">
                                <td class="col-id">${course.getCourseId()}</td>
                                <td class="col-title">${course.getTitle()}</td>
                                <td class="col-instructor">${course.getInstructorId()}</td>
                                <td class="col-description">${course.getDescription()}</td>

                                <td>
                                    <button 
                                        class="btn btn-sm btn-secondary editBtn"
                                        data-id="${course.getCourseId()}"

                                        data-title="${course.getTitle()}"
                                        data-instructor="${course.getInstructorId()}"
                                        data-description="${course.getDescription()}"

                                        data-bs-toggle="modal"
                                        data-bs-target="#editModal"
                                        >Edit</button>

                                    <button 
                                        class="btn btn-sm btn-danger deleteBtn"
                                        data-id="${course.getCourseId()}"
                                        data-title="${course.getTitle()}"

                                        data-bs-toggle="modal"
                                        data-bs-target="#deleteModal"
                                        >Delete</button>
                                </td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
            </div>

        </div>

        <!-- ========================= -->
        <!-- EDIT COURSE MODAL         -->
        <!-- ========================= -->
        <div class="modal fade" id="editModal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">

                    <form action="#" method="post">
                        <div class="modal-header">
                            <h5 class="modal-title">Edit Course</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>

                        <div class="modal-body">

                            <input type="hidden" name="courseId" id="editCourseId">

                            <div class="mb-3">
                                <label class="form-label">Course Name</label>
                                <input type="text" class="form-control" name="title" id="editCourseName" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Instructor</label>
                                <input type="text" name="instructorId" class="form-control" id="editInstructor" disabled>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Description</label>
                                <textarea class="form-control" name="description" rows="3" placeholder="Optional"></textarea>
                            </div>

                        </div>

                        <div class="modal-footer">
                            <button class="btn btn-primary">Save Changes</button>
                        </div>

                    </form>

                </div>
            </div>
        </div>

        <!-- ========================= -->
        <!-- DELETE CONFIRM MODAL      -->
        <!-- ========================= -->
        <div class="modal fade" id="deleteModal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <h5 class="modal-title text-danger">Delete Course</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>

                    <div class="modal-body">
                        Are you sure you want to delete the course from <strong></strong>?

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-danger confirmDeleteBtn ">Delete</button>
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

                </div>
            </div>
        </div>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

        <script>
            document.addEventListener("DOMContentLoaded", () => {

                // --- DELETE BUTTON HANDLER ---
                document.querySelectorAll(".deleteBtn").forEach(btn => {
                    btn.addEventListener("click", () => {
                        const {id, title} = btn.dataset;

                        console.log(name);

                        document.querySelector("#deleteModal .modal-body strong").textContent = title;
                        document.querySelector("#deleteModal .confirmDeleteBtn").dataset.id = id;
                    });
                });


                // --- CONFIRM DELETE ASYNC ---
                document.querySelector(".confirmDeleteBtn").addEventListener("click", async () => {
                    const btn = document.querySelector(".confirmDeleteBtn");
                    const id = btn.dataset.id;
                    if (!id)
                        return;

                    try {
                        const res = await fetch("course/delete/" + id, {method: "DELETE"});
                        const data = await res.json();

                        if (!res.ok || !data.success) {
                            console.error("Server error:", data);
                            throw new Error("Delete failed");
                        }

                        bootstrap.Modal.getInstance(document.querySelector("#deleteModal")).hide();
                        const row = table.querySelector('tr[data-id="' + id + '"]');
                        if (row)
                            row.remove();

                        showToast(data.message, "bg-success");
                        console.log(data);

                    } catch (err) {
                        console.error(err);
                        bootstrap.Modal.getInstance(document.querySelector("#deleteModal")).hide();
                        showToast(data.message, "bg-danger");
                    }
                });

                // --- EDIT BUTTON HANDLER ---
                document.querySelectorAll(".editBtn").forEach(btn => {
                    btn.addEventListener("click", () => {
                        const {id, title, instructor, description} = btn.dataset;

                        const modal = document.querySelector("#editModal");
                        modal.querySelector('[name="courseId"]').value = id || "";
                        modal.querySelector('[name="title"]').value = title || "";
                        modal.querySelector('[name="instructorId"]').value = instructor || "";
                        modal.querySelector('[name="description"]').value = description || "";
                    });
                });

                const editForm = document.querySelector("#editModal form");
                const table = document.querySelector("#courseTable tbody");

                // --- EDIT FORM SUBMIT ASYNC ---
                editForm.addEventListener("submit", async e => {
                    e.preventDefault();
                    const formData = Object.fromEntries(new FormData(editForm).entries());
                    console.log(formData);

                    try {
                        const res = await fetch("course/update", {
                            method: "PUT",
                            headers: {"Content-Type": "application/json"},
                            body: JSON.stringify(formData)
                        });

                        const result = await res.json();

                        console.log(result);

                        if (result.success) {
                            showToast(result.message, "bg-success");

                            // Update table row
                            const row = table.querySelector('tr[data-id="' + formData.courseId + '"]');
                            if (row) {
                                row.querySelector(".col-id").textContent = formData.courseId;
                                row.querySelector(".col-title").textContent = formData.title;
                                row.querySelector(".col-description").textContent = formData.description;

                                // Update edit button dataset
                                const editBtn = row.querySelector(".editBtn");
                                editBtn.dataset.id = formData.courseId;
                                editBtn.dataset.title = formData.title;
                                editBtn.dataset.description = formData.description;

                            }

                            bootstrap.Modal.getInstance(document.querySelector("#editModal")).hide();

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
