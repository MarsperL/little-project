package Dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;
public class DBGet {
    private static String url;
    private static String user="root";
    private static String password;
    private static String driver;
    static {
        try {
            Properties pro = new Properties();
            InputStream inputStream = DBGet.class.getClassLoader().getResourceAsStream("Dao/JDBC.properties");
            pro.load(inputStream);

            url = pro.getProperty("url");
            password =pro.getProperty("password");
            user = pro.getProperty("user");
            driver = pro.getProperty("driver");
            Class.forName(driver);
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url,user,password);
    }

    public static void close(Statement stmt, Connection conn) {
      close(stmt);
      close(conn);
    }
  
    public static void close(ResultSet rs, Statement stmt, Connection conn) {
        close(rs);
        close(stmt);
        close(conn);
    }
    public static void close(AutoCloseable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
