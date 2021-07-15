/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import bean.Book;
import bean.Customer;
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
import java.util.StringTokenizer;
import java.util.Vector;
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
public class BorrowServlet extends HttpServlet {

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
        HttpSession session = request.getSession(true);
        String user = (String) session.getAttribute("username");
        String title = (String) request.getParameter("title");

        String driver = "com.mysql.jdbc.Driver";
        String dbName = "library";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String username = "root";
        String password = "";
        String timeStampDate = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());        

        try {
            Class.forName(driver);

            Connection con = DriverManager.getConnection(url, username, password);
            

            

            String query = "INSERT INTO `borrow`(`username`, `borrowNameList`, `borrowDate`, `returnDate`) VALUES ('" + user + "','" + title + "',CURRENT_TIMESTAMP,DATE_ADD(now(),INTERVAL 1 WEEK));";
            PreparedStatement st = con.prepareStatement(query);            
            st = con.prepareStatement(query);
            st.executeUpdate();

            query = "select title,image,author,(title=borrowNameList) as borrowed from book,borrow where title=borrowNameList and username = '" + user + "';";
            st = con.prepareStatement(query);
            ResultSet result = st.executeQuery();
            List borrowList = new ArrayList<Book>();            

            while (result.next()) {                
                Book borrow = new Book();
                borrow.setTitle(result.getString("title"));
                borrow.setTitle(result.getString("author"));
                borrowList.add(borrow);
            }

            session.setAttribute("borrowList", borrowList);

            st.close();
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        RequestDispatcher rd = request.getRequestDispatcher("/Receipt.jsp");
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
