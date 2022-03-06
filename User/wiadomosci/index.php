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
    //$body = (object) array ('get' => 'osoby');    
    //$body = (object) array ('get' => 'wiad', "odbiorca"=>2);    
    $body = json_decode(file_get_contents("php://input"));
    if (isset($body))
    {
        if ($body->get == 'wiad')
        {
        $sql = 
        "
        SELECT
            id,
            autor,
            autorText,
            odbiorca,
            odbiorcaText,
            tresc,
            czas,
            przeczytana
        FROM
            wiadomosci
        WHERE
            odbiorca = ".$body->odbiorca."
            OR autor = ".$body->odbiorca."
        ORDER BY
            czas
        ";
        $wynik = $conn->query($sql); 
        if ($wynik->num_rows > 0) 
        {
        $wiadomosci = array ();    
        while ($row = $wynik->fetch_assoc())
        {
        $wiadomosc = array ( "id"=>$row['id'], "autor"=>$row['autor'], "autorText"=>$row['autorText'], "odbiorca"=>$row['odbiorca'], "odbiorcaText"=>$row['odbiorcaText'], "tresc"=>$row['tresc'], "czas"=>$row['czas'], "przeczytana"=>($row['przeczytana']==1));
        array_push($wiadomosci,$wiadomosc);
        }
        $result = array ("wynik"=>true,"kierunek"=>$body->get,"wiadomosci"=>$wiadomosci);
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
        ORDER BY
            kolejnosc
        ";
        $wynik = $conn->query($sql); 
        if ($wynik->num_rows > 0) 
        {
        $osoby = array ();    
        while ($row = $wynik->fetch_assoc())
        {
        $osoba = array ( "id"=>$row['id'], "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "funkcja"=>$row['funkcja'], "widoczny"=>($row['user']<3), "wybrany"=>true);
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
    echo ($e);
}
echo json_encode($result);     
?>