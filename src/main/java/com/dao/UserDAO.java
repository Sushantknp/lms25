/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author NISHANT
 *
 */
public class UserDAO {

    public boolean insertUser(User user) {

        String query = "INSERT INTO users(name,email,password,role) values(?,?,?,?)";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(query);) {
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getRole());
            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

    }

    public User loginUser(String email, String password) {

        String query = "select user_id,name,email,role,password from users where email = ?";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(query);) {
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            User user = null;
            if (rs.next()) {
                if (password.equals(rs.getString("password"))) {
                    user = new User();
                    user.setEmail(rs.getString("email"));
                    user.setUserId(rs.getInt("user_id"));
                    user.setName(rs.getString("name"));
                    user.setRole(rs.getString("role"));
                }
            }

            return user;

        } catch (Exception e) {
            e.printStackTrace();
            return null;

        }
    }

    public List<User> getAllUsers() {
        List<User> list = new ArrayList<>();
        String sql = "SELECT * FROM users ORDER BY user_id DESC";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                User u = new User();
                u.setUserId(rs.getInt("user_id"));
                u.setName(rs.getString("name"));
                u.setEmail(rs.getString("email"));
                u.setRole(rs.getString("role"));
                list.add(u);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public User getUserById(int id) {
        String sql = "SELECT * FROM users WHERE user_id=?";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                User u = new User();
                u.setUserId(rs.getInt("user_id"));
                u.setName(rs.getString("name"));
                u.setEmail(rs.getString("email"));
                u.setRole(rs.getString("role"));
                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean update(User user) {
        String sql = "UPDATE users SET name=?, role=? WHERE user_id=?";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, user.getName());
            ps.setString(2, user.getRole());
            ps.setInt(3, user.getUserId());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;

        }
    }

    public boolean delete(int id) {
        String sql = "DELETE FROM users WHERE user_id=?";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
