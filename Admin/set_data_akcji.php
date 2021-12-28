<?php

require_once "../connect.php";

mysqli_report(MYSQLI_REPORT_STRICT | MYSQLI_REPORT_ALL);

$body = json_decode(file_get_contents("php://input"));
$sukces = 0;

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
                wartosc1=".$body->yy.",
                wartosc2=".$body->mm.",
                wartosc3=".$body->dd."
                WHERE
                id=7
                ";
        if ($conn->query($sql) === TRUE) { $sukces++;}
            $sql = "UPDATE 
                ustawienia 
                SET
                wartosc1=".$body->hh.",
                wartosc2=".$body->mi.",
                wartosc3=".$body->ss."
                WHERE
                id=8
                ";
        if ($conn->query($sql) === TRUE) { $sukces++;}
        $conn->close();    
        if ($sukces = 2) { echo "true";}
        else { echo "false";}
    }    
}
catch(Exception $e)    
{
    print json_encode('Error: '.$e);
}
?>