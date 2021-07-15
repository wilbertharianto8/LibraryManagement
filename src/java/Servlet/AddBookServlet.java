/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import bean.Customer;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;

/**
 *
 * @author USER
 */
@MultipartConfig(maxFileSize = 16177215)
public class AddBookServlet extends HttpServlet {

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
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String username = "root";
        String password = "";
        String query = "INSERT INTO book(title,author,quantity,image,section,category) VALUES(?,?,?,?,?,?);";
 
        try {
            Class.forName(driver);

            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement st = con.prepareStatement(query);            

            st.setString(1, request.getParameter("title"));
            st.setString(2, request.getParameter("author"));
            st.setString(3, request.getParameter("quantity"));

            InputStream inputStream = null;
            ServletContext context = request.getServletContext();
            
            Part filePart = request.getPart("image");
            
            String imagePath = getServletContext().getRealPath("/");
            imagePath = imagePath.replaceAll("\\\\", "/");
            imagePath = imagePath + "images/Book/"+filePart.getSubmittedFileName();
            
            if (filePart != null) {
                inputStream = filePart.getInputStream();
                File targetFile = new File(imagePath);
                OutputStream outStream = new FileOutputStream(targetFile);
                copy(inputStream, outStream);
            }

            st.setString(4, "images/Book/"+filePart.getSubmittedFileName());
            st.setString(5, request.getParameter("section"));
            st.setString(6, request.getParameter("category"));

            st.executeUpdate();
            st.close();
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        RequestDispatcher rd = request.getRequestDispatcher("/management.jsp");
        rd.forward(request, response);
    }

    public void copy(InputStream inputStream, OutputStream outStream) throws IOException {
        byte[] buf = new byte[8192];
        int length;
        while ((length = inputStream.read(buf)) > 0) {
            outStream.write(buf, 0, length);
        }
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
