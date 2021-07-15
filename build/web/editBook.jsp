<%-- 
    Document   : editBook
    Created on : Jan 23, 2021, 8:40:06 PM
    Author     : USER
--%>

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

            img:not(.btn){
                width: 100px;
                height: 160px;
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
        </style>
    </head>
    <body>
        <div class="w-100 mb-5">
            <a href="management.jsp"><div class="header p-3 m-2 text-center h5 font-weight-bold">Edit Book</div></a>           
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
                            <th scope="col" class="text-center">Quantity</th>
                            <th scope="col" class="text-center">Section</th>
                            <th scope="col" class="text-center">Category</th>
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

                                String query = "select * from book";
                                PreparedStatement st = con.prepareStatement(query);
                                ResultSet result = st.executeQuery();
                                int count = 1;

                                while (result.next()) {
                        %>
                        <tr id="row<%=count%>" class="bookRow" onfocus="toggleEdit('row<%=count%>', '<%=count%>')">
                    <form id="form<%=count%>" method="post" action="EditBookServlet" enctype="multipart/form-data">
                        <th scope="row" class="align-middle">                                    
                            <%=count%>
                        </th>
                        <input type="hidden" name="id" value="<%=result.getString("bookId")%>" />
                        <td class="imgCell text-center">
                            <img id="image<%=count%>" src="<%=result.getString("image")%>" alt="image" data-checkChg="<%=result.getString("image")%>" />                            
                            <p class="img__description mb-0 pt-5" onclick="chgImgPath('imagePath<%=count%>', 'row<%=count%>')">Click me to edit image</p>                                    
                            <input id="imagePath<%=count%>" type="file" name="imagePath" onchange="chgImg(this, 'image<%=count%>', 'imgChgStatus<%=count%>')" />
                            <input id="imgChgStatus<%=count%>" type="hidden" name="imgChgStatus" value="false" />
                        </td>
                        <td class="align-middle">
                            <textarea id="title<%=count%>" name="title" data-checkChg="<%=result.getString("title")%>" readonly="true"><%=result.getString("title")%></textarea>                                                             
                        </td>
                        <td class="align-middle">
                            <input id="author<%=count%>" class="text-center" type="text" name="author" value="<%=result.getString("author")%>"  data-checkChg="<%=result.getString("author")%>" readonly="true"/>                                    
                        </td>
                        <td class="align-middle">
                            <input id="quantity<%=count%>" class="text-center" type="text" name="quantity" value="<%=result.getString("quantity")%>"  data-checkChg="<%=result.getString("quantity")%>" readonly="true"/>                                    
                        </td>
                        <td class="align-middle">
                            <input id="section<%=count%>" class="text-center" type="text" name="section" value="<%=result.getString("section")%>"  data-checkChg="<%=result.getString("section")%>" readonly="true"/>                                    
                        </td>
                        <td class="align-middle">
                            <input id="category<%=count%>" class="text-center" type="text" name="category" value="<%=result.getString("category")%>"  data-checkChg="<%=result.getString("category")%>" readonly="true"/>                                    
                        </td>
                        <td class="align-middle">
                            <a href="#" onclick="submit('form<%=count%>', '<%=count%>')">
                                <img id="submitBtn<%=count%>" class="btn submitBtn" src="images/tick.png" />                                        
                            </a>
                            <a id="toggleEditA" href="#" onclick="toggleEdit('row<%=count%>', '<%=count%>')">
                                <img id="editBtn<%=count%>" class="btn editBtn" src="images/edit-icon.png" />
                                <img id="wrongBtn<%=count%>" class="btn wrongBtn" src="images/wrong.png" />
                            </a>
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
        <script type="application/javascript">                        
            function chgImgPath(imagePath,row){
                if(document.getElementById(row).classList.contains("edit")){
                    document.getElementById(imagePath).click();
                }                
            }
            
            function chgImg(inputData,image,status){
                document.getElementById(image).src = window.URL.createObjectURL(inputData.files[0]);     
                document.getElementById(status).value = "true";
            }                      
            
            var editRow = "";
            
            function toggleEdit(row,count){
                resetEdit();
                                
                if(row != editRow){    
                    addEdit(row,count);
                } else if(row === editRow){
                    editRow = "";
                    assignInputs(count);
                    addReadonly(count);
                }                                 
            }           
            
            var oldEditRowCount = 0;            
            
            function addEdit(row,count){                
                editRow = row;
                document.getElementById(row).classList.add("edit");
                
                if(oldEditRowCount == 0){
                    oldEditRowCount = count;
                    assignInputs(count);
                    removeReadonly(count);
                } else if(oldEditRowCount != 0){                                        
                    assignInputs(oldEditRowCount);
                    addReadonly(oldEditRowCount);
                    assignInputs(count);
                    removeReadonly(count);
                    oldEditRowCount = count; 
                }                                                  
                
                var title = document.getElementById("title" + count);
                
                title.focus();
                var val = title.value; 
                title.value = '';
                title.value = val;                                           
            }
            
            var title = document.getElementById("title1");
            var author = document.getElementById("author1");
            var quantity = document.getElementById("quantity1");
            var section = document.getElementById("section1");
            var category = document.getElementById("category1");
            var image = document.getElementById("image1");
            
            function assignInputs(count){
                title = document.getElementById("title" + count);
                author = document.getElementById("author" + count);
                quantity = document.getElementById("quantity" + count);
                section = document.getElementById("section" + count);
                category = document.getElementById("category" + count);
                image = document.getElementById("image" + count);
            }
            
            function addReadonly(){                                
                title.setAttribute('readonly', true); 
                author.setAttribute('readonly', true); 
                section.setAttribute('readonly', true); 
                title.setAttribute('readonly', true); 
                category.setAttribute('readonly', true); 
                image.setAttribute('readonly', true); 
            }
            
            function removeReadonly(){                
                title.removeAttribute("readonly"); 
                author.removeAttribute("readonly"); 
                section.removeAttribute("readonly"); 
                title.removeAttribute("readonly"); 
                category.removeAttribute("readonly"); 
                image.removeAttribute("readonly"); 
            }
            
            function resetEdit(){
                var rows = document.getElementsByClassName("edit");
                for (var i = 0; i < rows.length; i++) {
                   rows[i].classList.remove("edit");
                }
            }
            
            var validated = false;
            
            function submit(form,count){
                checkChg(count);
                
                if(validated){
                    document.getElementById(form).submit();                    
                }
            }                        
            
            function checkChg(count){
                var URL = location.href;
                URL = URL.substring(0, URL.lastIndexOf("/") + 1);
                
                var title = document.getElementById("title" + count);
                var author = document.getElementById("author" + count);
                var quantity = document.getElementById("quantity" + count);
                var section = document.getElementById("section" + count);
                var category = document.getElementById("category" + count);
                var image = document.getElementById("image" + count);
                if(title.getAttribute("data-checkChg") != title.value || author.getAttribute("data-checkChg") != author.value ||
                            quantity.getAttribute("data-checkChg") != quantity.value || quantity.getAttribute("data-checkChg") != quantity.value ||
                                    category.getAttribute("data-checkChg") != category.value || URL + image.getAttribute("data-checkChg") != image.src){
                    validated = true;
                } else {
                    validated = false;
                    alert("No need to update if no changes made."); 
                    document.getElementById("wrongBtn" + count).click();
                }
            }
        </script>
    </body>
</html>
