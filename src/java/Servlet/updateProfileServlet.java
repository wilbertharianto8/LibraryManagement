/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
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
public class updateProfileServlet extends HttpServlet {
    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/library";
    String user = "root";
    String psw = "";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");    
        String userType = request.getParameter("userType");                
        String redirect = "";
        
        if(userType.equals("customer")){
            redirect = "/customerProfile.jsp";
        }else if(userType.equals("staff")){
            redirect = "/profile.jsp";
        }
        
        
        if (id != null) {
            Connection con = null;
            PreparedStatement ps = null;
            try {
                Class.forName(driverName);
                con = DriverManager.getConnection(url, user, psw);
                String sql = "Update " + userType + " set username=?,fullname=?,email=?,address=?, phone=? where staffId=?";
                ps = con.prepareStatement(sql);
                ps.setString(1, username);
                ps.setString(2, fullname);
                ps.setString(3, email);
                ps.setString(4, address);
                ps.setString(5, phone);
                ps.setString(6, id);
                int i = ps.executeUpdate();
                if (i > 0) {
                    out.print("Record Updated Successfully");
                    HttpSession session = request.getSession(true);
                    session.setAttribute("username", username);                    
                    response.sendRedirect(request.getContextPath() + redirect);
                } else {
                    out.print("There is a problem in updating Record.");
                }
            } catch (SQLException sql) {
                request.setAttribute("error", sql);
                out.println(sql);
                out.print(sql);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(updateProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
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
