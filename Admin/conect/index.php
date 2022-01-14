<?php

require_once "../../connect.php";

//echo json_encode(getallheaders());
//$host = gethostbyaddr($_SERVER['REMOTE_ADDR']);
try
{
    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) 
    {
        throw new Exception( $conn->connect_error); 
    } 
    else
    {
        $result = array ("wynik"=>true, "stan"=>"ok");  
    }
    $conn->close();            
}    
catch(Exception $e)    
{
    $result = array ("wynik"=>false, "stan"=>"error", "error"=>$e); 
}
echo json_encode($result);
?>