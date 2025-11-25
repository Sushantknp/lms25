package com.dao;

import com.model.Course;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CourseDAO {

    public boolean addCourse(Course c) {
        String sql = "INSERT INTO courses (instructor_id, title, description,category,image_url) VALUES (?, ?, ?,?,?)";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, c.getInstructorId());
            ps.setString(2, c.getTitle());
            ps.setString(3, c.getDescription());
            ps.setString(4, c.getCategory());
            ps.setString(5, c.getImageUrl());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Course> getAllCourses() {
        List<Course> list = new ArrayList<>();
        String sql = "SELECT * FROM courses ORDER BY course_id DESC";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Course c = new Course();
                c.setCourseId(rs.getInt("course_id"));
                c.setInstructorId(rs.getInt("instructor_id"));
                c.setTitle(rs.getString("title"));
                c.setDescription(rs.getString("description"));
                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Course getCourseById(int id) {
        String sql = "SELECT * FROM courses WHERE course_id=?";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Course c = new Course();
                c.setCourseId(rs.getInt("course_id"));
                c.setInstructorId(rs.getInt("instructor_id"));
                c.setTitle(rs.getString("title"));
                c.setDescription(rs.getString("description"));
                return c;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean updateCourse(Course c) {
        String sql = "UPDATE courses SET title=?, description=? WHERE course_id=?";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, c.getTitle());
            ps.setString(2, c.getDescription());
            ps.setInt(3, c.getCourseId());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteCourse(int id) {
        String sql = "DELETE FROM courses WHERE course_id=?";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
