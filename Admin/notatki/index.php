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
        //$body = (object) array ( 'kierunek'=>'set', 'stan' => 2, 'tytul' => 'notatka nowa' );
        //$body = (object) array ( 'kierunek'=>'get', 'stan' => 2, 'tytul' => 'notatka nowa' );
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
                    (
                    notatki_ng.wlasciciel = ".$body->stan."
                    OR substring(notatki_ng.udostepnienie,".$body->stan.",1) = '1' 
                    )
                    AND osoby.id = notatki_ng.wlasciciel
                    ORDER BY
                    notatki_ng.czas desc
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $notatki = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $notatka = array ("id"=>$row['id'],"identyfikator"=>$row['identyfikator'], "tytul"=>$row['tytul'], "wlascicielText"=>$row['wlascicielText'], "wlasciciel"=>$row['wlasciciel'], "stan"=>($row['stan']==0), "stanText"=>$row['stanText'], "czas"=>$row['czas']);
                array_push($notatki,$notatka);
                }
                $result = array ("wynik"=>true, "stan"=>true, "notatki"=>$notatki, "error"=>"wczytano: ".$wynik->num_rows);
                $conn->close();   
                }
                else
                {
                    $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak dostepnych notatek");      
                }
            }
            else
            {//set
                $time = time();
                $czasserwera = date("Y-m-d H:i:s",$time);
                $sql = 
                "SELECT max(id) as idmax FROM notatki_ng";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                    { $row = $wynik->fetch_assoc();
                      $identyfikator = $time.chr($body->stan + 70).$row['idmax'].chr(rand(65,90)).$time*rand(1,100); }
                    else                
                    { $identyfikator = $time.chr($body->stan + 70).'666'.chr(rand(65,90)).$time*rand(1,100); }
                $conn->autocommit(false);
                $sql = "INSERT 
                INTO notatki_ng
                (
                identyfikator,    
                tytul,
                wlasciciel,
                czas,
                stan,
                udostepnienie
                )
                VALUES
                ('".$identyfikator."',
                 '".$body->tytul."',
                 '".$body->stan."',
                 '".$czasserwera."',
                 '0',
                 '10000000000'
                 )
                ";
                if ($conn->query($sql) === TRUE) 
                { 
                        $id = $conn->insert_id;
                        $sql = "INSERT 
                        INTO notatki_tr
                        (
                        notatki_ng,
                        wersja,
                        stan,
                        czas,
                        tresc
                        )
                        VALUES
                        (
                         '".$id."',
                         0,
                         0,
                         '".$czasserwera."',
                         ''
                         )
                        ";
                        $conn->query($sql);
                if ($conn->commit() === TRUE) 
                { $result = array ("wynik"=>true, "stan"=>true, "error"=>$identyfikator); }
                else 
                { $result = array ("wynik"=>false, "stan"=>false,  "error"=>'błąd zapisu'); }
                }
                $conn->close();    
            }   
        }
        else
        {
            $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak danych");      
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