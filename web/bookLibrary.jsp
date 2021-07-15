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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
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
            .td1{
                border-radius: 20px;
                height: 450px;
                width: 250px;
                text-align:center;
            }
             *{
                font-family: Times New Roman;                
            }

            .header{
                background-color: #ded2ab;
                font-size: 1.17em !important;
            }

            .button{
                background: #ded2a8;
            }

            .table .thead-dark th{
                background-color: #989898;
                border: none;
            }

         
           
            
           

           
        </style>

    </head>
    <body>
        <header class="headerMenu">
            <h3>My Library<a href="main.jsp"><p style="text-align:right;">Homepage</p></a></h3>
        </header>
        <br><br>
        <hr>
        <div class="container">
        <h3>e-Book Bookmarks</h3>
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
      
            <td class="td1"><img src="<%=result.getString("images")%>">
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
          </div><br><br>
        <hr>
          <div class="container">
              <h3>Borrow History</h3>
            <div class="row">               
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col" class="text-center">No</th>
                            <th scope="col" class="text-center">Title</th>
                            <th scope="col" class="text-center">Borrowed Date</th>
                            <th scope="col" class="text-center">Return Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            
                            try {
                                Class.forName(driver);
                                Connection con = DriverManager.getConnection(url, username, password);

                                String query = "select * from borrow where username = '"+ user+"'";
                                PreparedStatement st = con.prepareStatement(query);
                                ResultSet result = st.executeQuery();
                                int count = 1;
                
                                while (result.next()) {
                                    
                        %>
                        <tr id="row<%=count%>" class="bookRow" onfocus="toggleEdit('row<%=count%>', 'borrowNameList<%=count%>')">
                            <form id="form<%=count%>" method="post" action="activateServlet">
                                <th scope="row" class="align-middle">                                    
                                    <%=count%>
                                </th>
                                <input type="hidden" name="user" value="<%=result.getString("username")%>" />
                                <td class="align-middle">
                                    <p class="m-0"><%=result.getString("borrowNameList")%></p>                                                             
                                </td>
                                <td class="align-middle text-center">
                                    <p><%=result.getString("borrowDate")%></p>                                    
                                </td>
                                <td class="align-middle text-center">
                                    <p><%=result.getString("returnDate")%></p>                                    
                                </td>
                            </form>
                            </tr>                        
                            <%
                                        count++;
                                    }
                                    st.close();
                                    con.close();
                                } catch (ClassNotFoundException ex) {

                                }
                            %>
                    </tbody>
                </table>                
            </div>            
        </div>    
    </body>
</html>
