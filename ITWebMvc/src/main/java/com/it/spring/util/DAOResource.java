/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.it.spring.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Administrator
 */
public class DAOResource {

    private static final String USER_NAME = "root";
    private static final String PASSWORD = "password";
    private static final String URL = "jdbc:mysql://localhost:3306/jsp_final_project";
    private Connection connection;

    public DAOResource() {
        
    }

    public Connection getConnection() {
        this.initConnection();
        return this.connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public void initConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            this.connection = DriverManager.getConnection(URL, USER_NAME, PASSWORD);
            System.out.println("Database connection established");
        } catch (Exception e) {
            System.out.println(e);
            System.err.println("Cannot connect to database server");
        }
    }

    public void closeConnection() {
        try {
            if (!this.connection.isClosed()) {
                this.connection.close();
                System.out.println("Database connection terminated");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
}
