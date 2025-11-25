
package com.dao;

import com.model.QuizSubmission;

import java.sql.*;

public class QuizSubmissionDAO {

    public boolean submitQuiz(QuizSubmission s) {
        String sql = "INSERT INTO quiz_submissions (quiz_id, student_id, score) VALUES (?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, s.getQuizId());
            ps.setInt(2, s.getStudentId());
            ps.setInt(3, s.getScore());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

