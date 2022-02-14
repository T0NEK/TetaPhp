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
        //$body = (object) array ('kierunek'=>'get', 'stan' => 2, 'notatka' => 1);
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {
        if ($body->kierunek == 'get')    
            {//get
            $sql = 
            "SELECT
            id
            FROM
            notatki_ng
            WHERE
            id = ".$body->notatka."
            AND (
                wlasciciel = ".$body->stan."
                OR substring(udostepnienie,".$body->stan.",1) = '1' 
                )
            ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
            {
            $row = $wynik->fetch_assoc();
            $id = $row['id'];
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
                $result = array ("wynik"=>true, "stan"=>true, "notatki"=>$notatki, "wersja"=>$idmax, "error"=>"wczytano: ".$wynik->num_rows." pozycje");
                }
                else
                {
                    $result = array ("wynik"=>true, "stan"=>false, "error"=>"treść notatki niedostepna");
                }
               
            }
            else
            {//set brak notatek
                $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak dostepnych notatek");      
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