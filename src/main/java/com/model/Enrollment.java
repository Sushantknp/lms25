
package com.model;

public class Enrollment {
    private int enrollmentId;
    private int userId;
    private int courseId;
    private String enrolledOn;

    public Enrollment() {}

    public Enrollment(int enrollmentId, int userId, int courseId, String enrolledOn) {
        this.enrollmentId = enrollmentId;
        this.userId = userId;
        this.courseId = courseId;
        this.enrolledOn = enrolledOn;
    }

    // Getters & Setters
    public int getEnrollmentId() { return enrollmentId; }
    public void setEnrollmentId(int enrollmentId) { this.enrollmentId = enrollmentId; }

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public int getCourseId() { return courseId; }
    public void setCourseId(int courseId) { this.courseId = courseId; }

    public String getEnrolledOn() { return enrolledOn; }
    public void setEnrolledOn(String enrolledOn) { this.enrolledOn = enrolledOn; }
}

