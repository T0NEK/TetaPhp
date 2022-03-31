<?php
require_once "../../connect.php";
//echo json_encode(getallheaders());
try
{
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset("utf8");
    if ($conn->connect_error) 
    { throw new Exception( $conn->connect_error); } 
    else
    {
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        { //set   
            $conn->autocommit(false);
            $sql = "UPDATE 
                    osoby 
                    SET
                    czaslogowania = CASE zalogowanyorg WHEN 1 THEN '".$body->czas."' ELSE '' END,
                    czaswylogowania = '',
                    zalogowanynew = zalogowanyorg,
                    blokadanew = blokadaorg,
                    hannahnew = hannahorg
                    WHERE
                    user in (1, 2)
                    ";
            $conn->query($sql);
                    $sql = "UPDATE 
                    logowania
                    SET
                    czaswylogowania = '".$body->czas."',
                    czaszmiana = '".$body->czas."',
                    del = 1
                    WHERE
                    del <> 1
                    ";
                $conn->query($sql);
            if ($conn->commit() === TRUE) 
                { $result = array ("wynik"=>true, "stan"=>"ok");}
                else 
                { $result = array ("wynik"=>false, "stan"=>"error", "error"=>"nie zresetowano");}
                $conn->close();    
        }    
        else
        { //get
            $result = array ("wynik"=>false, "stan"=>"error", "error"=>"brak danych");  
        } 
    }   
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>"error", "error"=>$e);
}
echo json_encode($result);
?>