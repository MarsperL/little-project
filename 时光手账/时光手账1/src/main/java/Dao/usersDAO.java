package Dao;

import JavaBean.users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
public class usersDAO {

    @SuppressWarnings({ "resource" })
	public int insert(users users, String username) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int i  = 0;
        try {
        	conn = DBGet.getConnection();
        	pstmt = conn.prepareStatement("select * from tb_user where username = '" + username + "'");
            rs = pstmt.executeQuery();
        if(rs.next()){
            System.out.println("注册失败,请重试");
            i = 0;
        }else{
            String sql = "Insert into tb_user(username,password,gender,email,resume) values(?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,username);
            pstmt.setString(2,users.getPassword());
            pstmt.setString(3,users.getGender());
            pstmt.setString(4,users.getEmail());
            pstmt.setString(5,users.getResume());
            i = pstmt.executeUpdate();
          }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBGet.close(rs,pstmt,conn);
        }
        return  i;
    }


    @SuppressWarnings("resource")
	public int update(String username,String password,String gender,String email,String resume,String id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int i = 0;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from tb_user where username = '" + username + "'");
            rs = pstmt.executeQuery();
            if(rs.next()&& ((rs.getInt(1))!=Integer.parseInt(id))){
                System.out.println("修改失败，重复用户名");
                i = 0;
            }
            else {
                String sql = "update tb_user set username=?,password=?,gender=?,email=?,resume=? where id=?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, username);
                pstmt.setString(2, password);
                pstmt.setString(3, gender);
                pstmt.setString(4, email);
                pstmt.setString(5, resume);
                pstmt.setInt(6, Integer.parseInt(id));
                i = pstmt.executeUpdate();
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            DBGet.close(rs,pstmt,conn);
        }
            return i;
    }

    public users getAllUsersByID(String id){
        users users = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from tb_user where id=?");
          try {
        	  pstmt.setInt(1,Integer.parseInt(id));
              rs = pstmt.executeQuery();
          }catch (Exception e) {
			
		}
 
            // 展开结果集数据库
            if(rs != null && rs.next()) {
                users = new users();
                // 通过字段检索
                users.setId(rs.getInt("id"));
                users.setName(rs.getString("username"));
                users.setPassword(rs.getString("password"));
                users.setGender(rs.getString("gender"));
                users.setEmail(rs.getString("email"));
                users.setResume(rs.getString("resume"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return users;
    }


    public ArrayList<users> getAllUsers(){
        ArrayList<users> list = new ArrayList<users>();
        users users = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from tb_user");
            rs = pstmt.executeQuery();
            // 展开结果集数据库
            while (rs != null && rs.next()) {
                users = new users();
                // 通过字段检索
                users.setId(rs.getInt("id"));
                users.setName(rs.getString("username"));
                users.setPassword(rs.getString("password"));
                users.setGender(rs.getString("gender"));
                users.setEmail(rs.getString("email"));
                users.setResume(rs.getString("resume"));
                list.add(users);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
                DBGet.close(rs,pstmt,conn);
        }
        return list;
         }

    public users getUsersByName(String username){
        users users = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from tb_user where username = '" + username + "'");
            rs = pstmt.executeQuery();
            // 展开结果集数据库
            if(rs != null && rs.next()) {
                users = new users();
                // 通过字段检索
                users.setId(rs.getInt("id"));
                users.setName(rs.getString("username"));
                users.setPassword(rs.getString("password"));
                users.setGender(rs.getString("gender"));
                users.setEmail(rs.getString("email"));
                users.setResume(rs.getString("resume"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return users;
    }

    public int delete(String id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int i = 0;
        try {
            conn = DBGet.getConnection();
            // 创建语句对象
            String sql = "delete from tb_user where id=?";
            pstmt = conn.prepareStatement(sql);
            // 设置参数值
            pstmt.setInt(1, Integer.parseInt(id));
            // 执行删除数据
            i = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBGet.close(pstmt,conn);
        }
        return i;
    }
   }
