<%-- 
    Document   : searchlibrary
    Created on : Jan 19, 2021, 10:47:39 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/mainStyle.css" />
        <title>search a book</title>
        <style>
            .dropdown {
                float: left;
                overflow: hidden;
              }
            .dropdown .dropbtn {
              font-size: 16px;  
              border: none;
              outline: none;
              color: white;
              padding: 14px 16px;
              background-color: inherit;
              font-family: inherit;
              margin: 0;
            }

            .navbar a:hover, .dropdown:hover .dropbtn {
              background-color: grey;
            }

            .dropdown-content {
              display: none;
              position: absolute;
              background-color: #f9f9f9;
              min-width: 160px;
              box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
              z-index: 1;
            }

            .dropdown-content a {
              float: none;
              color: black;
              padding: 12px 16px;
              text-decoration: none;
              display: block;
              text-align: left;
            }

            .dropdown-content a:hover {
              background-color: #ddd;
            }

            .dropdown:hover .dropdown-content {
              display: block;
            }
          *{box-sizing: border-box;}
          
           body {
             margin: 0;
             font-family: Arial, Helvetica, sans-serif;
           }

           .topnav {
             overflow: hidden;
             background-color: #ded2ab;
           }

           .topnav a {
             float: left;
             display: block;
             color: black;
             text-align: center;
             padding: 14px 16px;
             text-decoration: none;
             font-size: 17px;
           }

           .topnav a.active {
             background-color: #ded2ab;
             color: white;
           }

           .topnav .search-container {
             float: right;
           }

           .topnav input[type=text] {
             padding: 6px;
             margin-top: 8px;
             font-size: 17px;
             border: none;
           }

           .topnav .search-container button {
             float: right;
             padding: 6px;
             margin-top: 8px;
             margin-right: 16px;
             background: #ddd;
             font-size: 17px;
             border: none;
             cursor: pointer;
           }

           .topnav .search-container button:hover {
             background: #ccc;
           }

           @media screen and (max-width: 600px) {
             .topnav .search-container {
               float: none;
             }
             .topnav a, .topnav input[type=text], .topnav .search-container button {
               float: none;
               display: block;
               text-align: left;
               width: 100%;
               margin: 0;
               padding: 14px;
             }
             .topnav input[type=text] {
               border: 1px solid #ccc;  
             }
           }
            table{
                margin-left: auto; 
                margin-right: auto;
                border-collapse: separate;
                border-spacing: 100px 100px;
                
            }
            td{
                border: 5px solid #ded2ab;
                border-radius: 20px;
                height: 450px;
                width: 250px;
                text-align:center;
            }
            img{
                width: 90%;          
            }
            p{
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <div class="topnav">
            <a class="active" href="#home">Read a Book<a href="main.jsp"><p style="text-align:right;">Homepage</p></a></a>
            <div class="dropdown">
                <button class="dropbtn">Genre 
                  <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                  <a href="#">Fiction</a>
                  <a href="#">Sci-Fiction</a>
                  <a href="#">Horror</a>
                  <a href="#">Fantasy</a>
                </div>
             </div> 
            <div class="search-container">
              <form action="/action_page.php">
                <input type="text" placeholder="Search.." name="search">
                <button type="submit">Go</button>
              </form>
            </div>
         </div>
        </header>
        <table>
            <tr><td><img src="images/book1.jfif" ><p>The Holy Word for Morning Revival</p><i>Witness Lee</i><br>
                <input type="button" value="Read"><input type="button" value="Store in library"></td>
                <td><img src="images/book2.jfif" ><p>Midnight Sun</p><i>Stephenie Meyer</i><br>
                <input type="button" value="Read"><input type="button" value="Store in library"></td>
                <td><img src="images/book3.jfif" ><p>How To Deal With Haters</p><i>Deepak Gupta</i><br>
                <input type="button" value="Read"><input type="button" value="Store in library"></td>
                <td><h2>Coming Soon</h2></td>
            </tr>
            <tr><td><h2>Coming Soon</h2></td>
                <td><h2>Coming Soon</h2></td>
                <td><h2>Coming Soon</h2></td>
                <td><h2>Coming Soon</h2></td>
            </tr>
        </table>
        <div class ="Search input">
            <a href="" target="_blank" hidden></a>             
            <input type="text" placeholder="type to Search..">
            <div class="auto-com-box"
                 <!--Inser Javascript-->
            </div>
            <div class="icon"><i class=""></i>
            </div>    
        </div>
    </body>
</html>
