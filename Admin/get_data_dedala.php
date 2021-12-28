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
                * 
                FROM 
                ustawienia 
                WHERE 
                id in (5, 6) 
                ORDER BY 
                id
                ";
        $result = $conn->query($sql); 
        if ($result->num_rows > 0) 
            {
                $row = $result->fetch_assoc();
                $czas = $row['wartosc1'].'.'.$row['wartosc2'].'.'.$row['wartosc3'];
                $row = $result->fetch_assoc();
                $czas =   $czas.' '.$row['wartosc1'].':'.$row['wartosc2'].':'.$row['wartosc3'];
                print json_encode($czas);
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