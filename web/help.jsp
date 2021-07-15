<%-- 
    Document   : help
    Created on : Jan 4, 2021, 6:37:35 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>help</title>
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

            .img1{
                width: 122px;
                height: 120px;
            }

            .img2{
                width: 108px;
                height: 108px;
            }

            .img3{
                width: 128px;
                height: 128px;
            }

            .contentBox{
                height: 300px;
            }
        </style>
    </head>
    <body>
        <div class="w-100">
            <div class="border border-dark border-bottom-0 header p-3 mx-2 mb-0 text-center h5 font-weight-bold">Help Center<a href="main.jsp"><p style="text-align:right;">Homepage</p></a></div>            
        </div>
        <div class="text-center h3 font-weight-bold w-100">
            <div class="border border-dark bannerText align-middle mx-2">
                <div class="d-table w-100 h-100">
                    <div class="d-table-cell align-middle">What could we help you?</div>                        
                </div>
            </div>
        </div>  
        <div class="contentBox d-table w-100">
            <div class="d-table-cell align-middle">
                <div class="menuRow container d-flex justify-content-around text-center">
                    <div class="w-25 text-center">
                        <img class="img1" src="images/help/help3.png" />                
                    </div>            
                            
                </div>
                <div class="menuRow container d-flex justify-content-around text-center">
                    <div class="d-flex flex-column w-25">
                        <a href="#" class="h5">Navigation</a>
                    </div>            
                             
                </div>
                <div class="menuRow container d-flex justify-content-around text-center">
                <video width="1000" controls>
                        <source src="Video/help.mp4" type="video/mp4">
            
                   </video> 
                    
                 </div>
            </div>            
        </div>
    </body>
</html>
