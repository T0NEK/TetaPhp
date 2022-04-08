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
        $body = (object) array ("osoba"=>2, "symbol"=>'301649415947622');
        //$body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {//get
                $sql = 
                "
                SELECT
                    testylog.id,
                    testylog.moduly,
                    testylog.zespoly,
                    uszkodzenia,
                    czasstart,
                    czasend,
                    osoba
                FROM
                    testylog,
                    uszkodzenia
                WHERE
                    testylog.symbol = ".$body->symbol."
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {    
                $zespoly = array ();    
                $date2 = date_create($body->czas);
                $row = $wynik->fetch_assoc();
                $date1 = date_create($row['czaszakonczenia']);    
                $diff = date_diff($date1,$date2);
                $dni = $diff->days;
                if ( $dni > $row['przedawnienie'])
                { $stanText = 'test przedawniony '.$dni.' dni, wykryto: '.$row['uszkodzenia'].' problemów'; $przedawniony = true;} //id 5 ze stan
                elseif ($dni == 0 )
                    {$stanText = 'test wykonany w dniu dzisiejszym, wykryto: '.$row['uszkodzenia'].' problemów'; $przedawniony = true;}
                    else
                    {$stanText = 'test wykonany '.$dni.' dni temu, wykryto: '.$row['uszkodzenia'].' problemów'; $przedawniony = true;}   
                if ($row['naprawaporeset'] == 1)    
                { $naprawa = 1;}
                else
                { $naprawa = $row['uszkodzenia'];}

                $zespol = array ("id"=>$row['id'],"idmodul"=>$row['moduly'], "nazwa"=>$row['nazwa'], "symbol"=>$row['symbol'], "stanText"=>$stanText,  "naprawaporeset"=>$naprawa, "czasbadania"=>$row['czasbadania'], "czaszakonczenia"=>$row['czaszakonczenia'], "czaswykonania"=>$row['czaswykonania'], "elementy"=>$row['elementy'], "modulSymbol"=>$row['symbolM'], "modulNazwa"=>$row['nazwaM'], "autoryzacja"=>false, "polecenie"=>true, "opis"=>$row['opis'], "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "przedawnienie"=>$row['przedawnienie'], "dni"=>$dni);
                array_push($zespoly,$zespol);
                $result = array ("wynik"=>true, "stan"=>true, "zespol"=>$zespoly, "error"=>"wczytano: ".$wynik->num_rows);
                if ($body->rodzaj == 'reset')
                {
                $sql = 
                "
                UPDATE
                    zespoly
                SET
                    uszkodzenia = 5
                WHERE
                    id = ".$row['id']."        
                ";
                if ($conn->query($sql) === TRUE) 
                { $result = $result;}
                else
                { $result = array("wynik"=>false, "stan"=>false, "error"=>"brak połączenia z zespołem: ".$body->zespol." w module: ".$body->modul); }
                }
                }
                else
                {
                $result = array ("wynik"=>false, "stan"=>false, "error"=>"brak dostępnego zespołu: ".$body->zespol." w module: ".$body->modul);
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