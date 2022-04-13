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
        //$body = (object) array ('stan' => 'get', "modul" => 3, "zespol"=>3, "czas" => "2045-06-08 15:22:50" );
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        { 
    if ($body->stan != 'get')   
            {
            if (($body->stan == 'reset')||($body->stan == 'naprawa'))
            { $linia = " ".$body->stan." = '".$body->nowy."'"; } 
            else
            { $linia = " ".$body->stan." = ".$body->nowy." "; }
            $sql = 
            "
            UPDATE
                uszkodzenia
            SET
                ".$linia."
            WHERE 
                id = ".$body->uszkodzenie."       
            ";    
            if ($conn->query($sql)===TRUE) 
            {
                $result = array ("wynik"=>true, "stan"=>true, "error"=>"zmieniono na ".$body->nowy);
            }
            else
            {
                $result = array ("wynik"=>false, "stan"=>false, "error"=>"nie zmieniono na ".$body->nowy);
            }
            }
    elseif ($body->stan == 'get')
            {//get
                $sql = 
                "SELECT
                    uszkodzenia.id,
                    uszkodzenia.nazwa as idnazwyuszkodzenia,
                    uszkodzenianazwa.nazwa as nazwauszkdzenia,
                    uszkodzenia.stan as idstan,
                    stan.nazwa as nazwastan,
                    stan.stan as stanstan,
                    uszkodzenia.reset, 
                    uszkodzenia.poreset,
                    uszkodzenia.nazwaporeset as idnazwaporeset,
                    uszkodzenianazwa1.nazwa as nazwaporeset,
                    uszkodzenia.stanporeset as idstanporeset,
                    stan1.nazwa as nazwastanporeset,
                    stan1.stan as stanstanporeset,
                    uszkodzenia.naprawa, 
                    uszkodzenia.ponaprawa,
                    uszkodzenia.nazwaponaprawa as idnazwaponaprawa,
                    uszkodzenianazwa2.nazwa as nazwaponaprawa,
                    uszkodzenia.stanponaprawa as idstanponaprawa,
                    stan2.nazwa as nazwastanponaprawa,
                    stan2.stan as stanstanponaprawa
                FROM
                    uszkodzenia,
                    uszkodzenianazwa,
                    uszkodzenianazwa uszkodzenianazwa1,
                    uszkodzenianazwa uszkodzenianazwa2,
                    stan,
                    stan stan1,
                    stan stan2
                WHERE
                        uszkodzenia.moduly = ".$body->modul."
                    AND uszkodzenia.zespoly = ".$body->zespol."
                    AND uszkodzenianazwa.id = uszkodzenia.nazwa
                    AND stan.id = uszkodzenia.stan
                    AND uszkodzenianazwa1.id = uszkodzenia.nazwaporeset
                    AND stan1.id = uszkodzenia.stanporeset
                    AND uszkodzenianazwa2.id = uszkodzenia.nazwaponaprawa
                    AND stan2.id = uszkodzenia.stanponaprawa
                ORDER BY
                    uszkodzenia.id  DESC 
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {    
                $uszkodzenia = array ();    
                


                $time = time();
                $czasserwera = date("Y-m-d H:i:s",$time);
                $date2 = date_create($czasserwera);
                
                
                while ($row = $wynik->fetch_assoc())
                {
                if ($row['reset'] == '0') { $sekreset = 0;}
                else
                {
                $czas1 = substr($row['reset'],0,19); $date1 = date_create($czas1);    
                $diff = date_diff($date1,$date2);
                $sekreset = ((($diff->y * 365.25 + $diff->m * 30 + $diff->d) * 24 + $diff->h) * 60 + $diff->i)*60 + $diff->s;
                }
                if ($row['naprawa'] == '0') { $seknaprawa = 0;}
                else
                {
                $czas1 = substr($row['naprawa'],0,19); $date1 = date_create($czas1);    
                $diff = date_diff($date1,$date2);
                $seknaprawa = ((($diff->y * 365.25 + $diff->m * 30 + $diff->d) * 24 + $diff->h) * 60 + $diff->i)*60 + $diff->s;
                }
                $uszkodzenie = array ("id"=>$row['id'], "idnazwyuszkodzenia"=>$row['idnazwyuszkodzenia'], "nazwauszkdzenia"=>$row['nazwauszkdzenia'], "idstan"=>$row['idstan'], "nazwastan"=>$row['nazwastan'], "stanstan"=>$row['stanstan'], "reset"=>$row['reset'], "poreset"=>$row['poreset'], "idnazwaporeset"=>$row['idnazwaporeset'], "nazwaporeset"=>$row['nazwaporeset'],"idstanporeset"=>$row['idstanporeset'], "nazwastanporeset"=>$row['nazwastanporeset'], "stanstanporeset"=>$row['stanstanporeset'], "naprawa"=>$row['naprawa'], "ponaprawa"=>$row['ponaprawa'], "idnazwaponaprawa"=>$row['idnazwaponaprawa'], "nazwaponaprawa"=>$row['nazwaponaprawa'],"idstanponaprawa"=>$row['idstanponaprawa'], "nazwastanponaprawa"=>$row['nazwastanponaprawa'], "stanstanponaprawa"=>$row['stanstanponaprawa'], "sekreset"=>$sekreset, "seknaprawa"=>$seknaprawa);
                array_push($uszkodzenia,$uszkodzenie);
                }
                $result = array ("wynik"=>true, "stan"=>true, "uszkodzenia"=>$uszkodzenia, "error"=>"wczytano: ".$wynik->num_rows);
                }
            else
            {
            $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak uszkodzeń");
            }
        $conn->close();       
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