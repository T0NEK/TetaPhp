<?php
require_once "../../connect.php";
//echo json_encode(getallheaders());
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
                    wartosc = UPPER ('".$body->stan."')
                    WHERE
                    id=5
                    ";
            if ($conn->query($sql) === TRUE) 
            { $result = array ("wynik"=>true, "stan"=>$body->stan); }
            else 
            { $result = array ("wynik"=>false, "stan"=>$body->stan, "error"=>'nie zapisano'); }
            $conn->close();    
        }    
        else
        { //get
           $sql = "SELECT 
                    wartosc
                    FROM 
                    ustawienia 
                    WHERE 
                    id=5
                    ";
            
                $result = $conn->query($sql); 
                if ($result->num_rows > 0) 
                {
                    $row = $result->fetch_assoc();
                    $stan = $row['wartosc'];
                    $result = array ("wynik"=>true, "stan"=>$stan);
                } 
                else 
                {
                    $result = array ("wynik"=>true, "stan"=>"","error"=>"0 wyników");
                }
            $conn->close();            
        } 
    }   
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>"error", "error"=>$e);
}
echo json_encode($result);
?>