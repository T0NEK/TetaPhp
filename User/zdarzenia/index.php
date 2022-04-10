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
         //get
            $body = json_decode(file_get_contents("php://input"));
            //$body = (object) array ('stan' => 2);
            $sql = "SELECT wartosc from ustawienia WHERE id=5"; 
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
            {
                $row = $wynik->fetch_assoc();
                $start = $row['wartosc'];
                if ($start == 'START') {$warunek = 'TRUE';} else {$warunek = 'FALSE';}   
                $sql = 
                "SELECT
                os.id,
                os.imie,
                os.nazwisko,
                os.funkcja,
                ifnull(lo.id,0) as logowaniaid,
                ifnull(lo.del,0) as zalogowany,
                ifnull(lo.wyloguj,0) as wyloguj,
                ifnull(lo.czaslogowania,'') as czaslogowania,
                ifnull(lo.idhosta,0) as idhosta,
                ifnull(lo.nazwahosta,'') as nazwahosta,
                ifnull(lo.iphosta,'') as iphosta,
                os.polecenia,
                os.hannah,
                os.fiona,
                os.rajeh,
                os.narosl,
                os.blokada
                FROM
                (
                SELECT
                    id,
                    imie,
                    nazwisko,
                    funkcja,
                    IF (".$warunek.",zalogowanynew,zalogowanyorg) as polecenia,
                    IF (".$warunek.",blokadanew,blokadaorg) as blokada,
                    IF (".$warunek.",hannahnew,hannahorg) as hannah,
                    IF (".$warunek.",fionanew,fionaorg) as fiona,
                    IF (".$warunek.",rajehnew,rajehorg) as rajeh,
                    IF (".$warunek.",naroslnew,naroslorg) as narosl,
                    kolejnosc
                 FROM
                    osoby
                 WHERE
                    id = ".$body->zalogowany."   
                )os    
                LEFT JOIN 
                (
                SELECT
                        logowania.id,
                        logowania.zalogowany,
                        logowania.czaslogowania,
                    	logowania.del as del,
                        logowania.wyloguj as wyloguj,
                        komputery.id as idhosta,
                        komputery.nazwa as nazwahosta,
                        komputery.nrip as iphosta
                    FROM
                        logowania,
                        komputery
                    WHERE
                        logowania.zalogowany = ".$body->zalogowany."   
                        AND ((logowania.del = 0)) 
                        AND logowania.komputery = komputery.id
                )lo
                on lo.zalogowany = os.id
                order BY
                os.kolejnosc
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $row = $wynik->fetch_assoc();
                $result = array ("wynik"=>true, "stan"=>$start, "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "funkcja"=>$row['funkcja'], "czaslogowania"=>$row['czaslogowania'], "idhosta"=>$row['idhosta'], "nazwahosta"=>$row['nazwahosta'], "iphosta"=>$row['iphosta'], "id"=>$row['id'], "zalogowany"=>($row['zalogowany']==0), "wyloguj"=>($row['wyloguj']==1), "polecenia"=>($row['polecenia']==1), "blokada"=>($row['blokada']==1), "hannah"=>($row['hannah']==1), "fiona"=>($row['fiona']==1), "rajeh"=>($row['rajeh']==1), "narosl"=>($row['narosl']==1));
                if ($row['wyloguj'] == 1)
                {
                    $sql = "UPDATE 
                    logowania
                SET
                    wyloguj = 0
                WHERE
                    id = ".$row['logowaniaid']."
                    ";
                $conn->query($sql);
                }
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
    $conn->close();                  
    }
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>"error", "error"=>$e);
    //echo ($e);
}
echo json_encode($result);     
?>