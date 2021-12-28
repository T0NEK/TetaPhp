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
        $sql = "UPDATE 
        ustawienia 
        SET
        wartosc1='".$row['wartosc1']."',
        wartosc2='".$row['wartosc2']."',
        wartosc3='".$row['wartosc3']."'
        WHERE
        id=3
        ";
        if ($conn->query($sql) === TRUE) { $sukces++;}
            $row = $result->fetch_assoc();
            $sql = "UPDATE 
                ustawienia 
                SET
                wartosc1='".$row['wartosc1']."',
                wartosc2='".$row['wartosc2']."',
                wartosc3='".$row['wartosc3']."'
                WHERE
                id=4
                ";
        if ($conn->query($sql) === TRUE) { $sukces++;}
        $conn->close();    
        if ($sukces = 2) { echo "true";}
        else { echo "false";}
        } 
        else 
            {
                echo ("false");
            }
    }    
}
catch(Exception $e)    
{
    print json_encode('Error: '.$e);
}
?>