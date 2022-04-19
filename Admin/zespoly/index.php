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
            if ($body->stan != 'get')   
            {
            $sql = 
            "
            UPDATE
                zespoly
            SET
                ".$body->stan." = ".$body->nowy."
            WHERE 
                id = ".$body->zespol."       
            ";    
            if ($conn->query($sql)===TRUE) 
            {
                $result = array ("wynik"=>true, "stan"=>true, "error"=>"zmieniono na ".$body->nowy);
            }
            else
            {
                $result = array ("wynik"=>false, "stan"=>false, "error"=>"nie zmieniono na ".$body->nowy);
            }
            }
    elseif ($body->stan == 'get')            
         { //get
                $sql = 
                "
                SELECT
                wsz.id,
                wsz.nazwa,
                wsz.symbol,
                wsz.moduly,
                wsz.opis,
                wsz.czaswykonania,
                wsz.czasreset,
                wsz.czasnaprawa,
                wsz.elementy,
                wsz.imie,
                wsz.nazwisko,
                wsz.czasbadania,
                wsz.uszkodzenia,
                wsz.przedawnienie,
                ifnull(usz.jestuszkodzen,0) as jestuszkodzen
                FROM
                (
                SELECT
                    zespoly.id,
                    zespoly.nazwa,
                    zespoly.symbol,
                    zespoly.moduly,
                    zespoly.opis,
                    zespoly.czaswykonania,
                    zespoly.czasreset,
                    zespoly.czasnaprawa,
                    zespoly.elementy,
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
                        upper(zespoly.moduly) = upper(".$body->modul.")
                    AND testylog.id = zespoly.ostatni
                    AND osoby.id = testylog.osoba
                ORDER BY
                    zespoly.nazwa  
                )wsz
                LEFT JOIN
                (    
                SELECT
                zespoly as id,
                count(id) as jestuszkodzen
                FROM 
                uszkodzenia
                WHERE 
                    upper(moduly) = (".$body->modul.")
                AND stan <> 1
                GROUP BY
                zespoly
                )usz
                ON wsz.id = usz.id
                ORDER BY
                wsz.nazwa
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
                $dni = round($diff->y * 365.25 + $diff->m * 30 + $diff->d + $diff->h/24 + $diff->i / 60);
                if ($dni > 1) 
                {
                if ( $dni > $row['przedawnienie'])
                    { $stanText = 'przedawniony '.$dni.($dni == 1 ? 'dzień' : ' dni');} //id 5 ze stan
                    else
                    {$stanText = $dni.' dni temu';}    
                }
                else
                {
                $godzin = round(($diff->y * 365.25 + $diff->m * 30 + $diff->d) * 24 + $diff->h + $diff->i/60);
                $stanText = $godzin.' godzin temu';
                }                
                $zespol = array ("id"=>$row['id'], "nazwa"=>$row['nazwa'], "symbol"=>$row['symbol'], "uszkodzeniailosc"=>$row['uszkodzenia'], "jestuszkodzen"=>$row['jestuszkodzen'], "stanText"=>$stanText, "czaswykonania"=>$row['czaswykonania'], "czasreset"=>$row['czasreset'], "czasnaprawa"=>$row['czasnaprawa'], "elementy"=>$row['elementy'], "czasbadania"=>$row['czasbadania'], "autoryzacja"=>false, "polecenie"=>true, "opis"=>$row['opis'], "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "przedawnienie"=>$row['przedawnienie'], "dni"=>$dni);
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
    echo ($e);
}
echo json_encode($result);    
?>