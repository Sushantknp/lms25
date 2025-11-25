package com.servelts;

import com.dao.CourseDAO;
import com.model.Course;
import com.model.User;
import com.utils.UploadUtil;
import jakarta.servlet.ServletConfig;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import tools.jackson.databind.ObjectMapper;

@WebServlet(name = "CourseServlet", urlPatterns = {"/course/*"})
@MultipartConfig
public class CourseServlet extends HttpServlet {
        private final ObjectMapper mapper = new ObjectMapper();
        
        
      private CourseDAO courseDao;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        courseDao = new CourseDAO();
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);

        Part filePart = req.getPart("file");
        int instructorId = 0;
        if (session != null && session.getAttribute("id") != null) {
            instructorId = (Integer) session.getAttribute("id");

        }

        String title = req.getParameter("title");
        String category = req.getParameter("category");

        String description = req.getParameter("description");

        // Path to "uploads" folder in webapp
        String uploadPath = req.getServletContext().getRealPath("") + "uploads";

        // Save file
        String fileName = UploadUtil.saveFile(filePart, uploadPath);

        Course course = new Course();
        course.setInstructorId(instructorId);
        course.setTitle(title);
        course.setDescription(description);
        course.setCategory(category);
        course.setImageUrl("uploads/" + fileName);

        CourseDAO dao = new CourseDAO();

        if (dao.addCourse(course)) {
            resp.sendRedirect("list-courses");
        } else {
            req.setAttribute("error", "Failed to add course!");
            req.getRequestDispatcher("add-course.jsp").forward(req, resp);
        }
    }
    
       @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Course> list =this.courseDao.getAllCourses();
           System.out.println(list);
        req.setAttribute("list", list);
        req.getRequestDispatcher("admin/admin-course.jsp").forward(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("application/json");
        res.setCharacterEncoding("UTF-8");
        PrintWriter out = res.getWriter();

        String pathInfo = req.getPathInfo(); // /123
        System.out.println("🔥 doDelete called for: " + req.getRequestURI());
        System.out.println(pathInfo);

        if (pathInfo == null || pathInfo.equals("/")) {
            res.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            out.write(mapper.writeValueAsString(java.util.Map.of("success", false, "message", "Missing ID")));
            return;
        }

        try {

            int id = 0;
            System.out.println(pathInfo.length());
            String[] parts = pathInfo.split("\\D+"); // ["", "1", "23", "004", ""]
            for (String p : parts) {
                if (!p.isEmpty()) {
                    id = Integer.parseInt(p); // parse handles "004" -> 4
                }
            }

            System.out.println(id);
            boolean result = courseDao.deleteCourse(id);
            if (result) {

                res.setStatus(HttpServletResponse.SC_OK);
                out.write(mapper.writeValueAsString(Map.of("success", true, "message", "Record deleted successfully")));
            } else {
                res.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                out.write(mapper.writeValueAsString(Map.of("success", false, "message", "Error deleting record")));
            }
        } catch (NumberFormatException e) {
            res.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            out.write(mapper.writeValueAsString(java.util.Map.of("success", false, "message", "Invalid ID")));
        } catch (Exception e) {
            res.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            out.write(mapper.writeValueAsString(java.util.Map.of("success", false, "message", "Server error")));
        }

    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("application/json");
        res.setCharacterEncoding("UTF-8");
        PrintWriter out = res.getWriter();

        try {
            Course course = mapper.readValue(req.getReader(), Course.class);
            System.out.println(course);
                    

            boolean success = courseDao.updateCourse(course);
            String responseJson = mapper.writeValueAsString(Map.of("success", success, "message",
                    success ? "Record updated successfully" : "Failed to update record"));
            out.write(responseJson);

        } catch (Exception ex) {
            System.getLogger(Signup.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
            out.write(mapper.writeValueAsString(Map.of("success", false, "message", "Server error")));

        }

    }

    
}
