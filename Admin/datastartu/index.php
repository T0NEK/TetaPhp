<?php

require_once "../../connect.php";

try
{
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) 
    { throw new Exception( $conn->connect_error); } 
    else
    {
        $body = json_decode(file_get_contents("php://input"));    
        if (isset($body))
            { //set
                $sql = "UPDATE 
                ustawienia 
                SET
                wartosc='".$body->czas."'
                WHERE
                id=2
                ";
                if ($conn->query($sql) === TRUE)
                { $result = array ("wynik"=>true, "stan"=>$body->czas);}
                else 
                { $result = array ("wynik"=>false, "stan"=>$body->czas, "error"=>"nie zapisano");}
                $conn->close();    
            }
            else
            { //get
                $sql = "SELECT 
                * 
                FROM 
                ustawienia 
                WHERE 
                id=1 
                ";
                $result = $conn->query($sql); 
                if ($result->num_rows > 0) 
                {
                $row = $result->fetch_assoc();
                $czas = $row['wartosc'];
                $result = array ("wynik"=>true, "stan"=>$czas);
                $conn->close();   
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>"0 wyników");      
                }
            }          
    }
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>"error", "error"=>$e);
}
echo json_encode($result);     
?>