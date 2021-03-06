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
        //$body = (object) array ('stan' => 2, "modul" => 'LAB', "zespol" => 'ZU', "rodzaj" => 'zespol', "czas" => "2045-06-08 15:22:50");
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {//get
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
            if (($wynik->num_rows == 0)&&($body->dostep == 'nie')) 
            {    
                {$result = array ("wynik"=>false, "stan"=>false, "error"=>"nie masz uprawnień do modułu: ".strtoupper($body->modul));}
            }
            else
            {
                $sql = 
                "
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
                testylog.czasstart as czasbadania,
                testylog.czasend as czaszakonczenia,
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
                AND moduly.symbol = '".$body->modul."'
                AND zespoly.symbol = '".$body->zespol."'    
            ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {    
                $zespoly = array ();    
                $date2 = date_create($body->czas);
                $row = $wynik->fetch_assoc();
                $date1 = date_create($row['czaszakonczenia']);    
                $diff = date_diff($date1,$date2);
                $dni = round($diff->y * 365.25 + $diff->m * 30 + $diff->d + $diff->h/24 + $diff->i / 60);
                $przedawnienie = $dni - $row['przedawnienie'];
                switch ($row['uszkodzenia']) 
                {
                    case 1: $problem = $row['uszkodzenia'].' problem'; break;
                    case 2: $problem = $row['uszkodzenia'].' problemy'; break;
                    case 3: $problem = $row['uszkodzenia'].' problemy'; break;
                    case 4: $problem = $row['uszkodzenia'].' problemy'; break;
                    default: $problem = $row['uszkodzenia'].' problemów'; break;
                }
                if ($dni > 1) 
                {
                if ( $dni > $row['przedawnienie'])
                    { $stanText = 'przedawniony '.$przedawnienie.($przedawnienie == 1 ? ' dzień' : ' dni').', wykryto: '.$problem;} //id 5 ze stan
                    else
                    {$stanText = $dni.' dni temu, wykryto: '.$problem;;}    
                }
                else
                {
                $godzin = round(($diff->y * 365.25 + $diff->m * 30 + $diff->d) * 24 + $diff->h + $diff->i/60);
                $stanText = $godzin.' godzin temu, wykryto: '.$problem;;
                }
                $wazny = $row['przedawnienie'].($row['przedawnienie'] == 1 ? ' dzień' : ' dni'); 
                $zespol = array ("id"=>$row['id'],"idmodul"=>$row['moduly'], "nazwa"=>$row['nazwa'], "symbol"=>$row['symbol'], "stanText"=>$stanText, "czasbadania"=>$row['czasbadania'], "czaszakonczenia"=>$row['czaszakonczenia'], "czaswykonania"=>$row['czaswykonania'], "czasreset"=>$row['czasreset'], "czasnaprawa"=>$row['czasnaprawa'], "uszkodzeniailosc"=>$row['uszkodzenia'],"elementy"=>$row['elementy'], "modulSymbol"=>$row['symbolM'], "modulNazwa"=>$row['nazwaM'], "autoryzacja"=>false, "polecenie"=>true, "opis"=>$row['opis'], "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "przedawnienie"=>$row['przedawnienie'], "dni"=>$dni, "wazny"=>$wazny );
                array_push($zespoly,$zespol);
                $sen = ($body->dostep == 'nie' ? ("wczytano: ".$wynik->num_rows):($row['nazwa']));
                $result = array ("wynik"=>true, "stan"=>true, "zespol"=>$zespoly, "error"=>$sen);
                }
                else
                {
                $result = array ("wynik"=>false, "stan"=>false, "error"=>"brak dostępnego zespołu: ".$body->zespol." w module: ".$body->modul);
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