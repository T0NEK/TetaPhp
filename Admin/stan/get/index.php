<?php

require_once "../../../connect.php";

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
                $result = array ("wynik"=>true, "stan"=>$stan);
            } 
        else 
            {
                $result = array ("wynik"=>true, "stan"=>$stan);
            }
        $conn->close();            
    }    
    }
    catch(Exception $e)    
    {
        $result = array("wynik"=>false, "stan"=>"error", "error"=>$e);
    }
echo json_encode($result);
?>