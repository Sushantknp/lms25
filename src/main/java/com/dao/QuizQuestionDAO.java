
package com.dao;


import com.model.QuizQuestion;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class QuizQuestionDAO {

    public boolean addQuestion(QuizQuestion q) {
        String sql = "INSERT INTO quiz_questions (quiz_id, question, option_a, option_b, option_c, option_d, correct_option) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, q.getQuizId());
            ps.setString(2, q.getQuestion());
            ps.setString(3, q.getOptionA());
            ps.setString(4, q.getOptionB());
            ps.setString(5, q.getOptionC());
            ps.setString(6, q.getOptionD());
            ps.setString(7, q.getCorrectOption());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


    public List<QuizQuestion> getQuestions(int quizId) {
        List<QuizQuestion> list = new ArrayList<>();
        String sql = "SELECT * FROM quiz_questions WHERE quiz_id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, quizId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                QuizQuestion q = new QuizQuestion();
                q.setQuestionId(rs.getInt("question_id"));
                q.setQuizId(rs.getInt("quiz_id"));
                q.setQuestion(rs.getString("question"));
                q.setOptionA(rs.getString("option_a"));
                q.setOptionB(rs.getString("option_b"));
                q.setOptionC(rs.getString("option_c"));
                q.setOptionD(rs.getString("option_d"));
                q.setCorrectOption(rs.getString("correct_option"));
                list.add(q);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}

