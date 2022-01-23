<?php

require_once "../../connect.php";

try
{
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) 
    { throw new Exception( $conn->connect_error); } 
    else
    {
         //get
            $sql = "SELECT wartosc from ustawienia WHERE id=5"; 
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
            {
                $row = $wynik->fetch_assoc();
                $start = $row['wartosc'];
                if ($start == 'START') {$warunek = 'TRUE';} else {$warunek = 'FALSE';}   
                $sql = 
                "SELECT
                    id,
                    imie,
                    nazwisko,
                    funkcja,
                    IF (".$warunek.",zalogowanynew,zalogowanyorg) as zalogowany,
                    IF (".$warunek.",blokadanew,blokadaorg) as blokada,
                    IF (".$warunek.",hannahnew,hannahorg) as hannah
                    FROM
                    osoby
                    where
                    user = 1 OR
                    user = 2
                    ORDER BY
                    kolejnosc
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $osoby = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $osoba = array ("id"=>$row['id'], "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "funkcja"=>$row['funkcja'], "zalogowany"=>($row['zalogowany']==1), "blokada"=>($row['blokada']==1), "hannah"=>($row['hannah']==1));
                array_push($osoby,$osoba);
                }
                $result = array ("wynik"=>true,"stan"=>$start,"osoby"=>$osoby);
                $conn->close();   
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>"0 wyników");      
                }
            
            }
            else
            {
                $result = array ("wynik"=>false, "stan"=>"0 wyników");
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