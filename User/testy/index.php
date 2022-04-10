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
          
        //$body = (object) array ("osoba"=>2, "modul"=>3 , "zespol"=>3, "czasstart"=>"2045-06-08 15:22:50", "czasend"=>"2045-06-08 15:22:55");
        $body = json_decode(file_get_contents("php://input"));
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
                uszkodzenianazwa.nazwa as nazwa,
                stan.stan as stan,
                stan.nazwa as stanText,
                uszkodzenia.reset
            FROM
                uszkodzenia,
                uszkodzenianazwa,
                stan
            WHERE
                    uszkodzenia.zespoly = '".$body->zespol."'    
                AND uszkodzenia.moduly = '".$body->modul."'        
                AND stan.id = uszkodzenia.stan
                AND uszkodzenianazwa.id = uszkodzenia.nazwa
                AND ((stan.stan <> 1) OR (uszkodzenia.reset = 1)) 
            ORDER BY
            stan.nazwa    
            ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
                {    
                $ilosc = $wynik->num_rows;
                $uszkodzenia = array();
                while ($row = $wynik->fetch_assoc())
                {
                    if ($row['reset'] == 0)
                    {
                    $uszkodzenie = array ("nazwa"=>$row['nazwa'], "stan"=>$row['stan'], "stanText"=>$row['stanText']);
                    array_push($uszkodzenia,$uszkodzenie);
                    }
                    else
                    {
                    $uszkodzenie = array ("nazwa"=>$nazwareset, "stan"=>$stanreset, "stanText"=>$stanTextreset);
                    array_push($uszkodzenia,$uszkodzenie);
                    }
                }
                }
                else
                {
                $ilosc = 0;    
                $uszkodzenia = array();
                }
                $conn->autocommit(false);
                $sql =
                "
                INSERT INTO
                  testylog
                ( moduly, zespoly, uszkodzenia, czasstart, czasend, osoba )
                VALUES
                ( ".$body->modul.", ".$body->zespol.", ".$ilosc.", '".$body->czasstart."', '".$body->czasend."', ".$body->osoba." )
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
    //echo ($e);
}
echo json_encode($result);    
?>