/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author NISHANT
 */
public class DBConnection {
    
    public static Connection getConnection(){
        Connection con =null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LMS?useSSL=false&serverTimezone=UTC","root","12345");
            
        } catch (Exception ex) {
            System.getLogger(DBConnection.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
        
        return con;
    }
    
    
    
}
