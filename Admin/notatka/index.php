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
        //$body = (object) array ('kierunek'=>'get', 'stan' => 2, 'notatka' => '1644743771H5V129934757909');
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {
        if ($body->kierunek == 'get')    
            {//get
                $sql = 
                "SELECT
                notatki_ng.id,
                notatki_ng.identyfikator,
                notatki_ng.tytul,
                notatki_ng.wlasciciel,
                substring(notatki_ng.udostepnienie,".$body->stan.",1) as udostepniona,
                notatki_ng.czas,
                CASE notatki_ng.wlasciciel WHEN ".$body->stan." THEN 'własna'
                                           ELSE concat(osoby.imie,' ',osoby.nazwisko)
                                           END as wlascicielText,
                notatki_ng.stan,
                CASE notatki_ng.stan WHEN 0 THEN 'dostępna'
                                  WHEN 1 THEN 'usunięta'
                                  ELSE 'uszkodzona'
                END as stanText                    
                FROM
                notatki_ng,
                osoby
                where
                notatki_ng.identyfikator = '".$body->notatka."'
                AND osoby.id = notatki_ng.wlasciciel
                ORDER BY
                notatki_ng.czas desc
            ";
            $wynik = $conn->query($sql);
            if ($wynik->num_rows > 0) 
            {
            $row = $wynik->fetch_assoc();
            $id = $row['id'];
            $identyfikator = $row['identyfikator'];
            $tytul = $row['tytul'];
            $czas = $row['czas'];            
            $wlasciciel = $row['wlasciciel'];
            $udostepniona = $row['udostepniona'];
            $wlascicielText = $row['wlascicielText'];
            $stan = $row['stan'];            
            $stanText = $row['stanText'];            
            $wynik = $conn->query($sql); 
            if ($stan != 0)
            {// uszkodzona lub usunięta
                $result = array ("wynik"=>true, "stan"=>false, "error"=>"notatka o identyfikatorze: ".$body->notatka.' jest '.$row['stanText']);
            }
            else
            {
            if ( ($udostepniona == '0') && ($wlasciciel != $body->stan) )
            {
                $result = array ("wynik"=>true, "stan"=>false, "error"=>"notatka o identyfikatorze: ".$body->notatka.' jest nieudostępniona - właściciel: '.$wlascicielText);
            }   
            else
            {    
            $notatkaresult = array ("id"=>$id, "identyfikator"=>$identyfikator, "tytul"=>$tytul, "wlasciciel"=>$wlasciciel, "wlascicielText"=>$wlascicielText, "stan"=>($stan==0), "stanText"=>$stanText, "czas"=>$czas);
            $sql = 
                "SELECT
                    id,
                    wersja,
                    czas,
                    tresc
                    FROM
                    notatki_tr                   
                    WHERE
                    notatki_tr.notatki_ng = ".$id."
                    ORDER BY
                    wersja
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $notatki = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $notatka = array ("id"=>$row['id'], "wersja"=>$row['wersja'], "czas"=>$row['czas'], "tresc"=>$row['tresc']);
                array_push($notatki,$notatka);
                $idmax = $row['wersja'];
                }
                $result = array_merge( array ("wynik"=>true, "stan"=>true, "notatki"=>$notatki, "id"=>$id, "wersja"=>$idmax, "error"=>"znaleziono: ".$wynik->num_rows." wersje"), $notatkaresult);
                }
                else
                {
                    $result = array ("wynik"=>true, "stan"=>false, "error"=>"treść notatki niedostepna");
                }
            }
            }   
            }
            else
            {//set brak notatek
                $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak notatki o identyfikatorze: ".$body->notatka);      
            }  
            $conn->close();   
            }
            else
            {
                //set
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