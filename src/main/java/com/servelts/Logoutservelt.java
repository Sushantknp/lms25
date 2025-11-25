/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servelts;

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
@WebServlet(name = "logoutservelt", urlPatterns = {"/logout"})
public class Logoutservelt extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		if (session != null) {
			session.invalidate();
		}

		// ✅ Prevent browser from caching secured pages
		resp.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		resp.setHeader("Pragma", "no-cache");
		resp.setDateHeader("Expires", 0);
		resp.sendRedirect(req.getContextPath() + "/login.jsp");
	}

}


