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
                $sql = 
                "SELECT
                    polecenia.id,
                    polecenia.nazwa,
                    polecenia.zalogowany,
                    polecenia.wylogowany,
                    polecenia.polecenie
                    polecenia.czas,
                    polecenia.dzialania,
                    CASE polecenia.id WHEN polecenia.polecenie THEN '-----'
                                           ELSE poleceniaorg.nazwa
                                           END as nazwaOrg,
                    polecenia.komunikat
                    FROM
                    polecenia,
                    polecenia poleceniaorg
                    WHERE
                    poleceniaorg.id = polecenia.polecenie
                    ORDER BY
                    nazwa
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $polecenia = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $polecenie = array ("id"=>$row['id'], "nazwa"=>$row['nazwa'], "zalogowany"=>$row['zalogowany'], "wylogowany"=>$row['wylogowany'], "polecenie"=>$row['polecenie'], "czas"=>$row['czas'], "dzialania"=>$row['dzialania'], "nazwaOrg"=>$row['nazwaOrg'], "komunikat"=>$row['komunikat']);
                array_push($polecenia,$polecenie);
                }
                $result = array ("wynik"=>true, "stan"=>true, "polecenia"=>$polecenia, "error"=>"wczytano".$wynik->num_rows);
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>false, "error"=>"problem z wczytaniem");      
                }
    $conn->close();               
    }    
    
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>false, "stan"=>"error", "error"=>$e);
    echo ($e);
}
echo json_encode($result);     
?>