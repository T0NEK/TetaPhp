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
        switch (strtoupper($body->zmiana)) 
                        {
                        case 'LOGOWANIE':
                            $wiersz = 'zalogowanynew = '.($body->stan ? 1:0);
                            break;
                        case 'BLOKOWANIE':
                            $wiersz = 'blokadanew = '.($body->stan ? 1:0);
                            break;
                        case 'HANNAH':
                            $wiersz = 'hannahnew = '.($body->stan ? 1:0);
                            break;          
                        case 'FIONA':
                            $wiersz = 'fionanew = '.($body->stan ? 1:0);
                            break;          
                        case 'RAJEH':
                            $wiersz = 'rajehnew = '.($body->stan ? 1:0);
                            break;    
                        case 'NAROSL':
                            $wiersz = 'naroslnew = '.($body->stan ? 1:0);
                            break;    
                        }
        switch ($body->id) {
                        case 0: //all
                            $id = 'user=2';
                            break;
                        default: //id osoby
                            $id = 'id='.$body->id;
                            break;
                        }               
                    $sql = "UPDATE 
                    osoby 
                    SET
                    ".$wiersz."
                    WHERE
                    ".$id."
                    ";
                    if ($conn->query($sql) === TRUE)
                    { $result = array ("wynik"=>true);}
                    else 
                    { $result = array ("wynik"=>false, "error"=>"nie zapisano");}
                    $conn->close();                    
/*                
                $tabela = $body->dane;
                $result = array ("wynik"=>true, "id"=>$body->id, "zmiana"=>$body->zmiana, 'dane'=>$tabela[1]->nazwisko);    
*/                
        }
            else
            { //get
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
                     IF (".$warunek.",hannahnew,hannahorg) as hannah,
                    IF (".$warunek.",fionanew,fionaorg) as fiona,
                    IF (".$warunek.",rajehnew,rajehorg) as rajeh,
                    IF (".$warunek.",naroslnew,naroslorg) as narosl
                     FROM
                     osoby
                     where
                     user = 3 
                     ORDER BY
                     kolejnosc
                    ";
                    $wynik = $conn->query($sql); 
                    if ($wynik->num_rows > 0) 
                    {
                    $osoby = array ();    
                    while ($row = $wynik->fetch_assoc())
                    {
                    $osoba = array ("id"=>$row['id'], "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "funkcja"=>$row['funkcja'], "zalogowany"=>($row['zalogowany']==1), "blokada"=>($row['blokada']==1), "hannah"=>($row['hannah']==1), "fiona"=>($row['fiona']==1), "rajeh"=>($row['rajeh']==1), "narosl"=>($row['narosl']==1));
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
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>"error", "error"=>$e);
    echo ($e);
}
echo json_encode($result);     
?>