<%-- 
    Document   : Borrow Report
    Created on : Jan 16, 2021, 11:30:42 AM
    Author     : WILBERT
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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

            .button{
                background: #ded2a8;
            }

            .table .thead-dark th{
                background-color: #989898;
                border: none;
            }

            img:not(.btn.activationImg){
                width: 100px;
                height: 160px;
            }

            .activationImg{
                height: auto;
                width: 50px;
            }
            
            .btn{
                width: 60px;
            }

            textarea {                
                resize: none;
            }

            input[type="file"], .submitBtn, .wrongBtn {
                display: none;
            }

            .edit .submitBtn, .edit .wrongBtn {
                display: block;
            }
            
            .edit .editBtn{
                display: none;
            }
            
            textarea, input{
                border: none;
            }

            .edit textarea, .edit input{
                border: 1px solid #000;
            }

            .img__description {
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                background: rgba(29, 106, 154, 0.72);
                color: #fff;
                visibility: hidden;
                opacity: 0;                
                transition: opacity .2s, visibility .2s;
            }

            .imgCell{
                position: relative;
                width: 100px;
                height: 160px;
            }

            .edit .img__description {
                visibility: visible;
                opacity: 1;
            }
            .new{
                text-align: center;
                
            }
        </style>
    </head>
    <body>
        <div class="w-100 mb-5">
            <div class="header p-3 m-2 text-center h5 font-weight-bold">Borrow Report<a href="staffHomepage.jsp"><p style="text-align:right;">Homepage</p></a></div>      
        </div>
       
        <div class="container">
            <div class="row">
                <a href="#" class="btn btn-default bg-secondary text-white mb-5" onclick="window.print();">Print</a>                 
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col" class="text-center">No</th>
                            <th scope="col" class="text-center">Title</th>
                            <th scope="col" class="text-center">Borrowed Date</th>
                            <th scope="col" class="text-center">Return Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            String driver = "com.mysql.jdbc.Driver";
                            String dbName = "library";
                            String url = "jdbc:mysql://localhost/" + dbName + "?";
                            String username = "root";
                            String password = "";

                            try {
                                Class.forName(driver);
                                Connection con = DriverManager.getConnection(url, username, password);

                                String query = "select * from borrow";
                                PreparedStatement st = con.prepareStatement(query);
                                ResultSet result = st.executeQuery();
                                int count = 1;
                
                                while (result.next()) {
                                    
                        %>
                        <tr id="row<%=count%>" class="bookRow" onfocus="toggleEdit('row<%=count%>', 'borrowNameList<%=count%>')">
                            <form id="form<%=count%>" method="post" action="activateServlet">
                                <th scope="row" class="align-middle">                                    
                                    <%=count%>
                                </th>
                                <input type="hidden" name="user" value="<%=result.getString("username")%>" />
                                <td class="align-middle">
                                    <p class="m-0"><%=result.getString("borrowNameList")%></p>                                                             
                                </td>
                                <td class="align-middle text-center">
                                    <p><%=result.getString("borrowDate")%></p>                                    
                                </td>
                                <td class="align-middle text-center">
                                    <p><%=result.getString("returnDate")%></p>                                    
                                </td>
                            </form>
                            </tr>                        
                            <%
                                        count++;
                                    }
                                    st.close();
                                    con.close();
                                } catch (ClassNotFoundException ex) {

                                }
                            %>
                    </tbody>
                </table>                
            </div>            
        </div>     
    </body>
</html>

