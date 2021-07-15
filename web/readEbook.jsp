<%-- 
    Document   : readEbook
    Created on : Jan 4, 2021, 10:02:08 PM
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
        <link rel="stylesheet" type="text/css" href="css/mainStyle.css" 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
        <title>Read Ebook Page</title>
        <style>
            table{
                border-collapse: separate;
                border-spacing: 0px 30px;
                margin-left: 10%;
                margin-right: auto;
                
            }
         
            td{ 
                border-bottom:  5px solid #ded2ab;
                width: 460px;
                text-align:center;
            }
            img{
                width: 40%;          
            }
            p{
                font-size: 20px;
            }
             .button{
                background: #ded2a8;
            }
            .comment{
                color:red;
            }
        </style>
    </head>
    <body>
        <header class="headerMenu">
            <h3>Read E-Book<a href="main.jsp"><p style="text-align:right;">Homepage</p></a></h3>                       
            
        </header>
        
        <table>
             <%
                            String driver = "com.mysql.jdbc.Driver";
                            String dbName = "library";
                            String url = "jdbc:mysql://localhost/" + dbName + "?";
                            String username = "root";
                            String password = "";

                            try {
                                Class.forName(driver);
                                Connection con = DriverManager.getConnection(url, username, password);

                                String query = "select * from ebook";
                                PreparedStatement st = con.prepareStatement(query);
                                ResultSet result = st.executeQuery();
                                int count = 1;

                                while (result.next()) {
                                  
                         %>
            <tr>
            <form method="post" action="AddMyLibraryServlet">
                <%
                                        String activation = result.getString("activation");
                                        String disabledText = "";
                                        
                                        if(activation.equals("1")){
                                            disabledText = "";
                                        } else if(activation.equals("0")){
                                            disabledText = "disabled";
                                        }
                %>
                
                <td ><img src="<%=result.getString("images")%>" ></td>
                <td>
                    <input type="hidden" name="id" value="<%=result.getString("ebookID")%>">
                    <p name="title"><%=result.getString("title")%></p><i><%=result.getString("author")%></i><br><br>
                <a href="<%=result.getString("pdf")%>">
                    <input id="readBook" type="button" class="button rounded px-3 py-1 border-0" value="Read" <%=disabledText%>/></a>
                    <input id="store" type="submit" class="button rounded px-3 py-1 border-0" value="Store in library" <%=disabledText%>/><br>
                    <p class="comment"><%=result.getString("reason")%></p>
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
        </table>
    
    </body>
</html>
