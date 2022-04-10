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
        //$body = (object) array ( 'kierunek'=>'del', 'stan' => 2, 'tytul' => '1644743771H5V129934757909' );
        //$body = (object) array ( 'kierunek'=>'dos', 'stan' => 2, 'id' => '1645281249H4D60875406213' );
        //$body = (object) array ( 'kierunek'=>'getudo', 'stan' => 2, 'tytul' => '1644743771H5V129934757909', 'imie' => 'Borys', 'nazwisko' => 'Gulkov' );
        //$body = (object) array ( 'kierunek'=>'dos', 'stan' => 2, 'idnotatki' => 33 );
        //$body = (object) array ( 'kierunek'=>'setdel', 'stan' => 0, 'idnotatki' => 33 );
        //$body = (object) array ( 'kierunek'=>'setstan', 'stan' => 0, 'idnotatki' => 37, 'idtablica'=>0 );
        //$body = (object) array ( 'kierunek'=>'setudo', 'stan' => 0, 'idnotatki' => 37, 'idtablica'=>0 );
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {
if ($body->kierunek == 'get')    
            {//get get
                $sql = 
                "   SELECT
                        notatki_ng.id,
                        notatki_ng.identyfikator,
                        notatki_ng.tytul,
                        notatki_ng.wlasciciel,
                        notatki_ng.czas as czas,
                        'własna' as wlascicielText,
                        notatki_ng.stan,
                        CASE notatki_ng.stan WHEN 0 THEN 'dostępna'
                                        WHEN 1 THEN 'usunięta'
                                        ELSE 'uszkodzona'
                        END as stanText,
                        blokadastan,
                        blokadaudo                    
                    FROM
                        notatki_ng
                    WHERE
                        notatki_ng.wlasciciel = ".$body->stan."
                UNION ALL
                    (SELECT
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
                        END as stanText,
                        blokadastan,
                        blokadaudo                         
                    FROM
                        notatki_ng,
                        osoby,
                        notatki_udo
                    WHERE
                        notatki_udo.osoby = ".$body->stan." 
                        AND notatki_udo.del = 0
                        AND notatki_ng.id  = notatki_udo.notatki_ng
                        AND osoby.id = notatki_ng.wlasciciel
                        )
                    ORDER BY
                        czas desc        
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $notatki = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $notatka = array ("id"=>$row['id'],"identyfikator"=>$row['identyfikator'], "tytul"=>$row['tytul'], "wlascicielText"=>$row['wlascicielText'], "wlasciciel"=>$row['wlasciciel'], "stan"=>($row['stan']==0), "stanText"=>$row['stanText'], "czas"=>$row['czas'], "blokadastan"=>($row['blokadastan']==1), "blokadaudo"=>($row['blokadaudo']==1));
                array_push($notatki,$notatka);
                }
                $result = array ("wynik"=>true, "stan"=>true, "notatki"=>$notatki, "error"=>"wczytano: ".$wynik->num_rows);
                }
                else
                {
                    $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak dostepnych notatek");      
                }
            $conn->close();   
            }
