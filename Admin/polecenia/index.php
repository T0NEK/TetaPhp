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
        //$body = (object) array ('stan' => 2);
        if (isset($body))
        {
        switch (strtoupper($body->stan)) 
                    {
                        case '0':
                            $wiersz = 'wylogowany = 1 ';
                            break;   
                        default:
                            $wiersz = 'zalogowany = 1';
                            break;
                    }
         //get
                $sql = 
                "SELECT
                    nazwa,
                    czas,
                    dzialania,
                    autoryzacja,
                    polecenie,
                    komunikat
                    FROM
                    polecenia
                    where
                    ".$wiersz."
                    AND substring(uprawnienia,".$body->stan.",1) = '1' 
                    ORDER BY
                    nazwa
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $polecenia = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $polecenie = array ("nazwa"=>$row['nazwa'], "czas"=>$row['czas'], "dzialanie"=>$row['dzialania'], "autoryzacja"=>($row['autoryzacja']==1), "polecenie"=>($row['polecenie']==1), "komunikat"=>$row['komunikat'], "nastepnyTrue"=>"brak", "nastepnyFalse"=>"brak");
                array_push($polecenia,$polecenie);
                }
                $result = array ("wynik"=>true, "stan"=>"ok", "polecenia"=>$polecenia);
                $conn->close();   
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>"0 wyników");      
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