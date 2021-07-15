<%-- 
    Document   : deleteBook
    Created on : Jan 24, 2021, 11:16:56 PM
    Author     : USER
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>deleteBook</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
        <style>
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

            img:not(.btn){
                width: 100px;
                height: 160px;
            }

            .btn{
                width: 60px;
            }

            textarea {                
                resize: none;
            }            

            textarea, input{
                border: none;
            }

            .edit textarea, .edit input{
                border: 1px solid #000;
            }            
        </style>
    </head>
    <body>
        <div class="w-100 mb-5">
            <div class="header p-3 m-2 text-center h5 font-weight-bold">Delete Book<a href="staffHomepage.jsp"><p style="text-align:right;">Homepage</p></a></div>            
        </div>
        <div class="container">
            <div class="row">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col" class="text-center">No</th>
                            <th scope="col" class="text-center">Image</th>
                            <th scope="col" class="text-center">Title</th>
                            <th scope="col" class="text-center">Author</th>
                            <th scope="col" class="text-center">Quantity</th>
                            <th scope="col" class="text-center">Section</th>
                            <th scope="col" class="text-center">Category</th>
                            <th scope="col" class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            String driver = "com.mysql.jdbc.Driver";
                            String dbName = "library";
                            String url = "jdbc:mysql://localhost/" + dbName + "?";
                            String username = "root";
                            String password = "";

                            try {
                                Class.forName(driver);
                                Connection con = DriverManager.getConnection(url, username, password);

                                String query = "select * from book";
                                PreparedStatement st = con.prepareStatement(query);
                                ResultSet result = st.executeQuery();
                                int count = 1;

                                while (result.next()) {
                        %>
                        <tr id="row<%=count%>" class="bookRow" onfocus="toggleEdit('row<%=count%>', 'title<%=count%>')">
                    <form id="form<%=count%>" method="post" action="DeleteBookServlet">
                        <th scope="row" class="align-middle">                                    
                            <%=count%>
                        </th>
                        <input type="hidden" name="id" value="<%=result.getString("bookId")%>" />
                        <td class="imgCell text-center">
                            <img id="image<%=count%>" src="<%=result.getString("image")%>" alt="image" />                                                                                                                                      
                        </td>
                        <td class="align-middle">
                            <textarea id="title<%=count%>" name="title"><%=result.getString("title")%></textarea>                                                             
                        </td>
                        <td class="align-middle">
                            <input id="author<%=count%>" class="text-center" type="text" name="author" value="<%=result.getString("author")%>" />                                    
                        </td>
                        <td class="align-middle">
                            <input id="quantity<%=count%>" class="text-center" type="text" name="quantity" value="<%=result.getString("quantity")%>" />                                    
                        </td>
                        <td class="align-middle">
                            <input id="section<%=count%>" class="text-center" type="text" name="section" value="<%=result.getString("section")%>" />                                    
                        </td>
                        <td class="align-middle">
                            <input id="category<%=count%>" class="text-center" type="text" name="category" value="<%=result.getString("category")%>" />                                    
                        </td>
                        <td class="align-middle">
                            <a href="#" onclick="submit('form<%=count%>', '<%=count%>')">
                                <img id="submitBtn<%=count%>" class="btn submitBtn" src="images/delete.png" />                                        
                            </a>                                    
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
        <script type="application/javascript">
            function submit(form,count){
                if (confirm('Are you sure you want to delete this book?')) {
                  document.getElementById(form).submit();
                }
            } 
        </script>
    </body>
</html>
