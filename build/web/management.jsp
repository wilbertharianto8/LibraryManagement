<%-- 
    Document   : management
    Created on : Jan 4, 2021, 4:50:43 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
        <style>
            *{
                font-family: Times New Roman;                
            }

            .header{
                background-color: #ded2ab;
                font-size: 1.17em !important;
            }            

            .row{
                background: #fafafa;
                height: 500px;
            }

            img{
                width: 454px;
                height: 214px;
            }

            .menuCard{
                width: 170px;
                height: 180px;
                background-color: #fff;                
            }

            .shadow{
                box-shadow: rgba(0, 0, 0, 0.2) 0px 0px 5px 0px;
            }

            .menuRow{
                top: 64%;  
                left: calc( 38% - 359px );
            }

            .menuText{
                font-size: 13px;
            }
        </style>
    </head>
    <body>
        <div class="w-100">
            <div class="header p-3 m-2 text-center h5 font-weight-bold">Book Management</div>            
        </div>
        <div class="container">
            <div class="container d-flex justify-content-center mt-3">
                <div class="row d-table p-3 pb-5 shadow w-100">
                    <div class="col h2 w-50 text-center font-weight-bold d-table-cell align-middle">Book Management</div>
                    <div class="image col d-table-cell align-middle"><img src="images/management/book.jpg" /></div>
                </div>            
            </div>            
            <div class="menuRow container d-flex justify-content-center position-absolute">
                <div class="d-flex justify-content-around w-100">
                    <a href="addBook.jsp" class="menuCard border p-2 text-dark shadow">
                        <div class="h5 pb-2">Add Book</div>
                        <div class="menuText">Add a new book details(book title, author, section, type)</div>                
                    </a>  
                    <a href="editBook.jsp" class="menuCard border p-2 text-dark shadow">
                        <div class="h5 pb-2">Edit Book</div>
                        <div class="menuText">Edit existing book details(book title, author, section, type)</div>                
                    </a>
                    <a href="deleteBook.jsp" class="menuCard border p-2 text-dark shadow">
                        <div class="h5 pb-2">Remove Book</div>
                        <div class="menuText">Remove selected book from library</div>                
                    </a>
                </div>            
            </div>
        </div>        
    </body>
</html>
