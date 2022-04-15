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
            $sql = "INSERT 
                    INTO innelog
                    (
                    dedal,
                    moduly,
                    zespoly,
                    polecenieid,
                    polecenieText,
                    czaswykonania,
                    osoba,
                    osobaText,
                    terminal,
                    del
                    )
                    VALUES
                    (
                    1,
                    0,
                    0,
                     ".$body->polecenie.",
                     '".$body->polecenieText."',
                     '".$body->czaswykonania."',
                     ".$body->osoba.",
                     '".$body->osobaText."',
                     '".$body->terminal."',
                     0
                     )
                    ";
            if ($conn->query($sql) === TRUE) 
            { 
            $id  = $conn->insert_id;   
            $result = array ("wynik"=>true, "id"=>$id, "error"=>'zapisano historię'); 
            }
            else 
            { $result = array ("wynik"=>false, "error"=>'nie zapisano historii'); }
            $conn->close();    
        }    
        else
        { //get
           $result = array ("wynik"=>false, "error"=>"brak danych");
        } 
    }   
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "error"=>'błąd danych');
}
echo json_encode($result);
?>