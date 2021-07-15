<%-- 
    Document   : Borrow Report
    Created on : Jan 16, 2021, 11:30:42 AM
    Author     : WILBERT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrow Report</title>
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
        <div class="text-center h3 font-weight-bold w-100">
        </div>
        <div class="contentBox d-table w-100">
            <div class="d-table-cell">
                <div class="menuRow container text-center">
                    <center><table style="background-color:#FFFFE0;" >
                            <tr style="background-color:#BDB76B;color:#ffffff;">
                                <th>Book Title</th><th>Book Author</th><th>Total Borrowed</th><th>Date Borrowed</th><th>Last Return</th><th>Total in Store</th>
                            </tr>
                            <tr>
                                <td>The Holy Word for Morning Revival</td><td>Witness Lee</td><td>3</th><th>3/01/2021</th><th>18/01/2021</th><th>2</th>
                            </tr>
                            <tr>
                                <td>Midnight Sun</td><td>Stephenie Meyer</td><td>0</th><th>-</th><th>-</th><th>1</th>
                            </tr>
                            <tr>
                                <td>How to Deal with Haters</td><td>Deepak Gupta</td><td>12</th><th>5/01/2021</th><th>21/01/2021</th><th>14</th>
                            </tr>
                        </table>
                    </center>
                </div>
            </div>            
        </div>
    </body>
</html>
