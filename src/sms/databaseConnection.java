/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author igneu
 */
public class databaseConnection {

//    C:\Program Files\Java\jdk-1.8\jre\lib\ext
    final static String JDBC_DRVER = "com.mysql.cj.jdbc.Driver";
    final static String DB_URL = "jdbc:mysql://localhost:3306/smsmain";

    final static String USER = "root";
    final static String PASS = "";

    public static Connection connection() {
        try {
            Class.forName(JDBC_DRVER);

            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);

            return conn;

        } catch (ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null, e);
            return null;

        }

    }

}
