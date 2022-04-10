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
        //$body = (object) array ('stan' => 2, "modul" => 3, "czas" => "2045-06-08 15:22:50" );
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {
         //get
                $sql = 
                "SELECT
                    zespoly.id,
                    zespoly.nazwa,
                    zespoly.symbol,
                    zespoly.moduly,
                    zespoly.opis,
                    zespoly.czaswykonania,
                    osoby.imie,
                    osoby.nazwisko,
                    testylog.czasend as czasbadania,
                    testylog.uszkodzenia,
                    zespoly.przedawnienie
                FROM
                    zespoly,
                    testylog,
                    osoby
                WHERE
                        zespoly.moduly = ".$body->modul."
                    AND testylog.id = zespoly.ostatni
                    AND osoby.id = testylog.osoba
                ORDER BY
                    zespoly.nazwa  
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {    
                $zespoly = array ();    
                $date2 = date_create($body->czas);
                while ($row = $wynik->fetch_assoc())
                {
                $date1 = date_create($row['czasbadania']);    
                $diff = date_diff($date1,$date2);
                $dni = $diff->days;
                if ( $dni > $row['przedawnienie'])
                { $stanText = 'test przedawniony '.$dni.' dni';} //id 5 ze stan
                elseif ($dni == 0 )
                    {$stanText = 'test wykonany w dniu dzisiejszym';}
                    else
                    {$stanText = 'test wykonany '.$dni.' dni temu';}    

                $zespol = array ("id"=>$row['id'], "nazwa"=>$row['nazwa'], "symbol"=>$row['symbol'], "uszkodzeniailosc"=>$row['uszkodzenia'], "stanText"=>$stanText, "czaswykonania"=>$row['czaswykonania'], "czasbadania"=>$row['czasbadania'], "autoryzacja"=>false, "polecenie"=>true, "opis"=>$row['opis'], "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "przedawnienie"=>$row['przedawnienie'], "dni"=>$dni);
                array_push($zespoly,$zespol);
                }
                $result = array ("wynik"=>true, "stan"=>true, "zespoly"=>$zespoly, "error"=>"wczytano: ".$wynik->num_rows);
                }
            else
            {
            $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak dostępnych zespołów w module: ".$body->modul);
            }
        $conn->close();       
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