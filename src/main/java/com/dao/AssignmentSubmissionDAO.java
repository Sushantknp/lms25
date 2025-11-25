
package com.dao;


import com.model.AssignmentSubmission;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AssignmentSubmissionDAO {

    public boolean submitAssignment(AssignmentSubmission s) {
        String sql = "INSERT INTO assignment_submissions (assignment_id, student_id, file_url) VALUES (?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, s.getAssignmentId());
            ps.setInt(2, s.getStudentId());
            ps.setString(3, s.getFileUrl());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


    public List<AssignmentSubmission> getSubmissions(int assignmentId) {
        List<AssignmentSubmission> list = new ArrayList<>();
        String sql = "SELECT * FROM assignment_submissions WHERE assignment_id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, assignmentId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                AssignmentSubmission s = new AssignmentSubmission();
                s.setSubmissionId(rs.getInt("submission_id"));
                s.setAssignmentId(rs.getInt("assignment_id"));
                s.setStudentId(rs.getInt("student_id"));
                s.setFileUrl(rs.getString("file_url"));
                s.setScore(rs.getInt("score"));
                list.add(s);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }


    public boolean updateScore(int submissionId, int score) {
        String sql = "UPDATE assignment_submissions SET score=? WHERE submission_id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, score);
            ps.setInt(2, submissionId);

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

