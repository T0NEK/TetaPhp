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
        //$body = (object) array ('kierunek'=>'get', 'stan' => 2, 'notatka' => '1');
        //$body = (object) array ('kierunek'=>'set', 'stan' => 2, 'wersja' => 1, 'notatka' => 'hello notatka');
        //$body = (object) array ("kierunek"=>'setstan', "idnotatki"=>40, "idtablica"=>0); 
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {
        if ($body->kierunek == 'get')    
            {//get 
            $sql = 
                "SELECT
                    id,
                    wersja,
                    stan,
                    CASE stan WHEN 0 THEN 'dostępna'
                                     WHEN 1 THEN 'usunięta'
                                     ELSE 'uszkodzona'
                    END as stanText,
                    czas,
                    tresc
                    FROM
                    notatki_tr
                    WHERE
                    notatki_tr.notatki_ng = ".$body->notatka."
                    ORDER BY
                    wersja desc
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $notatki = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $notatka = array ("id"=>$row['id'], "wersja"=>$row['wersja'], "stan"=>($row['stan']==0), "stanText"=>$row['stanText'], "czas"=>$row['czas'], "tresc"=>$row['tresc']);
                array_push($notatki,$notatka);
                $idmax = $row['wersja'];
                }
                $result =  array ("wynik"=>true, "stan"=>true, "notatki"=>$notatki, "wersja"=>$idmax, "error"=>"znaleziono wersji: ".$wynik->num_rows);
                }
                else
                {
                    $result = array ("wynik"=>true, "stan"=>false, "error"=>"treść notatki niedostepna");
                }
            $conn->close();   
            }
    elseif ($body->kierunek == 'setstan')
            { //set
                $sql = "
                SELECT
                    notatki_tr.stan,
                    notatki_ng.tytul
                FROM    
                    notatki_tr,
                    notatki_ng
                WHERE  
                    notatki_ng.id = notatki_tr.notatki_ng
                    AND notatki_tr.id = ".$body->idnotatki."
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                { 
                $row = $wynik->fetch_assoc();
                $tytul = $row['tytul'];
                $stan = $row['stan'] + 1; if ($stan > 2) {$stan = 0;}
                $stanText = array ('dostępna', 'usunięta', 'uszkodzona');
                $sql = "
                    UPDATE
                    notatki_tr
                    SET
                    stan = ".$stan."
                    WHERE
                    id = ".$body->idnotatki."
                ";
                if ($conn->query($sql) === TRUE) 
                {
                    $result = array ("wynik"=>true,"idnotatki"=>$body->idnotatki,"idtablica"=>$body->idtablica, "stan"=>($stan==0), "error"=>'zmieniono stan wersji notatki: "'.$row['tytul'].'" na: '.$stanText[$stan], "stanText"=>$stanText[$stan], "kierunek"=>$body->kierunek);
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>false,  "error"=>'błąd zapisu stanu wersji');                
                }
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>false, "error"=>"problem ze odczytem stanu wersji");
                }
            $conn->close();        
            }    
            elseif ($body->kierunek == 'set')
            { //set
                $sql = "
                    UPDATE
                    notatki_tr
                    SET
                    tresc = '".$body->tresc."'
                    WHERE
                    id = ".$body->idnotatki."
                ";
                if ($conn->query($sql) === TRUE) 
                {
                    $result = array ("wynik"=>true,"idnotatki"=>$body->idnotatki,"idtablica"=>$body->idtablica, "error"=>'zmieniono treść  notatki', "kierunek"=>$body->kierunek, "tresc"=>$body->tresc);
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>false,  "error"=>'błąd zapisu treści notatki');                
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
    $result = array("wynik"=>false, "stan"=>false, "error"=>"problem z połączeniem");
    echo ($e);
}
echo json_encode($result);     
?>