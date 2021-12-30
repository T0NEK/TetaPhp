<?php

require_once "../../../connect.php";

$body = json_decode(file_get_contents("php://input"));
//echo json_encode(getallheaders());
try
{
    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) 
    {
        throw new Exception( $conn->connect_error);
    } 
    else
    {
            $sql = "UPDATE 
                ustawienia 
                SET
                wartosc1 = UPPER ('".$body->stan."')
                WHERE
                id=9
                ";
        if ($conn->query($sql) === TRUE) 
            { 
                $result = array ("wynik"=>true, "stan"=>$body->stan);
            }
            else 
            { 
                $result = array ("wynik"=>false, "stan"=>$body->stan);
            }
        $conn->close();    
    }    
}
catch(Exception $e)    
{
    $result = array ("wynik"=>false, "stan"=>$body->stan, "error"=>$e);
}
echo json_encode($result);
?>