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
                $sql = 
                "SELECT
                    notatki_ng.id,
                    notatki_ng.tytul,
                    notatki_ng.wlasciciel,
                    notatki_ng.stan,
                    notatki_ng.czasU,
                    notatki_ng.czasA,
                    osoby.imie||osoby.nazwisko as wlascicielText,
                    CASE notatki_ng.stan WHEN 0 THEN 'dostępna'
                                      WHEN 1 THEN 'usunięta'
                                      ELSE 'uszkodzona'
                    END as stanText                    
                    FROM
                    notatki_ng,
                    osoby
                    where
                    (
                    notatki_ng.wlasciciel = ".$body->stan."
                    OR substring(notatki_ng.udostepnienie,".$body->stan.",1) = '1' 
                    )
                    AND osoby.id = notatki_ng.wlasciciel
                    ORDER BY
                    notatki_ng.czasU desc
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $notatki = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $notatka = array ("id"=>$row['id'], "tytul"=>$row['tytul'], "wlasciciel"=>($row['wlasciciel']==$body->stan), "wlascicielText"=>$row['wlascicielText'], "stan"=>($row['stan']==0), "stanText"=>$row['stanText'], "czasU"=>$row['czasU'], "czasA"=>$row['czasA']);
                array_push($notatki,$notatka);
                }
                $result = array ("wynik"=>true, "stan"=>"ok", "notatki"=>$notatki);
                $conn->close();   
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>"0 wyników");      
                }
            
        }
        else
        {
            $result = array ("wynik"=>false, "stan"=>"error", "error"=>"brak danych");      
        }
    }    
    
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>"error", "error"=>$e);
    echo ($e);
}
echo json_encode($result);     
?>