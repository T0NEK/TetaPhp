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
        //$body = (object) array ('stan' => 2);
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {
         //get
                $sql = 
                "SELECT
                    id,
                    nazwa,
                    symbol,
                    producent,
                    opis
                    FROM
                    moduly
                    where
                    substring(uprawnienia,".$body->stan.",1) = '1' 
                    ORDER BY
                    nazwa
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {    
                $moduly = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $modul = array ("id"=>$row['id'], "nazwa"=>$row['nazwa'], "symbol"=>$row['symbol'], "producent"=>$row['producent'], "autoryzacja"=>false, "polecenie"=>true, "opis"=>$row['opis']);
                array_push($moduly,$modul);
                }
                $result = array ("wynik"=>true, "stan"=>true, "moduly"=>$moduly, "error"=>"wczytano: ".$wynik->num_rows);
                $conn->close();   
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>false, "error"=>"brak dostępnych modułów");      
                }
            
        }
        else
        {
            $result = array ("wynik"=>false, "stan"=>false, "error"=>"brak danych");      
        }
    }    
    
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>false, "error"=>"problem z odczytem");
    //echo ($e);
}
echo json_encode($result);     
?>