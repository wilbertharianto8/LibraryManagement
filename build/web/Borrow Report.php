

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

            .bannerText{
                color: #616161;
                height: 200px;
                background: rgb(222,210,168);
                background: radial-gradient(circle, rgba(222,210,168,1) 9%, rgba(240,240,240,1) 94%);
            }

            .contentBox{
                height: 300px;
            }
        </style>
    </head>
    <body>
        <div class="text-center h3 font-weight-bold w-100">
        </div>
        <div class="contentBox d-table w-100">
            <div class="d-table-cell">
                <div class="menuRow container text-center">
                    <center><table style="background-color:#FFFFE0;" >
                    <tr style="background-color:#BDB76B;color:#ffffff;">
                        <th>Book Title</th><th>Date Borrowed</th><th>Last Return</th>
                    </tr>
                  <?php
                    $conn = mysqli_connect("localhost", "root", "", "library");
                    if ($conn-> connect_error) {
                        die("Connection failed:".$conn-> connect_error);
                    }
                    
                    $sql = "SELECT borrowNameList, borrowDate, returnDate from borrow";
                    $result = $conn-> query($sql);
                                  
                    if ($result-> num_rows > 0){
                    while ($row = $result-> fetch_assoc()){
                        echo "<tr><td>". $row["borrowNameList"]."</td><td>". $row["borrowDate"]."</td><td>". $row["returnDate"]."</td></tr>";
                    }
                        echo "</table>";
                    }
                    else{
                        echo "0 result";
                        }
                        
                    $conn-> close();
                    ?>
                    
                    </table>
                    </center>

                </div>
             
            </div>            
        </div>
    </body>
</html>
