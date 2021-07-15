<%-- 
    Document   : staffHomepage
    Created on : Jan 19, 2021, 2:33:18 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/mainStyle.css" />
        <title>Staff Main Page</title>
         <style>
            table{
                margin-left: auto; 
                margin-right: auto;
                border-collapse: separate;
                border-spacing: 100px 100px;
                
            }
            td{
                border: 5px solid #ded2ab;
                border-radius: 20px;
                height: 300px;
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
        <header class="headerMenu">
            <h3>Library System<a href="index.html"><p style="text-align:right;">Logout</p></a></h3>
        </header>
        <br><br><br>
        <div class="container">
            <a href="profile.jsp"><img style="margin-left: 90%;width:50px;height:50px;" src="images/account.png" ></a>
            
        </div>
        
        <table>
            <tr><td><a href="BorrowReport.jsp"><img src="images/bookReport.png" ><p>Borrow Report</p></a></td>
                <td><a href="ebookStaff.jsp"><img src="images/ebookReport.png" ><p>Ebook Management</p></a></td>
                <td><a href="management.jsp"><img src="images/bookManage.png" ><p>Book Management</p></a></td>
            </tr>
            
        </table>
            
    </body>
</html>
