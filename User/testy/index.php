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
        //$body = (object) array ("osoba"=>2, "modul"=>3 , "zespol"=>5, "czasstart"=>"2045-06-08 15:22:50", "czasend"=>"2045-06-08 15:22:55");
        if (isset($body))
        {//get
            $sql = 
            "
            SELECT
                uszkodzenianazwa.nazwa as nazwa,
                stan.stan as stan,
                stan.nazwa as stanText
            FROM
                uszkodzenianazwa,
                stan
            WHERE
                    stan.id = 5
                AND uszkodzenianazwa.id = 5
            ";
            $wynik = $conn->query($sql); 
            $row = $wynik->fetch_assoc();
            $nazwareset = $row['nazwa'];
            $stanreset = $row['stan'];
            $stanTextreset = $row['stanText'];
            $sql =
            "
            SELECT
               elementy
            FROM
                zespoly
            WHERE
                id = ".$body->zespol."
            ";
            $wynik = $conn->query($sql); 
            if ( $wynik->num_rows == 0) { $iloscelementow = 0;} else { $row = $wynik->fetch_assoc(); $iloscelementow = $row['elementy']; }
            $sql = 
            "
            SELECT
                uszkodzenianazwa.nazwa as nazwa,
                stan.stan as stan,
                stan.nazwa as stanText,
                uszkodzenia.reset,
                uszkodzenia.naprawa
            FROM
                uszkodzenia,
                uszkodzenianazwa,
                stan
            WHERE
                    uszkodzenia.zespoly = ".$body->zespol."
                AND uszkodzenia.moduly = ".$body->modul."        
                AND stan.id = uszkodzenia.stan
                AND uszkodzenianazwa.id = uszkodzenia.nazwa
            ORDER BY
            stan.nazwa    
            ";
            $wynik = $conn->query($sql); 
            $resetnaprawa = 0;
            if ($wynik->num_rows == 0) 
            {
                $result = array ("wynik"=>true, "stan"=>false, "error"=>"error - powtórz test");    
            }
            else
            {    
                $ilosc = 0;
                $uszkodzenia = array();
                $uszkodzeniaText = '';
                while ($row = $wynik->fetch_assoc())
                {
                    if (($row['reset'] == '0')&&($row['naprawa'] == '0'))
                    {
                    if ($row['stan'] != 1)
                        {    
                        $uszkodzenie = array ("nazwa"=>$row['nazwa'], "stan"=>$row['stan'], "stanText"=>$row['stanText']);
                        array_push($uszkodzenia,$uszkodzenie);
                        $uszkodzeniaText = $uszkodzeniaText.$row['nazwa']." - ".$row['stanText'].", ";
                        $ilosc++; 
                        }
                    }
                    else
                    {
                    $ilosc++;     
                    $resetnaprawa++;    
                    $uszkodzenie = array ("nazwa"=>$nazwareset, "stan"=>$stanreset, "stanText"=>$stanTextreset);
                    array_push($uszkodzenia,$uszkodzenie);
                    $uszkodzeniaText = $uszkodzeniaText.$nazwareset." - ".$stanTextreset.", ";
                    }
                }
                $uszkodzeniaText = substr($uszkodzeniaText,0,-2);
                if ($resetnaprawa > 0)
                {
                    for ($i=0; $i < ($iloscelementow - $resetnaprawa) ; $i++) 
                    { 
                        $ilosc++; 
                        $uszkodzenie = array ("nazwa"=>$nazwareset, "stan"=>$stanreset, "stanText"=>$stanTextreset);
                        array_push($uszkodzenia,$uszkodzenie);
                    }
                    $uszkodzeniaText = $uszkodzeniaText." i ".$resetnaprawa." innych" ;    
                }
                elseif ($resetnaprawa < 0)
                    {

                    }
                $conn->autocommit(false);
                $sql =
                "
                INSERT INTO
                  testylog
                ( moduly, zespoly, uszkodzenia, uszkodzeniaText, czasstart, czasend, osoba, rodzaj )
                VALUES
                ( ".$body->modul.", ".$body->zespol.", ".$ilosc.", '".$uszkodzeniaText."', '".$body->czasstart."', '".$body->czasend."', ".$body->osoba.", 'test' )
                ";
                if ($conn->query($sql) === TRUE) 
                {
                    $id = $conn->insert_id;
                    $sql = "UPDATE zespoly SET ostatni = ".$id." WHERE id = ".$body->zespol."";
                    $conn->query($sql);
                    if ($conn->commit() === TRUE) 
                    {
                        $result = array ("wynik"=>true, "stan"=>true, "uszkodzenia"=>$uszkodzenia, "ilosc"=>$ilosc, "czasend"=>$body->czasend);  
                    }
                    else    
                    {
                        $result = array ("wynik"=>true, "stan"=>false, "error"=>"error - powtórz test");  
                    }
                }
                else
                {
                    $result = array ("wynik"=>true, "stan"=>false, "error"=>"error - powtórz test");    
                }
            }
        $conn->close();    

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