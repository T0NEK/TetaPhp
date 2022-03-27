<?php

require_once "../../connect.php";

try
{
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset("utf8");
    if ($conn->connect_error) 
    { throw new Exception( $conn->connect_error); } 
    else
    {
         //get
            $body = json_decode(file_get_contents("php://input"));
            //$body = (object) array ('stan' => 2);
            $sql = "SELECT wartosc from ustawienia WHERE id=5"; 
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
            {
                $row = $wynik->fetch_assoc();
                $start = $row['wartosc'];
                if ($start == 'START') {$warunek = 'TRUE';} else {$warunek = 'FALSE';}   
                $sql = 
                "SELECT
                    id,
                    imie,
                    nazwisko,
                    naroslid,
                    IF (".$warunek.",naroslnew,naroslorg) as narosl,
                    IF (".$warunek.",zalogowanynew,zalogowanyorg) as zalogowany,
                    IF (".$warunek.",blokadanew,blokadaorg) as blokada
                 FROM
                    osoby
                 WHERE
                    id = ".$body->zalogowany."   
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $row = $wynik->fetch_assoc();
                $result = array ("wynik"=>true,"stan"=>$start,"zalogowany"=>$row['id'], "narosl"=>($row['narosl']==1));
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>"0 wyników");      
                }
            
            }
            else
            {
                $result = array ("wynik"=>false, "stan"=>"0 wyników");
            }   
    $conn->close();                  
    }
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>"error", "error"=>$e);
    echo ($e);
}
echo json_encode($result);     
?>