<%-- 
    Document   : bookLibrary
    Created on : Jan 20, 2021, 2:17:29 AM
    Author     : ASUS
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/mainStyle.css" />
        <title>Book Library Page</title>
        <style>
            .topnav {
                overflow: hidden;
                background-color: #fff;
                color: black;
              }

              .topnav a {
                float: left;
                color: black;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
              }

              .topnav a:hover {
                background-color: #ded2ab;
                color: white;
              }

              .topnav a.active {
                background-color: #ded2ab;
                color: white;
              }
            img{
                width: 90%;          
                }
            p{
                font-size: 20px;
            }
            table{  
                border-collapse: separate;
      
                
            }
            td{
                border-radius: 20px;
                height: 450px;
                width: 250px;
                text-align:center;
            }
        </style>

    </head>
    <body>
        <header class="headerMenu">
            <h3>My Library<a href="main.jsp"><p style="text-align:right;">Homepage</p></a></h3>
        </header>
        <br><br><br><br><br>
        <hr>
         <table>
            <tr>
         <%
                            String user = (String) session.getAttribute("username");
                            String driver = "com.mysql.jdbc.Driver";
                            String dbName = "library";
                            String url = "jdbc:mysql://localhost/" + dbName + "?";
                            String username = "root";
                            String password = "";

                            try {
                                Class.forName(driver);
                                Connection con = DriverManager.getConnection(url, username, password);

                                String query = "select * from mylibrary,ebook where mylibrary.ebookID=ebook.ebookID and username='"+ user+"'";
                                PreparedStatement st = con.prepareStatement(query);
                                ResultSet result = st.executeQuery();
                                int count = 1;

                                while (result.next()) {
                                  
                         %>
      
       <td><img src="<%=result.getString("images")%>">
                <p><%=result.getString("title")%></p>
                <p><%=result.getString("author")%></p>
                <a href="<%=result.getString("pdf")%>">Read Now</a>
            </td>
           
         <%
                                        count++;
                                    }
                                    st.close();
                                    con.close();
                                } catch (ClassNotFoundException ex) {

                                }
             %>
          </tr>
        </table>     
    </body>
</html>
