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
        //$body = (object) array ('kierunek'=>'get', 'stan' => 2, 'notatka' => '1644743790H8C52631801280');
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {
        if ($body->kierunek == 'get')    
            {//get
                $sql = 
                "SELECT
                    notatki_tr.id,
                    notatki_tr.wersja,
                    notatki_tr.czas,
                    notatki_tr.tresc,
                    notatki_ng.tytul,
                    notatki_ng.identyfikator,
                    notatki_ng.wlasciciel,
                    CASE notatki_ng.wlasciciel WHEN ".$body->stan." THEN 'własna'
                                               ELSE concat(osoby.imie,' ',osoby.nazwisko)
                                               END as wlascicielText,
                    notatki_ng.stan,
                    CASE notatki_ng.stan WHEN 0 THEN 'dostępna'
                                      WHEN 1 THEN 'usunięta'
                                      ELSE 'uszkodzona'
                    END as stanText
                    FROM
                    notatki_tr,
                    notatki_ng,
                    osoby
                    WHERE
                    notatki_ng.identyfikator = '".$body->notatka."'
                    AND notatki_tr.notatki_ng = notatki_ng.id
                    AND (
                        notatki_ng.wlasciciel = ".$body->stan."
                        OR substring(notatki_ng.udostepnienie,".$body->stan.",1) = '1' 
                        )
                    AND osoby.id = notatki_ng.wlasciciel
                    ORDER BY
                    notatki_tr.wersja desc
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $notatki = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $notatka = array ("id"=>$row['id'],"identyfikator"=>$row['identyfikator'], "wersja"=>$row['wersja'], "tytul"=>$row['tytul'], "edycja"=>($row['wlasciciel']==$body->stan), "wlascicielText"=>$row['wlascicielText'], "stan"=>($row['stan']==0), "stanText"=>$row['stanText'], "czas"=>$row['czas'], "tresc"=>$row['tresc']);
                array_push($notatki,$notatka);
                }
                $result = array ("wynik"=>true, "stan"=>true, "notatki"=>$notatki, "error"=>"wczytano: ".$wynik->num_rows." pozycje");
                $conn->close();   
                }
                else
                {
                    $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak dostepnych notatek");      
                }
            }  
            else
            {//set


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