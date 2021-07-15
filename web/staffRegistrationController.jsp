<%-- 
    Document   : staffRegistrationController
    Created on : Jan 15, 2021, 11:30:41 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="staff" class="bean.Staff" scope="request"/>
        <jsp:setProperty name="staff" property="*"/>                
        <jsp:forward page="/StaffRegistrationServlet" />
    </body>
</html>
