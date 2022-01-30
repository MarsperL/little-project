package Servlet;

import JavaBean.Book;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@SuppressWarnings("serial")
@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset = utf-8");
        PrintWriter out = response.getWriter();
        BookService service = new BookServiceImpl();
        @SuppressWarnings("unused")
		List<Book> lists = service.list();
        
       
        out.flush();
        out.close();
    }
}
