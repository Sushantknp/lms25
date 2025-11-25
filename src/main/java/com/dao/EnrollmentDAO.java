
package com.dao;


import com.model.Enrollment;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EnrollmentDAO {

    public boolean enrollStudent(Enrollment e) {
        String sql = "INSERT INTO enrollments (user_id, course_id) VALUES (?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, e.getUserId());
            ps.setInt(2, e.getCourseId());

            return ps.executeUpdate() > 0;

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }


    public List<Enrollment> getEnrollmentsByUser(int userId) {
        List<Enrollment> list = new ArrayList<>();
        String sql = "SELECT * FROM enrollments WHERE user_id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Enrollment e = new Enrollment();
                e.setEnrollmentId(rs.getInt("enrollment_id"));
                e.setUserId(rs.getInt("user_id"));
                e.setCourseId(rs.getInt("course_id"));
                list.add(e);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}

