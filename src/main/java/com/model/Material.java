
package com.model;


public class Material {
    private int materialId;
    private int courseId;
    private String title;
    private String fileType;
    private String fileUrl;
    private String uploadedOn;

    public Material() {}

    public Material(int materialId, int courseId, String title, String fileType, String fileUrl, String uploadedOn) {
        this.materialId = materialId;
        this.courseId = courseId;
        this.title = title;
        this.fileType = fileType;
        this.fileUrl = fileUrl;
        this.uploadedOn = uploadedOn;
    }

    // Getters & Setters
    public int getMaterialId() { return materialId; }
    public void setMaterialId(int materialId) { this.materialId = materialId; }

    public int getCourseId() { return courseId; }
    public void setCourseId(int courseId) { this.courseId = courseId; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getFileType() { return fileType; }
    public void setFileType(String fileType) { this.fileType = fileType; }

    public String getFileUrl() { return fileUrl; }
    public void setFileUrl(String fileUrl) { this.fileUrl = fileUrl; }

    public String getUploadedOn() { return uploadedOn; }
    public void setUploadedOn(String uploadedOn) { this.uploadedOn = uploadedOn; }
}
