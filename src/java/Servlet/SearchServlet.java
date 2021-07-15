/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import bean.Book;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author USER
 */
public class SearchServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {                
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "library";
        String url = "jdbc:mysql://localhost/" + dbName;
        String username = "root";
        String password = "";             
        
        response.setContentType("text/html;charset=utf-8");
            response.getWriter().write(request.getParameter("search"));
        
        try {
            Class.forName(driver);

            Connection con = DriverManager.getConnection(url, username, password);
                        
            String searchKey = request.getParameter("search");
            String query = "select title,author,image,category,section from book where title like ? or author like ? or category like ?";
            PreparedStatement st = con.prepareStatement(query);
            st.setString(1, "%" + searchKey + "%");
            st.setString(2, "%" + searchKey + "%");
            st.setString(3, "%" + searchKey + "%");
            ResultSet result = st.executeQuery();
            ArrayList<Book> searchList = new ArrayList<Book>();     
            
            if (result.next()) {                
                Book search = new Book();
                search.setTitle(result.getString("title"));
                search.setAuthor(result.getString("author"));
                search.setImage(result.getString("image"));
                search.setCategory(result.getString("category"));
                search.setSection(result.getString("section"));
                searchList.add(search);                                
            }                
            
            request.setAttribute("searchList", searchList);

            st.close();
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        RequestDispatcher rd = request.getRequestDispatcher("/search.jsp");
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
