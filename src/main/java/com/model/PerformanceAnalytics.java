
package com.model;


public class PerformanceAnalytics {
    private int analyticsId;
    private int studentId;
    private int courseId;
    private double avgAssignmentScore;
    private double avgQuizScore;
    private int overallProgress;

    public PerformanceAnalytics() {}

    public PerformanceAnalytics(int analyticsId, int studentId, int courseId,
                                double avgAssignmentScore, double avgQuizScore, int overallProgress) {
        this.analyticsId = analyticsId;
        this.studentId = studentId;
        this.courseId = courseId;
        this.avgAssignmentScore = avgAssignmentScore;
        this.avgQuizScore = avgQuizScore;
        this.overallProgress = overallProgress;
    }

    // Getters & Setters
    public int getAnalyticsId() { return analyticsId; }
    public void setAnalyticsId(int analyticsId) { this.analyticsId = analyticsId; }

    public int getStudentId() { return studentId; }
    public void setStudentId(int studentId) { this.studentId = studentId; }

    public int getCourseId() { return courseId; }
    public void setCourseId(int courseId) { this.courseId = courseId; }

    public double getAvgAssignmentScore() { return avgAssignmentScore; }
    public void setAvgAssignmentScore(double avgAssignmentScore) { this.avgAssignmentScore = avgAssignmentScore; }

    public double getAvgQuizScore() { return avgQuizScore; }
    public void setAvgQuizScore(double avgQuizScore) { this.avgQuizScore = avgQuizScore; }

    public int getOverallProgress() { return overallProgress; }
    public void setOverallProgress(int overallProgress) { this.overallProgress = overallProgress; }
}

