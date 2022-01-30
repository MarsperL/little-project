package Dao;

import JavaBean.Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
public class booksDAO {

    @SuppressWarnings("resource")
	public int insert(Book books, String bookname) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int i  = 0;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from books where bookname = '" + bookname + "'");
            rs = pstmt.executeQuery();
            if(rs.next()){
                System.out.println("账单信息重复，修改失败");
                i = 0;
            }else{
                String sql = "Insert into books(bookname,author,publish,isbn,price,bookresume,publishdate) values(?,?,?,?,?,?,?)";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1,bookname);
                pstmt.setString(2,books.getAuthor());
                pstmt.setString(3,books.getPublish());
                pstmt.setString(4,books.getIsbn());
                pstmt.setDouble(5,books.getPrice());
                pstmt.setString(6,books.getBookresume());
                pstmt.setString(7,books.getPublishdate());
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
	public int update(String bookname,String author,String publish,String isbn,float price,String bookresume,String publishdate,String id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int i = 0;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from books where bookname = '" + bookname + "'");
            rs = pstmt.executeQuery();
            if(rs.next()&& ((rs.getInt(1))!=Integer.parseInt(id))){
                System.out.println("账单信息重复，修改失败");
                i = 0;
            }
            else {
                String sql = "update books set bookname=?,author=?,publish=?,isbn=?,price=?,bookresume=?,publishdate=? where id=?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, bookname);
                pstmt.setString(2, author);
                pstmt.setString(3, publish);
                pstmt.setString(4, isbn);
                pstmt.setFloat(5, price);
                pstmt.setString(6, bookresume);
                pstmt.setString(7, publishdate);
                pstmt.setInt(8, Integer.parseInt(id));

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
    public Book getAllBooksByID(String id){
        Book books= null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from books where id=?");
            try {
            	 pstmt.setInt(1,Integer.parseInt(id));
                 rs = pstmt.executeQuery();
			} catch (Exception e) {
				
			}
           
           
            if(rs != null && rs.next()) {
                books = new Book();
                books.setId(rs.getInt("id"));
                books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
                books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));


            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return books;
    }

    public ArrayList<Book> getAllBooks(){
        ArrayList<Book> list = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from books");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
            
                books.setId(rs.getInt("id"));
                books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
                books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list;
    }

//按时间排序
    public ArrayList<Book> getAllBooks1(){
        ArrayList<Book> list = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from books order by publishdate asc");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
                books.setId(rs.getInt("id"));
                books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
                books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list;
    }

  //按类型排序
    public ArrayList<Book> getAllBooks2(){
        ArrayList<Book> list2 = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from books order by author asc");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
                books.setId(rs.getInt("id"));
                books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
                books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list2.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list2;
    }
 
    
  //微信
    public ArrayList<Book> getAllBooks21(){
        ArrayList<Book> list21 = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from newsdb.books \n"
            		+ "having author=\"微信\"\n"
            		+ "order by  publishdate asc;");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
                books.setId(rs.getInt("id"));
               books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
               books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list21.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list21;
    }
    
  //支付宝
    public ArrayList<Book> getAllBooks22(){
        ArrayList<Book> list22 = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from newsdb.books \n"
            		+ "having author=\"支付宝\"\n"
            		+ "order by  publishdate asc;");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
                books.setId(rs.getInt("id"));
               books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
                books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list22.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list22;
    }    
    
  //现金
    public ArrayList<Book> getAllBooks23(){
        ArrayList<Book> list23 = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from newsdb.books \n"
            		+ "having author=\"现金\"\n"
            		+ "order by  publishdate asc;");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
                books.setId(rs.getInt("id"));
               books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
               books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list23.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list23;
    }
    
    //银行卡
    public ArrayList<Book> getAllBooks24(){
        ArrayList<Book> list24 = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from newsdb.books \n"
            		+ "having author=\"银行卡\"\n"
            		+ "order by  publishdate asc;");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
                books.setId(rs.getInt("id"));
               books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
                books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list24.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list24;
    }    
    
  //其它
    public ArrayList<Book> getAllBooks25(){
        ArrayList<Book> list25 = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("SELECT * FROM newsdb.books \n"
            		+ "where author \n"
            		+ "not in(\"微信\" , \"支付宝\" ,\"现金\",\"银行卡\");");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
                books.setId(rs.getInt("id"));
               books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
               books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list25.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list25;
    }
    
  //周一
    public ArrayList<Book> getAllBooks31(){
        ArrayList<Book> list31 = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from newsdb.books \n"
            		+ "having publish=\"周一\"\n"
            		+ "order by  publishdate asc;");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
                books.setId(rs.getInt("id"));
               books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
               books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list31.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list31;
    }
    
  //周二
    public ArrayList<Book> getAllBooks32(){
        ArrayList<Book> list32 = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from newsdb.books \n"
            		+ "having publish=\"周二\"\n"
            		+ "order by  publishdate asc;");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
                books.setId(rs.getInt("id"));
               books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
               books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list32.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list32;
    }
    
  //周三
    public ArrayList<Book> getAllBooks33(){
        ArrayList<Book> list33 = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from newsdb.books \n"
            		+ "having publish=\"周三\"\n"
            		+ "order by  publishdate asc;");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
                books.setId(rs.getInt("id"));
               books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
               books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list33.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list33;
    }
    
  //周四
    public ArrayList<Book> getAllBooks34(){
        ArrayList<Book> list34 = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from newsdb.books \n"
            		+ "having publish=\"周四\"\n"
            		+ "order by  publishdate asc;");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
                books.setId(rs.getInt("id"));
               books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
               books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list34.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list34;
    }
    
  //周五
    public ArrayList<Book> getAllBooks35(){
        ArrayList<Book> list35 = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from newsdb.books \n"
            		+ "having publish=\"周五\"\n"
            		+ "order by  publishdate asc;");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
                books.setId(rs.getInt("id"));
               books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
               books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list35.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list35;
    }
    
  //周六
    public ArrayList<Book> getAllBooks36(){
        ArrayList<Book> list36 = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from newsdb.books \n"
            		+ "having publish=\"周六\"\n"
            		+ "order by  publishdate asc;");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
                books.setId(rs.getInt("id"));
               books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
               books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list36.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list36;
    }
    
  //周日
    public ArrayList<Book> getAllBooks37(){
        ArrayList<Book> list37 = new ArrayList<Book>();
        Book books = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBGet.getConnection();
            pstmt = conn.prepareStatement("select * from newsdb.books \n"
            		+ "having publish=\"周日\"\n"
            		+ "order by  publishdate asc;");
            rs = pstmt.executeQuery();
            
            while (rs != null && rs.next()) {
                books = new Book();
               
                books.setId(rs.getInt("id"));
               books.setName(rs.getString("bookname"));
                books.setAuthor(rs.getString("author"));
                books.setIsbn(rs.getString("isbn"));
               books.setPublish(rs.getString("publish"));
                books.setPrice(rs.getFloat("price"));
                books.setBookresume(rs.getString("bookresume"));
                books.setPublishdate(rs.getString("publishdate"));

                list37.add(books);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DBGet.close(rs,pstmt,conn);
        }
        return list37;
    }
    
    public int delete(String id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int i = 0;
        try {
            conn = DBGet.getConnection();
      
            String sql = "delete from books where id=?";
            pstmt = conn.prepareStatement(sql);
        
            pstmt.setInt(1, Integer.parseInt(id));
            
            i = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBGet.close(pstmt,conn);
        }
        return i;
    }
}
