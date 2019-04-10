package com.ikheiry.gestion.commerciale;

import java.sql.*;

public class ParametreBD {

    // Propriétés

    private static final String url = "jdbc:mysql://localhost/northwind";
    private static final String user = "root";
    private static final String pass = "";
    private static final String driver = "com.mysql.jdbc.Driver";
    // Construct

    // Getteurs
    public static String getUrl() {
        return url;
    }

    public static String getUser() {
        return user;
    }

    public static String getPass() {
        return pass;
    }

    public static String getDriver() {
        return driver;
    }

    public static ResultSet executerSelect(String query) throws SQLException {
        Connection cnx = null;
        ResultSet rs = null;
        Statement st = null;
        try {
            Class.forName(driver);
            cnx = DriverManager.getConnection(url, user, pass);
            st = cnx.createStatement();
            rs = st.executeQuery(query);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }

}
