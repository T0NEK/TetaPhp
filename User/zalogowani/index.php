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
                    hannahid,
                    IF (".$warunek.",hannahnew,hannahorg) as hannah,
                    fionaid,
                    IF (".$warunek.",fionanew,fionaorg) as fiona,
                    rajehid,
                    IF (".$warunek.",rajehnew,rajehorg) as rajeh
                 FROM
                    osoby
                 WHERE
                    id = ".$body->stan."
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $row = $wynik->fetch_assoc();
                $hannahid = $row['hannahid']; $hannah = $row['hannah'];  
                $fionaid = $row['fionaid']; $fiona = $row['fiona'];  
                $rajehid = $row['rajehid']; $rajeh = $row['rajeh'];  
                }
                else
                {
                $hannahid = 0; $hannah = 0;
                $fionaid = 0; $fiona = 0;
                $rajehid = 0; $rajeh = 0;
                }
                $sql = 
                "SELECT
                os.id,
                os.imie,
                os.nazwisko,
                os.funkcja,
                ifnull(lo.jest,0) as zalogowany,
                os.polecenia,
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
                    kolejnosc
                 FROM
                    osoby
                 WHERE
                    user = 1 OR user = 2
                )os    
                LEFT JOIN 
                (
                SELECT
                    	zalogowany,
                    	1 jest
                    FROM
                        logowania
                    WHERE
                        del = 0   
                )lo
                on lo.zalogowany = os.id
                order BY
                os.kolejnosc
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $osoby = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $osoba = array ( "id"=>$row['id'], "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "funkcja"=>$row['funkcja'], "zalogowany"=>
                (   ( 
                        ($row['zalogowany']==1 ? 1:0)&&($row['id']!=$hannahid ? 1:0)&&($row['id']!=$fionaid ? 1:0)&&($row['id']!=$rajehid ? 1:0) 
                    )||( 
                        ($row['zalogowany']==1 ? 1:0)&&(
                            (($row['id']==$hannahid ? 1:0)&&($hannah==1 ? 1:0))||
                            (($row['id']==$fionaid ? 1:0)&&($fiona==1 ? 1:0))||
                            (($row['id']==$rajehid ? 1:0)&&($rajeh==1 ? 1:0))
                                                       )
                        )                               
                ), "polecenia"=>($row['polecenia']==1) 
                );
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
    //echo ($e);
}
echo json_encode($result);     
?>