elseif ($body->kierunek == 'getudo')
            {//get dos
                $sql = "
                SELECT
                notatki_ng.wlasciciel,
                os.id as idosoby,
                os.kolejnosc,
                IFNULL(udo.id,0) as idudo,
                udo.czas,
                CASE IFNULL(udo.id,0) WHEN 0 THEN 'niewidoczna'
                                      ELSE 'widoczna'
                        END as stanudo                    
                FROM
                notatki_ng,
                (   SELECT id, kolejnosc
                    FROM osoby
                    WHERE user > 0
                )os
                LEFT JOIN
                (   SELECT id, czas, osoby
                    FROM notatki_udo
                    WHERE notatki_ng = ".$body->idnotatki." AND del = 0   
                )udo
                ON os.id = udo.osoby
                WHERE
                notatki_ng.id = ".$body->idnotatki."
                ORDER BY
                os.kolejnosc
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                    {
                    $notatki = array ();    
                    while ($row = $wynik->fetch_assoc())
                    {
                    $notatka = array ("idosoby"=>$row['idosoby'], "idudo"=>$row['idudo'], "czas"=>$row['czas'], "stanudo"=>$row['stanudo'], "autor"=>$row['wlasciciel']);
                    array_push($notatki,$notatka);
                    }
                    $result = array ("wynik"=>true, "stan"=>true, "notatki"=>$notatki, "error"=>"wczytano dostęp: ".$wynik->num_rows);
                    }
                    else
                    {
                        $result = array ("wynik"=>false, "stan"=>false, "error"=>"problem ze sprawdzeniem udostępnień");   
                    }
            $conn->close();     
            }
 elseif ($body->kierunek == 'setdel')
            {//set del
                $sql = "
                SELECT
                    stan,
                    tytul    
                FROM
                    notatki_ng
                WHERE
                    id = '".$body->idnotatki."'
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                    $row = $wynik->fetch_assoc();
                    $stan = $row['stan'] + 1; if ($stan > 2) {$stan = 0;}
                    $stanText = array ('dostępna', 'usunięta', 'uszkodzona');
                    $time = time();
                    $czasserwera = date("Y-m-d H:i:s",$time);
                    $sql = "
                    UPDATE
                    notatki_ng
                    SET
                    stan = ".$stan.",
                    czas = '".$czasserwera."'
                    WHERE
                    id = ".$body->idnotatki."
                    ";
                    if ($conn->query($sql) === TRUE) 
                    {
                    $result = array ("wynik"=>true,"idnotatki"=>$body->idnotatki,"idtablica"=>$body->idtablica, "stan"=>($stan==0), "error"=>'zmieniono stan notatki: "'.$row['tytul'].'" na: '.$stanText[$stan], "stanText"=>$stanText[$stan], "kierunek"=>$body->kierunek);
                    }
                    else
                    {
                        $result = array ("wynik"=>false, "stan"=>false,  "error"=>'błąd zapisu stanu notatki');                
                    }
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>false, "error"=>"problem ze odczytem stanu notatki");
                }
            $conn->close();     
            }
    elseif ($body->kierunek == 'setwer')
            { //nowa   
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
                            '".$body->idnotatka."',
                            ".$body->wersja.",
                            0,
                            '".$body->czas."',
                            ''
                            )
                        ";
                        ;
                if ($conn->query($sql) === TRUE) 
                { $result = array ("wynik"=>true, "stan"=>$body->stan, "error"=>"utworzono wersję: ".$body->wersja." notatki", "kierunek"=>$body->kierunek); }
                else 
                { $result = array ("wynik"=>false, "stan"=>$body->stan,  "error"=>'błąd zapisu nowej wersji notatki', "kierunek"=>$body->kierunek); }
            $conn->close();     
            }
    elseif ($body->kierunek == 'setnowa')
            { //nowa   
                $sql = "SELECT max(id) as idmax FROM notatki_ng";
                $wynik = $conn->query($sql); 
                $time = time();
                if ($wynik->num_rows > 0) 
                    { $row = $wynik->fetch_assoc();
                        $identyfikator = $time.chr($body->stan + 70).$row['idmax'].chr(rand(65,90)).$time*rand(1,100); }
                    else                
                    { $identyfikator = $time.chr($body->stan + 70).'666'.chr(rand(65,90)).$time*rand(1,100); }
                $conn->autocommit(false);
                $sql = "
                INSERT INTO notatki_ng
                (
                identyfikator,    
                tytul,
                wlasciciel,
                czas,
                stan,
                blokadastan,
                blokadaudo
                )
                VALUES
                ('".$identyfikator."',
                    '".$body->tytul."',
                    '".$body->stan."',
                    '".$body->czas."',
                    0,
                    0,
                    0
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
                            '".$body->czas."',
                            ''
                            )
                        ";
                        $conn->query($sql);
                if ($conn->commit() === TRUE) 
                { $result = array ("wynik"=>true, "stan"=>$body->stan, "error"=>"utworzono notatkę o identyfikatorze: ".$identyfikator, "kierunek"=>$body->kierunek); }
                else 
                { $result = array ("wynik"=>false, "stan"=>$body->stan,  "error"=>'błąd zapisu nowej notatki', "kierunek"=>$body->kierunek); }
                }
                $conn->close();     
            }   
elseif ($body->kierunek == 'setstan')
                {
                    $sql = "
                    SELECT
                    blokadastan as stan,
                        tytul    
                    FROM
                        notatki_ng
                    WHERE
                        id = '".$body->idnotatki."'
                    ";
                    $wynik = $conn->query($sql); 
                    if ($wynik->num_rows > 0) 
                    {
                        $row = $wynik->fetch_assoc();
                        if ($row['stan'] == 0) { $stan = 1;} else { $stan = 0;}
                        $time = time();
                        $czasserwera = date("Y-m-d H:i:s",$time);
                        $sql = "
                        UPDATE
                        notatki_ng
                        SET
                        blokadastan = ".$stan.",
                        czas = '".$czasserwera."'
                        WHERE
                        id = ".$body->idnotatki."
                        ";
                        if ($conn->query($sql) === TRUE) 
                        {
                        $result = array ("wynik"=>true,"idnotatki"=>$body->idnotatki,"idtablica"=>$body->idtablica, "stan"=>($stan==1), "error"=>'zmieniono możliwość usunięcia notatki: "'.$row['tytul'].'" na: '.($stan==1 ? 'Tak' : 'Nie'), "stanText"=>"", "kierunek"=>$body->kierunek);
                        }
                        else
                        {
                            $result = array ("wynik"=>false, "stan"=>false,  "error"=>'błąd zapisu stanu notatki');                
                        }
                    }
                    else
                    {
                        $result = array ("wynik"=>false, "stan"=>false, "error"=>"problem ze odczytem stanu notatki");
                    }
                
                $conn->close(); 
                }
