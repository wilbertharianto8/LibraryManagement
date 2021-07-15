<%-- 
    Document   : login
    Created on : Jan 4, 2021, 9:20:41 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>staffLogin</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
        <style>
            *{
                font-family: Times New Roman;                
            }

            .header{
                background-color: #ded2ab;
                font-size: 1.17em !important;
            }

            img{
                width: 108px;
                height: 108px;
                border: 1px solid #757575;
            }

            .content{
                height: 500px;
            }          
            
            .button{
                background: #ded2a8;
                width: 80px;
            }
            
            .field{
                width: 250px;
            }
            
            .forgot{
                font-size: 13px;
            }
        </style>
    </head>
    <body>
        <form method="post" action="userLogin">
            <div class="w-100">
                <div class="header p-3 mx-2 mt-2 mb-5 text-center h5 font-weight-bold">Login</div>            
            </div>
            <div class="d-table w-100 content mt-5">
                <div class="d-table-cell align-middle">
                    <div class="d-flex flex-column">
                        <img class="align-self-center rounded-circle" src="images/login/icon.jpg" alt=""/>   
                        <input class="field align-self-center mt-5" type="text" name ="username" value="" placeholder="Username" />
                        <input class="field align-self-center mt-4" type="password" name ="password" value="" placeholder="Password" />
                        <input class="align-self-center button border rounded mt-5 mb-5 py-1" type="submit" value="Login" />
                        <input type="hidden" name="userType" value="staff" />
                        <a href="index.html" class="forgot align-self-center font-italic mt-5 text-dark">Not a Staff?</a>
                        <a href="staffRegistration.jsp" class="forgot align-self-center font-italic mt-5 text-dark">Don't have account?</a>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
