<%-- 
    Document   : profile
    Created on : Jan 4, 2021, 11:14:16 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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

            img{
                width: 100px;
                height: 100px;      
                border: 1px solid #757575;
            }

            .profileText{
                height: 100px;
            }

            .button{
                background: #ded2a8;
                width: 80px;
            }

            .emailText{
                color: #ded2a8;
            }

            .userTypeText, .fieldName{
                color: #9e9e9e;
            }
        </style>
    </head>
    <body>
        <%
            String username = (String) session.getAttribute("username");
        %>

        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                           url = "jdbc:mysql://localhost/library"
                           user = "root"  password = ""/>

        <%-- Masuk Query dkt sini... --%>
        <sql:query dataSource = "${snapshot}" var = "result">
            SELECT * from customer WHERE username = '<%= session.getAttribute("username")%>';
        </sql:query>

        <c:forEach var = "row" items = "${result.rows}">
            <c:set var = "customerId" value = "${row.staffId}" />
            <c:set var = "customerUsername" value = "${row.username}" />
            <c:set var = "customerFullName" value = "${row.fullname}" />  
            <c:set var = "customerEmail" value = "${row.email}" />
            <c:set var = "customerAddress" value = "${row.address}" />
            <c:set var = "customerPassword" value = "${row.password}" />
            <c:set var = "customerPhone" value = "${row.phone}" />    
        </c:forEach>


        <div class="w-100">
            <div class="header p-3 mx-2 mt-2 mb-5 text-center h5 font-weight-bold">User Profile</div>            
        </div>
        <div class="container d-flex flex-row mb-5">
            <img class="rounded-circle p-1" src="images/profile/profile.jpg" alt="" />
            <div class="profileText d-table">
                <div class="d-table-cell align-middle">                    
                    <div class="col d-flex flex-column">
                        <div class="h4 font-weight-bold">${customerFullName}</div>
                        <div class="h6"><span class="emailText">${customerEmail}</span> - <span class="userTypeText">Customer</span></div>
                    </div>
                </div>
            </div>            
        </div>                    
        <div class="container d-flex flex-column mt-5">
            <form method="post" action="updateProfileServlet">
                <input type="hidden" name="userType" value="customer" />
                <div class="h5 w-100 font-weight-bold">Profile</div>
                <input type="hidden" name="id" value="${customerId}" />
                <div class="w-75 d-flex flex-row mt-4">
                    <div class="h6 w-25 mt-1 fieldName">Username</div>
                    <input name="username" class="w-75" type="text" value="${customerUsername}" />                
                </div>
                <div class="w-75 d-flex flex-row mt-4">
                    <div class="h6 w-25 mt-1 fieldName">Full Name</div>
                    <input name="fullname" class="w-75" type="text" value="${customerFullName}" />                
                </div>
                <div class="w-75 d-flex flex-row mt-4">
                    <div class="h6 w-25 mt-1 fieldName">Email</div>
                    <input name="email" class="w-75" type="email" value="${customerEmail}" />                
                </div>
                <div class="w-75 d-flex flex-row mt-4">
                    <div class="h6 w-25 mt-1 fieldName">Address</div>
                    <input name="address" class="w-75" type="text" value="${customerAddress}" />                
                </div>
                <div class="w-75 d-flex flex-row mt-4 mb-3">
                    <div class="h6 w-25 mt-1 fieldName">Phone Number</div>
                    <input name="phone" class="w-75" type="phone" value="${customerPhone}" />                
                </div> 
                <div class="text-center w-100">
                    <input type="submit" value="Save" class="align-self-center button text-center rounded text-dark mt-5 py-1 mx-4">
                    <input type="cancel" value="Back" class="align-self-center button text-center rounded text-dark mt-5 py-1">                                
                </div>
            </form>
            
        </div>
    </body>
</html>
