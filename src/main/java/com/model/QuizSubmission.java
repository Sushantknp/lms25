
package com.model;


public class QuizSubmission {
    private int submissionId;
    private int quizId;
    private int studentId;
    private int score;
    private String submittedOn;

    public QuizSubmission() {}

    public QuizSubmission(int submissionId, int quizId, int studentId, int score, String submittedOn) {
        this.submissionId = submissionId;
        this.quizId = quizId;
        this.studentId = studentId;
        this.score = score;
        this.submittedOn = submittedOn;
    }

    // Getters & Setters
    public int getSubmissionId() { return submissionId; }
    public void setSubmissionId(int submissionId) { this.submissionId = submissionId; }

    public int getQuizId() { return quizId; }
    public void setQuizId(int quizId) { this.quizId = quizId; }

    public int getStudentId() { return studentId; }
    public void setStudentId(int studentId) { this.studentId = studentId; }

    public int getScore() { return score; }
    public void setScore(int score) { this.score = score; }

    public String getSubmittedOn() { return submittedOn; }
    public void setSubmittedOn(String submittedOn) { this.submittedOn = submittedOn; }
}
