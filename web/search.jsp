<%-- 
    Document   : search
    Created on : Jan 20, 2021, 2:00:42 AM
    Author     : ASUS
--%>

<%@page import="bean.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/mainStyle.css" />
        <title>Search Page Page</title>
        <style>
            img{
                width: 350px;          
            }
            p{
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <header class="headerMenu">
            <h3>Book Details<a href="main.jsp"><p style="text-align:right;">Homepage</p></a></h3>
        </header>
        <br><br>

        <h1>Your Book</h1>
        <hr>
        <table>
            <tr>                                    
                <%
                    ArrayList<Book> searchList = new ArrayList<Book>();
                    if(null != request.getAttribute("searchList")){
                        searchList = (ArrayList<Book>) request.getAttribute("searchList");                                            

                        for (int i = 0; i < searchList.size(); i++) {
                %>
                <td><img src="<%=searchList.get(i).getImage()%>"><td>
                <td>
                    <p>Title: <%=searchList.get(i).getTitle()%></p>
                    <p>Author: <%=searchList.get(i).getAuthor()%></p>
                    <p>Category: <%=searchList.get(i).getCategory()%></p>
                    <p>Section: <%=searchList.get(i).getSection()%></p>
                </td>
                <%
                        }
                    }
                %>                  
            </tr>
        </table>
    </body>
</html>
