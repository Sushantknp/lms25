/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servelts;

import com.dao.UserDAO;
import com.model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author NISHANT
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        UserDAO userdb = new UserDAO();
        User loginUser = userdb.loginUser(email, password);

        HttpSession session = req.getSession(true);

        if (loginUser != null) {

            String role = loginUser.getRole();
            
            if(role==null){
                return;
            }

            if (role.equalsIgnoreCase("student")) {
                session.setAttribute("role", role);
                session.setAttribute("id", loginUser.getUserId());
                session.setAttribute("email", loginUser.getEmail());
                resp.sendRedirect("student/studentdashboard.jsp");

            } else if (role.equalsIgnoreCase("Instructor")) {
                session.setAttribute("role", role);
                session.setAttribute("id", loginUser.getUserId());
                session.setAttribute("email", loginUser.getEmail());
                resp.sendRedirect("insttructor/instructor-dashboard.jsp");

            } else if (role.equalsIgnoreCase("admin")) {
                session.setAttribute("role", role);
                session.setAttribute("id", loginUser.getUserId());
                session.setAttribute("email", loginUser.getEmail());
                resp.sendRedirect("admin/admindasboard.jsp");

            }

        }else{
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
            
    

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

}
