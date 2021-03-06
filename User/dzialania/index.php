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
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {
        switch (strtoupper($body->stan)) 
                    {
                        case '0':
                            $wiersz = 'polecenia.wylogowany = 1 ';
                            break;   
                        default:
                            $wiersz = 'polecenia.zalogowany = 1';
                            break;
                    }
         //get
                $sql = 
                "SELECT
                    dzialania.nazwa,
                    dzialania.czas,
                    dzialania.dzialanie,
                    dzialania.prefix,
                    dzialania.komunikat,
                    dzialania.sufix,
                    dzialania.nastepnyTrue,
                    dzialania.nastepnyFalse
                    FROM
                    dzialania,
                    polecenia
                    where
                    ".$wiersz."
                    AND polecenia.nazwa = dzialania.polecenia
                    OR dzialania.polecenia = 'dedal'
                    order by
                    dzialania.nazwa
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $polecenia = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $polecenie = array ("nazwa"=>$row['nazwa'], "czas"=>$row['czas'], "dzialanie"=>$row['dzialanie'], "autoryzacja"=>false, "polecenie"=>true, "prefix"=>$row['prefix'], "komunikat"=>$row['komunikat'], "sufix"=>$row['sufix'], "nastepnyTrue"=>$row['nastepnyTrue'], "nastepnyFalse"=>$row['nastepnyFalse']);
                array_push($polecenia,$polecenie);
                }
                $result = array ("wynik"=>true, "stan"=>"ok", "polecenia"=>$polecenia);
                $conn->close();   
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>"0 wynik??w");      
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