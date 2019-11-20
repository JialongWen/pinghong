package com.ph.dbutil;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class DBUtil {
    private static Connection connection;
     static {
        try{
            Class.forName("org.gjt.mm.mysql.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/pinghongdb?useUnicode=true&characterEncoding=utf8","root","1234");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static Connection getConnection(){
        return connection;
    }
}
