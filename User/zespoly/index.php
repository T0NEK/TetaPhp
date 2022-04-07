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
        //$body = (object) array ('stan' => 2, "modul" => 'all', "czas" => "2045-06-08 15:22:50");
        //$body = (object) array ('stan' => 2, "modul" => 'LAB', "czas" => "2045-06-08 15:22:50");
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {
            if ($body->modul == 'all')
            { $warunek = ' ';  }
            else
            { $warunek = " AND moduly.symbol = '".strtoupper($body->modul)."' ";}
         //get
                $sql = 
                "SELECT
                    zespoly.id,
                    zespoly.nazwa,
                    zespoly.symbol,
                    zespoly.moduly,
                    zespoly.opis,
                    zespoly.czaswykonania,
                    uszkodzenia.nazwa as nazwaU,
                    stan.nazwa as stanText,
                    stan.stan as stanNr,
                    osoby.imie,
                    osoby.nazwisko,
                    testylog.czasend as czasbadania,
                    zespoly.przedawnienie,
                    moduly.nazwa as nazwaM,
                    moduly.symbol as symbolM
                FROM
                    zespoly,
                    moduly,
                    testylog,
                    uszkodzenia,
                    stan,
                    osoby
                WHERE
                    moduly.id =  zespoly.moduly
                    AND testylog.id = zespoly.ostatni
                    AND uszkodzenia.id = testylog.uszkodzenia 
                    AND stan.id = uszkodzenia.stan
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
                $dni = $diff->days;
                if ( $dni > $row['przedawnienie'])
                { $stanText = $row['stanText'].' - przedawniony '.$dni.' dni'; $stanNr = 2;} //id 5 ze stan
                else
                {$stanText = $row['stanText'].' - badany '.$dni.' dni temu'; $stanNr = $row['stanNr'];}

                $zespol = array ("id"=>$row['id'], "nazwa"=>$row['nazwa'], "symbol"=>$row['symbol'], "stanText"=>$stanText, "stanNr"=>$stanNr, "uszkodzenia"=>$row['nazwaU'], "czaswykonania"=>$row['czaswykonania'], "czasbadania"=>$row['czasbadania'], "modulSymbol"=>$row['symbolM'], "modulNazwa"=>$row['nazwaM'], "autoryzacja"=>false, "polecenie"=>true, "opis"=>$row['opis'], "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "przedawnienie"=>$row['przedawnienie'], "dni"=>$dni);
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