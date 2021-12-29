<?php

require_once "../connect.php";

mysqli_report(MYSQLI_REPORT_STRICT | MYSQLI_REPORT_ALL);

try
{
    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) 
    {
        throw new Exception( $conn->connect_error); 
    } 
    else
    {
    print json_encode('true');
            }
        $conn->close();            
    }    
    catch(Exception $e)    
    {
        print json_encode('false');
    }
?>