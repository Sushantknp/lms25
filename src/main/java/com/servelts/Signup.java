package com.servelts;

import com.dao.DBConnection;
import com.dao.UserDAO;
import com.model.User;
import jakarta.servlet.ServletConfig;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;
import org.apache.commons.beanutils.BeanUtils;
import tools.jackson.databind.ObjectMapper;

@WebServlet(urlPatterns = {"/user/*"})
public class Signup extends HttpServlet {

    private final ObjectMapper mapper = new ObjectMapper();

    private UserDAO userDao;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        userDao = new UserDAO();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            User user = new User();
            BeanUtils.populate(user, req.getParameterMap());

            UserDAO userdb = new UserDAO();
            if (userdb.insertUser(user)) {
                req.getRequestDispatcher("/login.jsp").forward(req, resp);
            } else {
                req.getRequestDispatcher("/regiter.jsp").forward(req, resp);

            }

        } catch (IllegalAccessException | InvocationTargetException ex) {
            System.getLogger(Signup.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<User> list = userDao.getAllUsers();
        req.setAttribute("list", list);
        req.getRequestDispatcher("admin/admin-user.jsp").forward(req, resp);
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
            boolean result = userDao.delete(id);
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
            User user = mapper.readValue(req.getReader(), User.class);
            System.out.println(user);
                    

            boolean success = userDao.update(user);
            String responseJson = mapper.writeValueAsString(Map.of("success", success, "message",
                    success ? "Record updated successfully" : "Failed to update record"));
            out.write(responseJson);

        } catch (Exception ex) {
            System.getLogger(Signup.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
            out.write(mapper.writeValueAsString(Map.of("success", false, "message", "Server error")));

        }

    }

}
