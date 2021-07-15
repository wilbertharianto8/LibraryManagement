/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import bean.Staff;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Najihah Zanudin
 */
@WebServlet(name = "userLogin", urlPatterns = {"/userLogin"})
public class userLogin extends HttpServlet {

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
        String userType = request.getParameter("userType");
        String query = "";
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "library";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String username = "root";
        String password = "";
        String msg = "Login Fail";
        String user = request.getParameter("username");
        String pwd = request.getParameter("password");
        String forward1 = "";
        String forward2 = "";
        
        if(userType.equals("customer")){
            forward1 = "login.jsp";
            forward2 = "main.jsp";
        }else if(userType.equals("staff")){
            forward1 = "staffLogin.jsp";
            forward2 = "staffHomepage.jsp";
        }
        

        try {
            Class.forName(driver);
            HttpSession session = request.getSession(true);
            Connection con = DriverManager.getConnection(url, username, password);

            query = "SELECT username, password FROM " + userType + " WHERE username = ? AND password = ?";
            PreparedStatement st = con.prepareStatement(query);

            st.setString(1, user);
            st.setString(2, request.getParameter("password"));

            ResultSet result = st.executeQuery();

            if (result.next()) {
                msg = "Login Success";
            } else {
                msg = "Login Fail";
            }

            response.setContentType("text/html");
            PrintWriter pw = response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('" + msg + "');");
            pw.println("</script>");
            RequestDispatcher rd = request.getRequestDispatcher(forward1);
            rd.include(request, response);
           
            if (msg == "Login Success") {
                session.setAttribute("username", user);
                rd = request.getRequestDispatcher(forward2);
                rd.forward(request, response);
            }
            
            st.close();
            con.close();
        } catch (ClassNotFoundException ex) {
            
        } catch (SQLException ex) {
            
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
