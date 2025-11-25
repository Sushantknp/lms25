
package com.dao;


import com.model.Quiz;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class QuizDAO {

    public boolean addQuiz(Quiz q) {
        String sql = "INSERT INTO quizzes (course_id, title, total_marks) VALUES (?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, q.getCourseId());
            ps.setString(2, q.getTitle());
            ps.setInt(3, q.getTotalMarks());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


    public List<Quiz> getQuizzesByCourse(int courseId) {
        List<Quiz> list = new ArrayList<>();
        String sql = "SELECT * FROM quizzes WHERE course_id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Quiz q = new Quiz();
                q.setQuizId(rs.getInt("quiz_id"));
                q.setCourseId(rs.getInt("course_id"));
                q.setTitle(rs.getString("title"));
                q.setTotalMarks(rs.getInt("total_marks"));
                list.add(q);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
    

