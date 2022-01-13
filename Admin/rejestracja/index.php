<?php
require_once "../../connect.php";
//echo json_encode(getallheaders());
$host = gethostbyaddr($_SERVER['REMOTE_ADDR']);
$token = chr(rand(65,90)).chr(rand(65,90)).rand(1,100).time().chr(rand(65,90)).chr(rand(65,90)).rand(1,100).time()*rand(1,100).chr(rand(65,90)).chr(rand(65,90));
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
            $sql = "INSERT 
                    INTO komputery 
                    (
                    nazwa,
                    token,
                    czaslogowania,
                    czaszmiana
                    )
                    VALUES
                    ('".$host."',
                     '".$token."',
                     '".$body->czas."',
                     '".$body->czas."'
                     )
                    ";
            if ($conn->query($sql) === TRUE) 
            { $result = array ("wynik"=>true, "nazwa"=>$host, "token"=>$token, "czas"=>$body->czas); }
            else 
            { $result = array ("wynik"=>false, "czas"=>$body->czas, "error"=>'nie zarejestrowano'); }
            $conn->close();    
        }    
        else
        { //get
           $result = array ("wynik"=>false, "czas"=>"", "error"=>"brak danych");
        } 
    }   
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>"error", "error"=>$e);
}
echo json_encode($result);
?>