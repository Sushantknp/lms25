
package com.dao;


import com.model.Material;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MaterialDAO {

    public boolean addMaterial(Material m) {
        String sql = "INSERT INTO materials (course_id, title, file_type, file_url) VALUES (?, ?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, m.getCourseId());
            ps.setString(2, m.getTitle());
            ps.setString(3, m.getFileType());
            ps.setString(4, m.getFileUrl());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


    public List<Material> getMaterialsByCourse(int courseId) {
        List<Material> list = new ArrayList<>();
        String sql = "SELECT * FROM materials WHERE course_id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, courseId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Material m = new Material();
                m.setMaterialId(rs.getInt("material_id"));
                m.setCourseId(rs.getInt("course_id"));
                m.setTitle(rs.getString("title"));
                m.setFileType(rs.getString("file_type"));
                m.setFileUrl(rs.getString("file_url"));
                list.add(m);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }


    public boolean deleteMaterial(int id) {
        String sql = "DELETE FROM materials WHERE material_id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

