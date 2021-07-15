<%-- 
    Document   : addEbook
    Created on : Feb 1, 2021, 7:53:51 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>addEbook</title>
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
        </style>
    </head>
    <body>
        <div class="w-100">
            <div class="header p-3 m-2 text-center h5 font-weight-bold">Add e-Book<a href="staffHomepage.jsp"><p style="text-align:right;">Homepage</p></a></div>            
        </div>
        <form method="post" action="addEbookServlet" enctype="multipart/form-data">
            <div class="container mt-2 w-25">
                <div class="d-flex flex-column">
                    <div class="py-3">Title</div>
                    <input type="text" name="title" value="" />
                    <div class="py-3">Author</div>
                    <input type="text" name="author" value="" />                                                            
                    <div class="py-3">Image</div>
                    <input id="image" type="file" name="image" value="Browse"  /> 
                    <div class="py-3">PDF</div>
                    <input id="pdf" type="file" name="pdf" value="Browse"  />
                    <div class="py-3">Activation</div>
                    <select name="activation">
                        <option value="1">Enable</option>
                        <option value="0">Disable</option>
                    </select>
                    <div class="py-3">Comment</div>
                    <input type="text" name="comment" value="" />                    
                    <div class="d-flex justify-content-around mt-5">
                        <input type="submit" class="button rounded px-3 py-1 border-0" value="Cancel" />
                        <input type="submit" class="button rounded px-3 py-1 border-0" value="Add" />
                    </div>                
                </div>
            </div>
        </form>
        
    </body>
</html>

