
package com.model;

public class Course {
    private int courseId;
    private int instructorId;
    private String title;
    private String description;
    private String imageUrl;
    
    private String category;

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
    
    private String createdAt;

    public Course() {}

    public Course(int courseId, int instructorId, String title, String description, String createdAt) {
        this.courseId = courseId;
        this.instructorId = instructorId;
        this.title = title;
        this.description = description;
        this.createdAt = createdAt;
    }

    // Getters & Setters
    public int getCourseId() { return courseId; }

    @Override
    public String toString() {
        return "Course{" + "courseId=" + courseId + ", instructorId=" + instructorId + ", title=" + title + ", description=" + description + ", imageUrl=" + imageUrl + ", category=" + category + ", createdAt=" + createdAt + '}';
    }
    public void setCourseId(int courseId) { this.courseId = courseId; }

    public int getInstructorId() { return instructorId; }
    public void setInstructorId(int instructorId) { this.instructorId = instructorId; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getCreatedAt() { return createdAt; }
    public void setCreatedAt(String createdAt) { this.createdAt = createdAt; }
}
