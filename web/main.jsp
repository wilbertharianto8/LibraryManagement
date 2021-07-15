<%-- 
    Document   : main
    Created on : Dec 29, 2020, 12:36:46 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/mainStyle.css" />
        <title>Main Page</title>

    </head>
    <body>
        <header class="headerMenu">
            <h3>Library System</h3>
        </header>

        <ul>
            <li><a href="readEbook.jsp">Read E-Book</a></li>
            <li><a href="BorrowBook.jsp">Borrow Book</a></li>
            <li><a href="bookLibrary.jsp">MyLibrary</a></li>
            <li><a href="help.jsp">Help</a></li>
            <li><a href="index.html">Logout</a></li>
        </ul>
        <br><br>
        <div class="container">
            <a href="customerProfile.jsp"><img style="margin-left: 90%;width:50px;height:50px;" src="images/account.png" ></a>

        </div>
        <div class="container">
            <h1>Welcome to Library System</h1>
        </div>
        <div class="container">
            <img src="images/cloud.png" style="width:40%;">
            <div class="centered">
                <h2> Search your favorites book</h2><br>
                <form action="SearchServlet" method="get">
                    <input type="text" name="search" class="search" onkeyup="" style="height: 30px; border-radius: 10px;" placeholder="Search...">
                    <button type="submit"><img src="images/search.png"></button>
                </form>
            </div>
        </div>
    </body>
</html>
