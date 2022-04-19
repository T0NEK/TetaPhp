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
        $body = json_decode(file_get_contents("php://input"));
        // Musi być zerowy Dedala w testylog
        //$body = (object) array ('stan' => 2, "modul" => 'all', "czas" => "2045-06-08 15:22:50");
        //$body = (object) array ('stan' => 4, "modul" => 'Lab', "czas" => "2045-06-28 15:22:50");
        if (isset($body))
        {
            if ($body->modul == 'all')
            { 
                $warunek = ' ';  
            }
            else
            { 
            $sql = 
            "SELECT
                moduly_osoby.id
            FROM
                moduly_osoby
            WHERE
                    moduly_osoby.moduly = (SELECT moduly.id FROM moduly WHERE moduly.symbol = '".strtoupper($body->modul)."' )
                AND moduly_osoby.osoby = ".$body->stan."
                AND moduly_osoby.dos = 1
            ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
            {    
            $warunek = " AND moduly.symbol = '".strtoupper($body->modul)."' ";
            }
            else
            {
            $warunek = 0;
            }
            }
         //get
            if ($warunek === 0)
            {
                {$result = array ("wynik"=>false, "stan"=>false, "error"=>"nie masz uprawnień do modułu: ".strtoupper($body->modul));}
            }
            else
            {
                $sql = 
                "SELECT
                    zespoly.id,
                    zespoly.nazwa,
                    zespoly.symbol,
                    zespoly.moduly,
                    zespoly.opis,
                    zespoly.czaswykonania,
                    zespoly.elementy,
                    osoby.imie,
                    osoby.nazwisko,
                    testylog.czasend as czasbadania,
                    testylog.uszkodzenia,
                    zespoly.przedawnienie,
                    moduly.nazwa as nazwaM,
                    moduly.symbol as symbolM
                FROM
                    zespoly,
                    moduly,
                    testylog,
                    osoby
                WHERE
                    moduly.id =  zespoly.moduly
                    AND testylog.id = zespoly.ostatni
                    AND osoby.id = testylog.osoba
                    ".$warunek."
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
                $dni = round($diff->y * 365.25 + $diff->m * 30 + $diff->d + $diff->h/24 + $diff->i / 60);
                $przedawnienie = $dni - $row['przedawnienie'];
                if ($dni > 1) 
                {
                if ( $dni > $row['przedawnienie'])
                    { $stanText = 'przedawniony '.$przedawnienie.($przedawnienie == 1 ? 'dzień' : ' dni');} //id 5 ze stan
                    else
                    {$stanText = $dni.' dni temu';}    
                }
                else
                {
                $godzin = round(($diff->y * 365.25 + $diff->m * 30 + $diff->d) * 24 + $diff->h + $diff->i/60);
                $stanText = $godzin.' godzin temu';
                }
                $stanText = $stanText.' (ważny: '.$row['przedawnienie'].($row['przedawnienie'] == 1 ? ' dzień' : ' dni').')'; 
                $zespol = array ("id"=>$row['id'], "nazwa"=>$row['nazwa'], "symbol"=>$row['symbol'], "elementy"=>$row['elementy'], "uszkodzeniailosc"=>$row['uszkodzenia'], "stanText"=>$stanText, "czaswykonania"=>$row['czaswykonania'], "czasbadania"=>$row['czasbadania'], "modulSymbol"=>$row['symbolM'], "modulNazwa"=>$row['nazwaM'], "autoryzacja"=>false, "polecenie"=>true, "opis"=>$row['opis'], "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "przedawnienie"=>$row['przedawnienie'], "dni"=>$dni);
                array_push($zespoly,$zespol);
                }
                $result = array ("wynik"=>true, "stan"=>true, "zespoly"=>$zespoly, "error"=>"wczytano: ".$wynik->num_rows);
                }
                else
                {
                    if ($body->modul == 'all')
                    {$result = array ("wynik"=>false, "stan"=>false, "error"=>"brak dostępnych zespołów");}
                    else
                    {$result = array ("wynik"=>false, "stan"=>false, "error"=>"brak dostępnych zespołów w module: ".strtoupper($body->modul));}
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