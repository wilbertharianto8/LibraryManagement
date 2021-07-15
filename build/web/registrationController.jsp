<%-- 
    Document   : registrationController
    Created on : Jan 16, 2021, 11:28:51 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Controller</title>
    </head>
    <body>
       <jsp:useBean id="customer" class="bean.Customer" scope="request"/>
       <jsp:setProperty name="customer" property="*"/>                
       <jsp:forward page="/RegistrationServlet" />
    </body>
</html>
