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
        $sql = "SELECT 
                wartosc1 
                FROM 
                ustawienia 
                WHERE 
                id = 9
                ";
        $result = $conn->query($sql); 
        if ($result->num_rows > 0) 
            {
                $row = $result->fetch_assoc();
                $stan = $row['wartosc1'];
                print json_encode($stan);
            } 
        else 
            {
                print json_encode('false');
            }
        $conn->close();            
    }    
    }
    catch(Exception $e)    
    {
        print json_encode('Error: '.$e);
    }
?>