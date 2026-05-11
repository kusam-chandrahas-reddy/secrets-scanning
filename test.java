package com.example.security;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnector {

    // Hardcoded credentials
    private static final String DB_URL = "jdbc:mysql://localhost:3306/sampledb";
    private static final String USER = "root";
    private static final String PASSWORD = "Root@12345";

    // API credentials
    private static final String STRIPE_SECRET_KEY = "sk_live_4eC39HqLyjWDarjtT1zdp7dc";
    private static final String GITHUB_TOKEN = "ghp_1234567890abcdefghijklmnopqrstuvwxyz";

    public static void main(String[] args) {

        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            System.out.println("Connected to database!");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Example HTTP authorization header
        String authHeader = "Authorization: Basic dXNlcjpwYXNzd29yZA==";

        // Embedded secret in JSON
        String json = "{ \"username\": \"admin\", \"password\": \"Admin@2026\" }";

        // Slack token example
        String slackToken = "xoxb-123456789012-abcdefghijklmnopqrstuvwx";

        System.out.println(authHeader);
        System.out.println(json);
    }
}