<%-- 
    Document   : addBook
    Created on : Jan 23, 2021, 3:52:46 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>addBook</title>
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
            <div class="header p-3 m-2 text-center h5 font-weight-bold">Add Book<a href="staffHomepage.jsp"><p style="text-align:right;">Homepage</p></a></div>            
        </div>
        <form method="post" action="AddBookServlet" enctype="multipart/form-data">
            <div class="container mt-2 w-25">
                <div class="d-flex flex-column">
                    <div class="py-3">Title</div>
                    <input type="text" name="title" value="" required />
                    <div class="py-3">Author</div>
                    <input type="text" name="author" value="" required/>                                                            
                    <div class="py-3">Quantity</div>
                    <input id="quantity" type="text" name="quantity" value="" onblur="toggleSection()" required/>
                    <div class="py-3">Section</div>
                    <input id="section" type="text" name="section" value="" required/>
                    <div class="py-3">Category</div>
                    <input type="text" name="category" value="" required/>
                    <div class="py-3">Image</div>
                    <input id="image" type="file" name="image" value="Browse" onchange="getFilePath()" required/>                    
                    <div class="d-flex justify-content-around mt-5">
                        <input type="submit" class="button rounded px-3 py-1 border-0" value="Cancel" />
                        <input type="submit" class="button rounded px-3 py-1 border-0" value="Add" />
                    </div>                
                </div>
            </div>
        </form>
        <script type="application/javascript">
            function toggleSection() {
                var quantity = document.getElementById("quantity").value;
                
                if(quantity == 0){                                        
                    document.getElementById("section").disabled = true;
                } else if(quantity > 0){                                        
                    document.getElementById("section").disabled = false;
                }
                
            }                        
        </script>
    </body>
</html>
