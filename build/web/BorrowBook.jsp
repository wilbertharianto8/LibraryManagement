<%-- 
    Document   : Borrow E-Book
    Created on : Jan 16, 2021, 11:30:42 AM
    Author     : WILBERT
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.Book"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrow E-Book</title>
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

            img{
                width: 122px;
                height: 150px;
            }

            .hover:hover:enabled{
                background: #ded2ab;
                font-weight: bold;
                color: #6e5439;
            }
        </style>
    </head>
    <body>
        <div class="w-100">
            <div class="border border-dark border-bottom-0 header p-3 mx-2 mb-0 text-center h5 font-weight-bold">Borrow E-Book<a href="main.jsp"><p style="text-align:right;">Homepage</p></a></div>            
        </div>
        <div class="text-center h3 font-weight-bold w-100">
        </div>  
        <div class="contentBox d-table w-100">
            <div class="d-table-cell align-middle">
                <div class="menuRow container d-flex justify-content-around text-center">
                    <%
                        String driver = "com.mysql.jdbc.Driver";
                        String dbName = "library";
                        String url = "jdbc:mysql://localhost/" + dbName + "?";
                        String username = "root";
                        String password = "";

                        try {
                            Class.forName(driver);
                            Connection con = DriverManager.getConnection(url, username, password);

                            String query = "select distinct title,image,(title=borrowNameList) as borrowed from book left join borrow on title=borrowNameList and username = '" + session.getAttribute("username") + "';";
                            PreparedStatement st = con.prepareStatement(query);
                            ResultSet result = st.executeQuery();

                            while (result.next()) {                                
                    %>
                    <div class="w-25 text-center">
                        <img class="img1 my-3" src="<%=result.getString("image")%>" />                
                    </div>    
                    <%
                            }
                    %>
                </div>
                <div class="menuRow container d-flex justify-content-around text-center">                        
                    <%                        
                            result.beforeFirst();
                            String borrowText = "";
                            while (result.next()) {                            
                                if (result.getBoolean("borrowed") == true) {
                                    borrowText = "Borrowed";
                                } else {
                                    borrowText = "Borrow";
                                }
                    %>
                    <div class="d-flex flex-column w-25">
                        <form method="post" action="BorrowServlet">                                
                            <input type="hidden" name="title" value="<%=result.getString("title")%>" />                            
                            <input type="submit" class="button rounded px-3 py-1 border-0 hover" value="<%=borrowText%>"                                                                
                                   <% 
                                       if (borrowText.equals("Borrowed")) {
                                            out.print("disabled");
                                        } 
                                   %>
                            />                                                       
                        </form>
                    </div>
                    <%
                        }
                    %>
                </div>
                <%
                        st.close();
                        con.close();
                    } catch (ClassNotFoundException ex) {

                    }
                %>                       
            </div>            
        </div>
    </body>
</html>
