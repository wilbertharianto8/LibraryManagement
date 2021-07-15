<%-- 
    Document   : ebookStaff
    Created on : Jan 11, 2021, 1:12:52 AM
    Author     : ASUS
--%>

<%@page import="bean.eBook"%>
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
            <a href="staffHomepage.jsp"><div class="header p-3 m-2 text-center h5 font-weight-bold">e-Book</div></a>            
        </div>
       
        <div class="container">
            <div class="row">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col" class="text-center">No</th>
                            <th scope="col" class="text-center">Image</th>
                            <th scope="col" class="text-center">Title</th>
                            <th scope="col" class="text-center">Author</th>
                            <th scope="col" class="text-center">Ebook Link</th>
                            <th scope="col" class="text-center">Activation</th>
                            <th scope="col" class="text-center">Reason</th>
                            <th scope="col" class="text-center">Action</th>
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

                                String query = "select * from ebook";
                                PreparedStatement st = con.prepareStatement(query);
                                ResultSet result = st.executeQuery();
                                int count = 1;
                
                                while (result.next()) {
                                    
                        %>
                        <tr id="row<%=count%>" class="bookRow" onfocus="toggleEdit('row<%=count%>', 'title<%=count%>')">
                            <form id="form<%=count%>" method="post" action="activateServlet">
                                <th scope="row" class="align-middle">                                    
                                    <%=count%>
                                </th>
                                <input type="hidden" name="id" value="<%=result.getString("ebookID")%>" />
                                <td class="imgCell text-center">
                                    <img id="image" src="<%=result.getString("images")%>" alt="image"  />                           
                                </td>
                                <td class="align-middle">
                                    <p ><%=result.getString("title")%></p>                                                             
                                </td>
                                <td class="align-middle">
                                    <p><%=result.getString("author")%></p>                                    
                                </td>
                                <td class="align-middle">
                                    <a href="<%=result.getString("pdf")%>">Ebook Link</a>                                    
                                </td>
                               
                                <td class="align-middle text-center">
                                    <%
                                        String activation = result.getString("activation");
                                        String activationImg = "";
                                        
                                        if(activation.equals("1")){
                                            activationImg = "images/enable.png";
                                        } else if(activation.equals("0")){
                                            activationImg = "images/disable.png";
                                        }
                                    %>               
                                    <img class="activationImg" src="<%=activationImg%>" style="width:40px; height: 40px" />
                                    <br><br><br><select name="activation" id="activation<%=count%>" data-checkChg="<%=result.getString("activation")%>">
                                        <option>Activation</option>
                                        <option value="1">Enable</option>
                                        <option value="0">Disable</option>>
                                    </select>
                                </td>
                                 <td class="align-middle">
                                    <textarea id="reason<%=count%>" class="text-center w-100" name="reason" data-checkChg="<%=result.getString("reason")%>" ><%=result.getString("reason")%></textarea>                                   
                                </td>
                                <td class="align-middle">
                                    <input type="submit" value="Update">                          
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
       
        <div class="new">
            <a href="addEbook.jsp"><img src="images/add.png" style="height:50px; width: 50px;"><br>Add New</a>
        </div>
    </body>
</html>