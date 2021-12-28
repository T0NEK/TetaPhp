<?php

require_once "../connect.php";

mysqli_report(MYSQLI_REPORT_STRICT | MYSQLI_REPORT_ALL);

$body = json_decode(file_get_contents("php://input"));

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
        if ($conn->query($sql) === TRUE) { echo "true";} else { echo "false";}
        $conn->close();    
    }    
}
catch(Exception $e)    
{
    print json_encode('Error: '.$e);
}
?>