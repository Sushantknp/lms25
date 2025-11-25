
package com.dao;


import com.model.Assignment;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AssignmentDAO {

    public boolean addAssignment(Assignment a) {
        String sql = "INSERT INTO assignments (course_id, title, description, due_date) VALUES (?, ?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, a.getCourseId());
            ps.setString(2, a.getTitle());
            ps.setString(3, a.getDescription());
            ps.setString(4, a.getDueDate());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


    public List<Assignment> getAssignmentsByCourse(int courseId) {
        List<Assignment> list = new ArrayList<>();
        String sql = "SELECT * FROM assignments WHERE course_id=? ORDER BY assignment_id DESC";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Assignment a = new Assignment();
                a.setAssignmentId(rs.getInt("assignment_id"));
                a.setCourseId(rs.getInt("course_id"));
                a.setTitle(rs.getString("title"));
                a.setDescription(rs.getString("description"));
                a.setDueDate(rs.getString("due_date"));
                list.add(a);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }


    public Assignment getAssignmentById(int id) {
        String sql = "SELECT * FROM assignments WHERE assignment_id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Assignment a = new Assignment();
                a.setAssignmentId(rs.getInt("assignment_id"));
                a.setCourseId(rs.getInt("course_id"));
                a.setTitle(rs.getString("title"));
                a.setDescription(rs.getString("description"));
                a.setDueDate(rs.getString("due_date"));
                return a;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public boolean deleteAssignment(int id) {
        String sql = "DELETE FROM assignments WHERE assignment_id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

