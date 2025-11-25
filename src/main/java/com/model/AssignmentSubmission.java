
package com.model;


public class AssignmentSubmission {
    private int submissionId;
    private int assignmentId;
    private int studentId;
    private String fileUrl;
    private String submittedOn;
    private int score;

    public AssignmentSubmission() {}

    public AssignmentSubmission(int submissionId, int assignmentId, int studentId, String fileUrl, String submittedOn, int score) {
        this.submissionId = submissionId;
        this.assignmentId = assignmentId;
        this.studentId = studentId;
        this.fileUrl = fileUrl;
        this.submittedOn = submittedOn;
        this.score = score;
    }

    // Getters & Setters
    public int getSubmissionId() { return submissionId; }
    public void setSubmissionId(int submissionId) { this.submissionId = submissionId; }

    public int getAssignmentId() { return assignmentId; }
    public void setAssignmentId(int assignmentId) { this.assignmentId = assignmentId; }

    public int getStudentId() { return studentId; }
    public void setStudentId(int studentId) { this.studentId = studentId; }

    public String getFileUrl() { return fileUrl; }
    public void setFileUrl(String fileUrl) { this.fileUrl = fileUrl; }

    public String getSubmittedOn() { return submittedOn; }
    public void setSubmittedOn(String submittedOn) { this.submittedOn = submittedOn; }

    public int getScore() { return score; }
    public void setScore(int score) { this.score = score; }
}

