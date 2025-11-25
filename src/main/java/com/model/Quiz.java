
package com.model;


public class Quiz {
    private int quizId;
    private int courseId;
    private String title;
    private int totalMarks;
    private String createdAt;

    public Quiz() {}

    public Quiz(int quizId, int courseId, String title, int totalMarks, String createdAt) {
        this.quizId = quizId;
        this.courseId = courseId;
        this.title = title;
        this.totalMarks = totalMarks;
        this.createdAt = createdAt;
    }

    // Getters & Setters
    public int getQuizId() { return quizId; }
    public void setQuizId(int quizId) { this.quizId = quizId; }

    public int getCourseId() { return courseId; }
    public void setCourseId(int courseId) { this.courseId = courseId; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public int getTotalMarks() { return totalMarks; }
    public void setTotalMarks(int totalMarks) { this.totalMarks = totalMarks; }

    public String getCreatedAt() { return createdAt; }
    public void setCreatedAt(String createdAt) { this.createdAt = createdAt; }
}

