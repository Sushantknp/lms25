
package com.dao;


import com.model.PerformanceAnalytics;

import java.sql.*;

public class PerformanceAnalyticsDAO {

    public boolean saveAnalytics(PerformanceAnalytics p) {
        String sql = "INSERT INTO performance_analytics (student_id, course_id, avg_assignment_score, avg_quiz_score, overall_progress) " +
                     "VALUES (?, ?, ?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, p.getStudentId());
            ps.setInt(2, p.getCourseId());
            ps.setDouble(3, p.getAvgAssignmentScore());
            ps.setDouble(4, p.getAvgQuizScore());
            ps.setInt(5, p.getOverallProgress());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


    public PerformanceAnalytics getAnalytics(int studentId, int courseId) {
        String sql = "SELECT * FROM performance_analytics WHERE student_id=? AND course_id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, studentId);
            ps.setInt(2, courseId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                PerformanceAnalytics p = new PerformanceAnalytics();
                p.setAnalyticsId(rs.getInt("analytics_id"));
                p.setStudentId(rs.getInt("student_id"));
                p.setCourseId(rs.getInt("course_id"));
                p.setAvgAssignmentScore(rs.getDouble("avg_assignment_score"));
                p.setAvgQuizScore(rs.getDouble("avg_quiz_score"));
                p.setOverallProgress(rs.getInt("overall_progress"));
                return p;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}

