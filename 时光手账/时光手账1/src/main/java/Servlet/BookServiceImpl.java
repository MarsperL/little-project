package Servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dao.DBUtils;
import JavaBean.Book;

public class BookServiceImpl implements BookService {

    public List<Book> list() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Book> list = new ArrayList<Book>();
        try {
            conn = DBUtils.getConnectDb();
            String sql = "select * from books";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Book book = new Book();
                book.setId(rs.getInt(1));
                book.setName(rs.getString(2));
                book.setAuthor(rs.getString(3));
                book.setPublish(rs.getString(4));
                book.setIsbn(rs.getString(5));
                book.setPrice(rs.getFloat(6));
                book.setBookresume(rs.getString(7));
                book.setPublishdate(rs.getString(8));
                list.add(book);
            }
        } catch (SQLException e) {

        } finally {
            DBUtils.close(rs, ps, conn);
        }
        return list;
    }

}