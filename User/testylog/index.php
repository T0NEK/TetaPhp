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
        //$body = (object) array ("osoba"=>4, "modul"=>'lab', "rodzaj"=>'test');
        if (isset($body))
        {//get
            $sql = 
            "SELECT
                moduly_osoby.moduly
            FROM
                moduly_osoby
            WHERE
                    moduly_osoby.moduly = (SELECT moduly.id FROM moduly WHERE moduly.symbol = '".strtoupper($body->modul)."' )
                AND moduly_osoby.osoby = ".$body->osoba."
                AND moduly_osoby.dos = 1
            ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows == 0) 
            {    
                {$result = array ("wynik"=>false, "stan"=>false, "error"=>"nie masz uprawnień do modułu: ".strtoupper($body->modul), "komunikat"=>"nie masz uprawnień do modułu: ".strtoupper($body->modul), "historia"=>'');}
            }
            else
            {
            $row = $wynik->fetch_assoc();
            $id = $row['moduly'];
            $sql = 
            "
            SELECT
                testylog.id,
                testylog.moduly,
                moduly.nazwa as nazwamoduly,
                testylog.zespoly,
                zespoly.nazwa as nazwazespoly,
                testylog.uszkodzenia as iloscuszkodzen,
                testylog.czasend,
                testylog.osoba,
                osoby.imie as imie,
                osoby.nazwisko as nazwisko,
                testylog.uszkodzeniaText
            FROM
                testylog,
                moduly,
                zespoly,
                osoby
            WHERE
                (   testylog.moduly = ".$id."        
                AND moduly.id = testylog.moduly
                AND zespoly.id = testylog.zespoly
                AND osoby.id = testylog.osoba
                AND testylog.rodzaj = '".$body->rodzaj."'
                AND testylog.del = 0
                )
                or
                (
                    testylog.moduly = 0        
                AND moduly.id = 0
                AND zespoly.id = 0
                AND osoby.id = 0
                AND testylog.rodzaj = '".$body->rodzaj."'
                AND testylog.id > 0
                )    
            ORDER BY
                testylog.czasend desc
            ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows == 0) 
            {
                $result = array ("wynik"=>false, "stan"=>false, "error"=>"brak historii lub uszkodzony plik", "komunikat"=>"brak historii lub uszkodzony plik");    
            }
            else
            {    
            $ilosc = $wynik->num_rows;
            $historia = array();
            while ($row = $wynik->fetch_assoc())
            {
            $log = array ("id"=>$id, "nazwamoduly"=>$row['nazwamoduly'], "nazwazespoly"=>$row['nazwazespoly'], "iloscuszkodzen"=>$row['iloscuszkodzen'], "uszkodzeniaText"=>$row['uszkodzeniaText'], "czasend"=>$row['czasend'], "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "osoba"=>$row['osoba']);
            array_push($historia,$log);
            }
            $result = array ("wynik"=>true, "stan"=>true, "historia"=>$historia, "error"=>"wczytano ".$ilosc." pozycji", "komunikat"=>"wczytano ".$ilosc." pozycji");    
            }
        $conn->close();    
        }
        }
        else
        {
            $result = array ("wynik"=>false, "stan"=>false, "error"=>"brak danych", "komunikat"=>"brak danych");      
        }
                   
    }    
    
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>false, "error"=>"problem z odczytem", "komunikat"=>"problem z odczytem");
    //echo ($e);
}
echo json_encode($result);    
?>