elseif ($body->kierunek == 'setudo')                   
                {
                $sql = "
                SELECT
                blokadaudo as stan,
                    tytul    
                FROM
                    notatki_ng
                WHERE
                    id = '".$body->idnotatki."'
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                    $row = $wynik->fetch_assoc();
                    if ($row['stan'] == 0) { $stan = 1;} else { $stan = 0;}
                    $time = time();
                    $czasserwera = date("Y-m-d H:i:s",$time);
                    $sql = "
                    UPDATE
                    notatki_ng
                    SET
                    blokadaudo = ".$stan.",
                    czas = '".$czasserwera."'
                    WHERE
                    id = ".$body->idnotatki."
                    ";
                    if ($conn->query($sql) === TRUE) 
                    {
                    $result = array ("wynik"=>true,"idnotatki"=>$body->idnotatki,"idtablica"=>$body->idtablica, "stan"=>($stan==1), "error"=>'zmieniono blokadę udostępnienia notatki: "'.$row['tytul'].'" na: '.($stan==1 ? 'Tak' : 'Nie'), "stanText"=>"", "kierunek"=>$body->kierunek);
                    }
                    else
                    {
                        $result = array ("wynik"=>false, "stan"=>false,  "error"=>'błąd zapisu stanu notatki');                
                    }
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>false, "error"=>"problem ze odczytem stanu notatki");
                }
            
            $conn->close();     
            }   
elseif($body->kierunek =='udonot')
        {
        $sql = "
        SELECT
            notatki_udo.id,
            notatki_udo.del,
            osoby.imie,
            osoby.nazwisko
        FROM    
            notatki_udo,
            osoby
        WHERE  
                notatki_udo.notatki_ng = ".$body->idnotatki."
            AND notatki_udo.osoby = ".$body->stan."
            AND osoby.id = notatki_udo.osoby
        ";
        $wynik = $conn->query($sql); 
        if ($wynik->num_rows > 0) 
        { 
        $row = $wynik->fetch_assoc();
        $del = ($row['del'] == 0 ? 1 : 0 );
        $imie = $row['imie'];
        $nazwisko = $row['nazwisko'];
        $sql = "
            UPDATE
            notatki_udo
            SET
            del = ".$del."
            WHERE
            id = ".$row['id']."
        ";
        }
        else
        {
        $del = 0;
        $sql = "
            INSERT INTO notatki_udo
            (
                notatki_ng,
                osoby,
                del
            )
            VALUES
            (
                ".$body->idnotatki.",
                ".$body->stan.",
                ".$del."
            )
        ";
        }
        if ($conn->query($sql) === TRUE) 
        {
            if ($del == 0)
            {
            $error = "notatka została udostepniona dla ".$imie.' '.$nazwisko;
            }
            else
            {
            $error = $imie.' '.$nazwisko." cofnięto dostęp do notatki ";
            }
            $sql = "
            SELECT
            notatki_ng.wlasciciel,
            os.id as idosoby,
            os.kolejnosc,
            IFNULL(udo.id,0) as idudo,
            udo.czas,
            CASE IFNULL(udo.id,0) WHEN 0 THEN 'niewidoczna'
                                  ELSE 'widoczna'
                    END as stanudo                    
            FROM
            notatki_ng,
            (   SELECT id, kolejnosc
                FROM osoby
                WHERE user > 0
            )os
            LEFT JOIN
            (   SELECT id, czas, osoby
                FROM notatki_udo
                WHERE notatki_ng = ".$body->idnotatki." AND del = 0   
            )udo
            ON os.id = udo.osoby
            WHERE
            notatki_ng.id = ".$body->idnotatki."
            ORDER BY
            os.kolejnosc
            ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
                {
                $notatki = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $notatka = array ("idosoby"=>$row['idosoby'], "idudo"=>$row['idudo'], "czas"=>$row['czas'], "stanudo"=>$row['stanudo'], "autor"=>$row['wlasciciel']);
                array_push($notatki,$notatka);
                }
                $result = array ("wynik"=>true, "stan"=>true, "notatki"=>$notatki, "error"=>$error);
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>false, "error"=>"problem ze sprawdzeniem udostępnień");   
                }
        $conn->close();     
        }
        
        else
        {
            $result = array ("wynik"=>false, "stan"=>false,  "error"=>'błąd zapisu stanu notatki');                
        }
        //$conn->close();
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