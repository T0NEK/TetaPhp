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
        //$body = (object) array ( 'kierunek'=>'set', 'stan' => 2, 'tytul' => 'notatka nowa' 'czas' => '2024-02-02 12:20:12' );
        //$body = (object) array ( 'kierunek'=>'get', 'stan' => 2, 'tytul' => 'notatka nowa' );
        //$body = (object) array ( 'kierunek'=>'del', 'stan' => 2, 'tytul' => '1644743771H5V129934757909' );
        //$body = (object) array ( 'kierunek'=>'dos', 'stan' => 2, 'id' => '1645281249H4D60875406213' );
        //$body = (object) array ( 'kierunek'=>'udo', 'stan' => 2, 'tytul' => '1644743771H5V129934757909', 'imie' => 'Borys', 'nazwisko' => 'Gulkov' );
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
                        END as stanText                    
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
                        END as stanText                    
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
                $notatka = array ("id"=>$row['id'],"identyfikator"=>$row['identyfikator'], "tytul"=>$row['tytul'], "wlascicielText"=>$row['wlascicielText'], "wlasciciel"=>$row['wlasciciel'], "stan"=>($row['stan']==0), "stanText"=>$row['stanText'], "czas"=>$row['czas']);
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
            elseif ($body->kierunek == 'dos')
            {//get dos
                $sql = "
                SELECT
                    notatki_ng.id,
                    notatki_ng.wlasciciel,
                    notatki_ng.stan,
                    CASE notatki_ng.stan WHEN 0 THEN 'dostępna'
                                        WHEN 1 THEN 'usunięta'
                                        ELSE 'uszkodzona'
                        END as stanText
                FROM
                    notatki_ng
                WHERE
                    notatki_ng.identyfikator = '".$body->id."'
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                    { 
                    $row = $wynik->fetch_assoc();
                    if ( $row['wlasciciel'] == $body->stan)
                    {
                        if ($row['stan'] > 0 )
                        {
                            $result = array ("wynik"=>true, "stan"=>false, "error"=>"notatka o identyfikatorze: ".$body->id." jest: ".$row['stanText']);
                        }
                        else
                        {
                            $idnotatki = $row['id'];
                            $sql = "
                            SELECT
                                notatki_udo.czas,
                                osoby.id,
                                osoby.imie,
                                osoby.nazwisko,
                                osoby.funkcja
                            FROM    
                                notatki_udo,
                                osoby
                            WHERE  
                                notatki_ng = ".$idnotatki."
                                AND osoby.id = notatki_udo.osoby 
                                AND del = 0
                            ";
                            $wynik = $conn->query($sql); 
                            if ($wynik->num_rows > 0) 
                                {
                                $notatki = array ();    
                                while ($row = $wynik->fetch_assoc())
                                {
                                $notatka = array ("id"=>$row['id'],"identyfikator"=>"", "tytul"=>$row['funkcja'], "wlascicielText"=>$row['nazwisko'], "wlasciciel"=>0, "stan"=>false, "stanText"=>$row['imie'], "czas"=>$row['czas']);
                                array_push($notatki,$notatka);
                                }
                                $result = array ("wynik"=>true, "stan"=>true, "notatki"=>$notatki, "error"=>"wczytano: ".$wynik->num_rows);
                                }
                                else
                                {
                                    $result = array ("wynik"=>true, "stan"=>false, "error"=>"notatka o identyfikatorze: ".$body->id." nie jest udostepniana");   
                                }
                        }
                    }
                    else
                    {
                        $result = array ("wynik"=>true, "stan"=>false, "error"=>"nie jesteś autorem notatki o id: ".$body->id);
                    }
                    }
                    else
                    {
                        $result = array ("wynik"=>true, "stan"=>false, "error"=>"nie znaleziono notatki o id: ".$body->id);
                    }
                $conn->close();     
            }
            elseif ($body->kierunek == 'del')
            {//skasuj
                $sql = "
                SELECT
                    notatki_ng.id,
                    notatki_ng.wlasciciel,
                    notatki_ng.stan,
                    CASE notatki_ng.stan WHEN 0 THEN 'dostępna'
                                        WHEN 1 THEN 'usunięta'
                                        ELSE 'uszkodzona'
                        END as stanText,
                    notatki_ng.blokadastan
                FROM
                    notatki_ng
                WHERE
                    notatki_ng.identyfikator = '".$body->tytul."'
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                    { 
                    $row = $wynik->fetch_assoc();
                    if ( $row['wlasciciel'] == $body->stan)
                    {
                        if ($row['stan'] > 0 )
                        {
                            $result = array ("wynik"=>true, "stan"=>false, "error"=>"notatka o identyfikatorze: ".$body->tytul." jest: ".$row['stanText']);
                        }
                        else
                        {
                            if ($row['blokadastan'] == 0)
                            {
                            $sql = "
                            UPDATE
                            notatki_ng
                            SET
                            stan = 1
                            WHERE
                            id = ".$row['id']."
                            ";
                            if ($conn->query($sql) === TRUE) 
                            {
                                $result = array ("wynik"=>true, "stan"=>true, "error"=>"notatka o id: ".$body->tytul." została usunięta");
                            }
                            else
                            {
                                { $result = array ("wynik"=>false, "stan"=>false,  "error"=>'błąd zapisu stanu notatki'); }                
                            }
                            }
                            else 
                            {
                                $result = array ("wynik"=>true, "stan"=>false, "error"=>"problem z usunięciem notatki o id: ".$body->tytul);
                            }
                        }
                    }
                    else
                    {
                        $result = array ("wynik"=>true, "stan"=>false, "error"=>"nie jesteś autorem notatki o id: ".$body->tytul);
                    }
                    }
                    else
                    {
                        $result = array ("wynik"=>true, "stan"=>false, "error"=>"nie znaleziono notatki o id: ".$body->tytul);
                    }
                $conn->close();     
            }
            elseif ($body->kierunek == 'udo')
            {//udostępnienie
                $sql = "
                SELECT
                    notatki_ng.id,
                    notatki_ng.wlasciciel,
                    notatki_ng.stan,
                    CASE notatki_ng.stan WHEN 0 THEN 'dostępna'
                                        WHEN 1 THEN 'usunięta'
                                        ELSE 'uszkodzona'
                        END as stanText,
                    notatki_ng.blokadaudo
                FROM
                    notatki_ng
                WHERE
                    notatki_ng.identyfikator = '".$body->tytul."'
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                    { 
                    $row = $wynik->fetch_assoc();
                    if ( $row['wlasciciel'] == $body->stan)
                    {
                        if ($row['stan'] > 0 )
                        {
                            $result = array ("wynik"=>true, "stan"=>false, "error"=>"notatka o identyfikatorze: ".$body->tytul." jest: ".$row['stanText']);
                        }
                        else
                        {
                            if ($row['blokadaudo'] == 0)
                            {
                            $idnotatki = $row['id'];    
                            $sql = "
                            SELECT
                                id
                            FROM
                                osoby
                            WHERE
                            lower(imie) = lower(trim('".$body->imie."'))
                            AND lower(nazwisko) = lower(trim('".$body->nazwisko."'))
                            ";
                            $wynik = $conn->query($sql); 
                            if ($wynik->num_rows > 0) 
                            { 
                            $row = $wynik->fetch_assoc();
                            $idosoby = $row['id'];
                                if ($idosoby == $body->stan)
                                {
                                    $result = array ("wynik"=>true, "stan"=>false, "error"=>"nie ma potrzeby udostepniania sobie własnej notatki");
                                }
                                else
                                {
                                $sql = "
                                SELECT
                                    id,
                                    del
                                FROM    
                                    notatki_udo
                                WHERE  
                                    notatki_ng = ".$idnotatki."
                                    AND osoby = ".$idosoby."
                                ";
                                $wynik = $conn->query($sql); 
                                if ($wynik->num_rows > 0) 
                                { 
                                $row = $wynik->fetch_assoc();
                                $del = ($row['del'] == 0 ? 1 : 0 );
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
                                        ".$idnotatki.",
                                        ".$idosoby.",
                                        ".$del."
                                    )
                                ";
                                }
                                if ($conn->query($sql) === TRUE) 
                                {
                                    if ($del == 0)
                                    {
                                    $result = array ("wynik"=>true, "stan"=>true, "error"=>"notatka o id: ".$body->tytul." została udostepniona dla: ".$body->imie." ".$body->nazwisko);
                                    }
                                    else
                                    {
                                    $result = array ("wynik"=>true, "stan"=>true, "error"=>"notatce o id: ".$body->tytul." cofnięto udostepnienie dla: ".$body->imie." ".$body->nazwisko);
                                    }
                                }
                                else
                                {
                                    { $result = array ("wynik"=>false, "stan"=>false,  "error"=>'błąd zapisu udostępnienia notatki'); }                
                                }   
                                } 
                            }
                            else
                            {
                                $result = array ("wynik"=>true, "stan"=>false, "error"=>"nie znaleziono osoby: ".$body->imie." ".$body->nazwisko);
                            }
                            }
                            else 
                            {
                                $result = array ("wynik"=>true, "stan"=>false, "error"=>"problem z udostępnieniem notatki o id: ".$body->tytul);
                            }
                        }
                    }
                    else
                    {
                        $result = array ("wynik"=>true, "stan"=>false, "error"=>"nie jesteś autorem notatki o id: ".$body->tytul);
                    }
                    }
                    else
                    {
                        $result = array ("wynik"=>true, "stan"=>false, "error"=>"nie znaleziono notatki o id: ".$body->tytul);
                    }
                $conn->close();     
            }
            else
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