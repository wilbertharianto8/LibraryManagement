<%-- 
    Document   : Borrow E-Book
    Created on : Jan 16, 2021, 11:30:42 AM
    Author     : WILBERT
--%>

<%@page import="bean.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Book Receipt</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
        <style>
            *{
                font-family: Times New Roman;                
            }

            .header{
                background-color: #ded2ab;
                font-size: 1.17em !important;
            } 

            .bannerText{
                color: #616161;
                height: 200px;
                background: rgb(222,210,168);
                background: radial-gradient(circle, rgba(222,210,168,1) 9%, rgba(240,240,240,1) 94%);
            }

            .contentBox{
                height: 300px;
            }
        </style>
    </head>
    <body>
        <div class="w-100">
            <div class="border border-dark border-bottom-0 header p-3 mx-2 mb-0 text-center h5 font-weight-bold">E-Book Receipt<a href="main.jsp"><p style="text-align:right;">Homepage</p></a></div>            
        </div>
        <div class="text-center h3 font-weight-bold w-100">
        </div>  
        <div class="contentBox d-table w-100">
            <div class="d-table-cell">
                <div class="menuRow container text-center">
                    <b>Auto Generated</b><br><br>
                    <b>Official Receipt</b><br>
                    <%
                        Calendar calendar = Calendar.getInstance();
                        Calendar calendar2 = Calendar.getInstance();
                        calendar2.add(Calendar.WEEK_OF_YEAR, 1);
                        String todayDate = new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime());
                        String returnDate = new SimpleDateFormat("yyyy-MM-dd").format(calendar2.getTime());
                    %>
                    Date: <%=todayDate%>
                    <center>
                        <table style="background-color:#FFFFE0;" >
                            <tr style="background-color:#BDB76B;color:#ffffff;">
                                <th>Book Title</th><th>Book Author</th>
                            </tr>
                            
                                <%
                                    String user = (String) session.getAttribute("username");
                                    String driver = "com.mysql.jdbc.Driver";
                                    String dbName = "library";
                                    String url = "jdbc:mysql://localhost/" + dbName + "?";
                                    String username = "root";
                                    String password = "";
                                    int count = 0;

                                    try {
                                        Class.forName(driver);
                                        Connection con = DriverManager.getConnection(url, username, password);

                                        String query = "select distinct title,image,author,(title=borrowNameList) as borrowed from book,borrow where title=borrowNameList and username = '" + user + "';";
                                        PreparedStatement st = con.prepareStatement(query);
                                        ResultSet result = st.executeQuery();
                                        
                                        while(result.next()){
                                            count++;
                                %>
                            <tr>
                                <td><%=result.getString("title")%></td>                                                                                                              
                                <td><%=result.getString("author")%></td>  
                            </tr> 
                                <%
                                    }
                                        st.close();
                                        con.close();
                                    }catch (ClassNotFoundException ex) {

                                    }
                                %>
                                                       
                            <tr>
                                <td>Number of Books:</td><td><%=count%></td>
                            </tr>
                            <tr>
                                <td>Date to Return:</td><td><%=returnDate%></td>
                            </tr>
                        </table>
                    </center>
                </div>
            </div>            
        </div>
    </body>
</html>
