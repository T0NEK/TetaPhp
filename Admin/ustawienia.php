<?php

require_once "../connect.php";

mysqli_report(MYSQLI_REPORT_STRICT | MYSQLI_REPORT_ALL);

try
{
    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) 
    {
        die("Connection failed: " . $conn->connect_error);
    } 
    else 
    {
        $sql = "SELECT * FROM ustawienia";
        $result = mysqli_query($conn,$sql); 
        $myArray = array();
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $myArray[] = $row;
            }
            print json_encode($myArray);
        } 
        else 
        {
            echo "0 results";
        }
        $conn->close();    
    }
}
catch(Exception $e)    
{
    print json_encode('Error: '.$e);
}
?>