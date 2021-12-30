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
                * 
                FROM 
                ustawienia 
                WHERE 
                id in (1, 2) 
                ORDER BY 
                id
                ";
        $result = $conn->query($sql); 
        if ($result->num_rows > 0) 
            {
                $row = $result->fetch_assoc();
                $czas = $row['wartosc1'].'-'.$row['wartosc2'].'-'.$row['wartosc3'];
                $row = $result->fetch_assoc();
                $czas =   $czas.' '.$row['wartosc1'].':'.$row['wartosc2'].':'.$row['wartosc3'];
                
                $result = array ("wynik"=>true, "stan"=>$czas);
            } 
        else 
            {
                $result = array ("wynik"=>false, "stan"=>"0 wyników");
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