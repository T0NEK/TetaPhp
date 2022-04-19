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
         if ($body->idosoba == 0)
         {
                $sql = 
                "SELECT
                mody.id,
                mody.nazwa,
                mody.symbol,
                mody.stan,
                mody.czasbadania,
                mody.opis,
                ifnull(zesp.ilosczespoly,0) as ilosczespoly 
                FROM
                (
                SELECT
                    id,
                    nazwa,
                    symbol,
                    stan,
                    czasbadania,
                    opis
                    FROM
                    moduly
                )mody   
                LEFT JOIN
                (
                SELECT
                    moduly as id,
                    count(id) as ilosczespoly
                FROM
                    zespoly
                GROUP BY
                    moduly
                )zesp
                ON mody.id = zesp.id
                ORDER BY
                mody.nazwa
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {    
                $moduly = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $modul = array ("id"=>$row['id'], "nazwa"=>$row['nazwa'], "symbol"=>$row['symbol'], "stan"=>$row['stan'], "czasbadania"=>$row['czasbadania'], "autoryzacja"=>false, "polecenie"=>true, "opis"=>$row['opis'], "ilosczespoly"=>$row['ilosczespoly']);
                array_push($moduly,$modul);
                }
                $result = array ("wynik"=>true, "stan"=>true, "moduly"=>$moduly, "error"=>"wczytano: ".$wynik->num_rows);
                
                }
                else
                {
                    $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak dostępnych modułów");      
                }
        $conn->close();        
        }  
        else
        {
            $sql = 
                "SELECT
                mody.id,
                mody.nazwa,
                mody.symbol,
                mody.stan,
                mody.czasbadania,
                mody.opis,
                ifnull(zesp.ilosczespoly,0) as ilosczespoly 
                FROM
                (
                    SELECT
                    moduly.id,
                    moduly.nazwa,
                    moduly.symbol,
                    moduly.stan,
                    moduly.czasbadania,
                    moduly.opis
                FROM
                    moduly,
                    moduly_osoby
                WHERE
                    moduly_osoby.moduly = moduly.id
                    AND moduly_osoby.osoby = ".$body->idosoba."
                    AND moduly_osoby.dos = 1
                )mody   
                LEFT JOIN
                (
                SELECT
                    moduly as id,
                    count(id) as ilosczespoly
                FROM
                    zespoly
                GROUP BY
                    moduly
                )zesp
                ON mody.id = zesp.id
                ORDER BY
                mody.nazwa
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {    
                $moduly = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $modul = array ("id"=>$row['id'], "nazwa"=>$row['nazwa'], "symbol"=>$row['symbol'], "stan"=>$row['stan'], "czasbadania"=>$row['czasbadania'], "autoryzacja"=>false, "polecenie"=>true, "opis"=>$row['opis'], "ilosczespoly"=>$row['ilosczespoly']);
                array_push($moduly,$modul);
                }
                $result = array ("wynik"=>true, "stan"=>true, "moduly"=>$moduly, "error"=>"wczytano: ".$wynik->num_rows);
                
                }
                else
                {
                    $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak dostępnych modułów");      
                }
        $conn->close();        
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