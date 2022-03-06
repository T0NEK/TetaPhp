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
        //$body = (object) array ('stan' => 2);
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {
        switch (strtoupper($body->stan)) 
                    {
                        case '0':
                            $wiersz0 = '';
                            $wiersz1 = 'poleceniaorg.wylogowany = 1 ';
                            $wiersz2 = '';
                            break;   
                        default:
                            $wiersz0 = ', polecenia_osoby';
                            $wiersz1 = 'poleceniaorg.zalogowany = 1 ';
                            $wiersz2 = "AND polecenia_osoby.polecenia =  poleceniaorg.id AND polecenia_osoby.osoby = ".$body->stan." AND polecenia_osoby.dos = 1";
                            break;
                    }
         //get
                $sql = 
                "SELECT
                    polecenia.id,
                    polecenia.nazwa,
                    polecenia.czas,
                    polecenia.dzialania,
                    polecenia.polecenie,
                    polecenia.komunikat
                    FROM
                    polecenia,
                    polecenia poleceniaorg
                    ".$wiersz0."
                    where
                    ".$wiersz1."
                    AND poleceniaorg.id = polecenia.polecenie
                    ".$wiersz2."
                    ORDER BY
                    nazwa
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $polecenia = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $polecenie = array ("nazwa"=>$row['nazwa'], "czas"=>$row['czas'], "dzialanie"=>$row['dzialania'], "polecenie"=>($row['polecenie']==$row['id']), "prefix"=>"", "komunikat"=>$row['komunikat'], "sufix"=>"", "nastepnyTrue"=>"brak", "nastepnyFalse"=>"brak");
                array_push($polecenia,$polecenie);
                }
                $result = array ("wynik"=>true, "stan"=>"ok", "polecenia"=>$polecenia);
                  
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>"0 wyników");      
                }
        $conn->close();     
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