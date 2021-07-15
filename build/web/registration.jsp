<%-- 
    Document   : registration
    Created on : Jan 4, 2021, 8:58:51 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
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
            <div class="header p-3 m-2 text-center h5 font-weight-bold">User Registration</div>            
        </div>
        <form method="post" action="registrationController.jsp">
            <div class="container mt-2 w-25">
                <div class="d-flex flex-column">
                    <div class="py-3">Username</div>
                    <input type="text" name="custUsername" value="" />
                    <div class="py-3">Full Name</div>
                    <input type="text" name="custFullname" value="" />
                    <div class="py-3">Email</div>
                    <input type="email" name="custEmail" value="" />
                    <div class="py-3">Address</div>
                    <input type="text" name="custAddress" value="" />
                    <div class="py-3">Password</div>
                    <input type="password" name="custPassword" value="" />
                    <div class="py-3">Phone Number</div>
                    <input type="phone" name="custPhone" value="" />
                    <div class="d-flex justify-content-around mt-5">
                        <input type="submit" class="button rounded px-3 py-1 border-0" value="Cancel" />
                        <input type="submit" class="button rounded px-3 py-1 border-0" value="Register" />
                    </div>                
                </div>
            </div>
        </form>
    </body>
</html>
