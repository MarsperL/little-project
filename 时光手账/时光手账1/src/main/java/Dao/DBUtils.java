package Dao;
//连接数据库
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

    public class DBUtils {
    	public final static String url = "jdbc:mysql://localhost:3306/newsdb?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useUnicode=true&characterEncoding=utf-8";
    	public final static String username = "root";
    	public static String password = "0000";
    	public static String driver ="com.mysql.cj.jdbc.Driver";
    	static {
    		try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            }catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
    	}
    	//获取数据库连接
        public static Connection getConnectDb() {
            Connection conn = null;
            try {
            	Class.forName(driver);
                conn = DriverManager.getConnection(url,username,password);
            }catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
            return conn;
        }
        public static void close(ResultSet rs,PreparedStatement ps,Connection conn) {
            try {
                if(rs != null)
                    rs.close();
                if(ps != null)
                    ps.close();
                if(conn != null)
                    conn.close();
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
