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
    //$body = (object) array ('get' => 'prze', "odbiorca"=>3, "przeczytane"=>'0,8', "odczytane"=>10);    
    //$body = (object) array ('get' => 'wiad', "odbiorca"=>3);    
    //$body = (object) array ('get' => 'set', "odbiorca"=>2, "przeczytane"=>'0,8', "tresc"=>'cześć Liy test', "czas"=>'2022-01-01 12:00:00', "odczytane"=>0);    
    $body = json_decode(file_get_contents("php://input"));
    if (isset($body))
    {
if ($body->get == 'set')
        {
        $sql = "
        SELECT
            id,
            imie,
            nazwisko
        FROM
            osoby
        WHERE
            id = ".$body->odbiorca."
        ";
        $wynik = $conn->query($sql); 
        if ($wynik->num_rows == 0) 
            {
                { $result = array ("wynik"=>false, "stan"=>false, "odczytane"=>$body->odczytane,  "error"=>'jakieś problemy z wysłaniem wiadomości'); }
            }       
        else
        { 
        $row = $wynik->fetch_assoc();
        $autorText = $row['imie'].' '.$row['nazwisko'];
        $autorid = $row['id'];
        $sql = "
        SELECT
            id,
            imie,
            nazwisko
        FROM
            osoby
        WHERE
            id in (".$body->przeczytane.")
            AND id > 0
        ";
        $wynik = $conn->query($sql); 
        if ($wynik->num_rows > 0) 
            {
            $conn2 = new mysqli($servername, $username, $password, $dbname);
            $conn2->set_charset("utf8");
            if ($conn2->connect_error) 
            { throw new Exception( $conn2->connect_error); } 
            else
            {        
            $conn2->autocommit(false);
            while ($row = $wynik->fetch_assoc())
            {       
            if ($autorid != $row['id'])                
                {
                $odbiorcaText = $row['imie'].' '.$row['nazwisko'];     
                $sql = "
                INSERT INTO 
                    wiadomosci
                    (
                    autor,
                    autorText,
                    odbiorca,
                    odbiorcaText,
                    tresc,
                    czas,
                    przeczytana,
                    przeczytanaadmin,
                    admindodana
                    )
                VALUES
                    (
                    ".$body->odbiorca.",
                    '".$autorText."',
                    ".$row['id'].",
                    '".$odbiorcaText."',
                    '".$body->tresc."',
                    '".$body->czas."',
                    0,
                    0,
                    1
                    )
                ";
                $conn2->query($sql);
                }
            }
            if ($conn2->commit() === TRUE) 
                { $result = array ("wynik"=>true, "stan"=>true, "odczytane"=>$body->odczytane, "error"=>'wysłano wiadomość'); }
                else 
                { $result = array ("wynik"=>false, "stan"=>false, "odczytane"=>$body->odczytane,  "error"=>'problem z wysłaniem wiadomości'); }
            }  
        }
        }
        $conn->close();
        }
elseif ($body->get == 'prze')
        {
            $sql = "
            UPDATE
            wiadomosci
            SET
            przeczytanaadmin = 1
            WHERE
            id in (".$body->przeczytane.")
            AND id > 0
            ";
            if ($conn->query($sql) === TRUE) 
            {
                $result = array ("wynik"=>true, "stan"=>true, "odczytane"=>$body->odczytane, "error"=>"przeczytano wiadomości (".$body->przeczytane.")");
            }
            else
            {
                { $result = array ("wynik"=>false, "stan"=>false, "odczytane"=>$body->odczytane,  "error"=>'wystepują probley z połączeniem'); }                
            }
        }
elseif ($body->get == 'przeoso')
        {   $sql = 
            "SELECT
                przeczytana
            FROM
                wiadomosci
            WHERE
                id = ".$body->przeczytane."
            ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
            {
            $row = $wynik->fetch_assoc();
            $przeczytana = (($row['przeczytana']) == 1 ? 0 : 1 );
            $sql = "
            UPDATE
            wiadomosci
            SET
            przeczytana = ".$przeczytana."
            WHERE
            id = ".$body->przeczytane."
            AND id > 0
            ";
            if ($conn->query($sql) === TRUE) 
            {
                $result = array ("wynik"=>true, "stan"=>true, "odczytane"=>$body->odczytane, "error"=>"przeczytano wiadomości (".$body->przeczytane.")");
            }
            else
            {
                 $result = array ("wynik"=>false, "stan"=>false, "odczytane"=>$body->odczytane,  "error"=>'wystepują probley z połączeniem'); 
            }
            }
            else
            {
                $result = array ("wynik"=>false, "stan"=>false, "odczytane"=>$body->odczytane,  "error"=>'wystepują probley z odczytem stanu'); 
            }

        }
elseif ($body->get == 'wiad')
        {
        if ( $body->odbiorca == 0 )    
        { $wiersz = " id > 0 "; }
        else
        { $wiersz = " odbiorca = ".$body->odbiorca." OR autor = ".$body->odbiorca." "; }
        $sql = 
        "SELECT
            id,
            autor,
            autorText,
            odbiorca,
            odbiorcaText,
            tresc,
            czas,
            przeczytana,
            przeczytanaadmin,
            admindodana
        FROM
            wiadomosci
        WHERE
            ".$wiersz."
        ORDER BY
            czas
        ";
        $wynik = $conn->query($sql); 
        if ($wynik->num_rows > 0) 
        {
        $odebrane = 0;    
        $wiadomosci = array ();   
        $nadawcy = array (-1); 
        $noweid = array ();
        $nadawcyTxt = array (); 
        $odbiorcy = array (-1);
        $odbiorcyTxt = array (); 
        while ($row = $wynik->fetch_assoc())
        {
        if (($row['przeczytanaadmin']==0))
            {
                array_push($noweid,(1*$row['id']));    
                array_push($nadawcy,(1*$row['autor']));
                array_push($nadawcyTxt,$row['autorText']);
                array_push($odbiorcy,$row['odbiorca']);
                array_push($odbiorcyTxt,$row['odbiorcaText']);        
            }        
/*        if (($row['przeczytanaadmin']==0))
        {
            $odebrane = $odebrane + 1;
            if ( array_search(1*$row['autor'],$nadawcy) == null )
            {
            array_push($nadawcy,(1*$row['autor']));
            array_push($nadawcyTxt,$row['autorText']);
            }
            if ( array_search(1*$row['odbiorca'],$odbiorcy) == null )
            {
            array_push($odbiorcy,$row['odbiorca']);
            array_push($odbiorcyTxt,$row['odbiorcaText']);
            }
        }
*/        $wiadomosc = array ( "id"=>$row['id'], "autor"=>$row['autor'], "autorText"=>$row['autorText'], "odbiorca"=>$row['odbiorca'], "odbiorcaText"=>$row['odbiorcaText'], "tresc"=>array($row['tresc']), "czas"=>$row['czas'], "przeczytana"=>($row['przeczytana']==1), "przeczytanaadmin"=>($row['przeczytanaadmin']==1), "wyslana"=>($row['autor'] == $body->odbiorca), "admin"=>($row['admindodana'] == 1));
        array_push($wiadomosci,$wiadomosc);
        }
        array_shift($nadawcy);
        array_shift($odbiorcy);
        $result = array ("wynik"=>true,"kierunek"=>$body->get,"wiadomosci"=>$wiadomosci, "ilosc"=>$wynik->num_rows, "odebrane"=>$odebrane, "nadawcy"=>$nadawcy, "nowe"=>$noweid, "nadawcyTxt"=>$nadawcyTxt, "odbiorcyTxt"=>$odbiorcyTxt, "odbiorcy"=>$odbiorcy);
        $conn->close();   
        }
        else
        {
            $result = array ("wynik"=>false, "stan"=>"0 wiadomości");      
        }
        }
elseif ($body->get == 'osoby')
        {
        $sql = 
        "SELECT
            id,
            imie,
            nazwisko,
            funkcja,
            user
        FROM
            osoby
        WHERE
            user > 0  
            AND id <> ".$body->odbiorca."  
        ORDER BY
            kolejnosc
        ";
        $wynik = $conn->query($sql); 
        if ($wynik->num_rows > 0) 
        {
        $osoby = array ();    
        while ($row = $wynik->fetch_assoc())
        {
        $osoba = array ( "id"=>$row['id'], "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "funkcja"=>$row['funkcja'], "widoczny"=>($row['user']<3), "wybrany"=>false, "nowe"=>false);
        array_push($osoby,$osoba);
        }
        $result = array ("wynik"=>true,"kierunek"=>$body->get,"osoby"=>$osoby);
        $conn->close();   
        }
        else
        {
            $result = array ("wynik"=>false, "stan"=>"0 wyników");      
        }
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
    $result = array("wynik"=>false, "stan"=>"error", "error"=>$e);
    //echo ($e);
}
echo json_encode($result);     
?>