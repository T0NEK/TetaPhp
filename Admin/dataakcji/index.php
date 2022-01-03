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
                id=4
                ";
                if ($conn->query($sql) === TRUE)
                { $result = array ("wynik"=>true, "stan"=>"", "czas"=>$body->czas);}
                else 
                { $result = array ("wynik"=>false, "stan"=>"", "czas"=>$body->czas, "error"=>"nie zapisano");}
                $conn->close();    
            }
            else
            { //get
                $sql = "SELECT
                *
                FROM
                (SELECT 
                wartosc as stan
                FROM 
                ustawienia 
                WHERE 
                id=5) t1 
                JOIN
                (SELECT 
                wartosc as czasorg
                FROM 
                ustawienia 
                WHERE 
                id=3) t2
                JOIN
                (SELECT 
                wartosc as czasnew
                FROM 
                ustawienia 
                WHERE 
                id=4) t3
                ON true
                ";
                $result = $conn->query($sql); 
                if ($result->num_rows > 0) 
                {
                $row = $result->fetch_assoc();
                $result = array ("wynik"=>true, "stan"=>$row['stan'], "czasorg"=>$row['czasorg'], "czasnew"=>$row['czasnew']);
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