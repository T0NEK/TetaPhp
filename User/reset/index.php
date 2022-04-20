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
        //$body = (object) array ("osoba"=>2, "modul"=>3 , "zespol"=>3, "stan"=>"end", "resetkod"=>"3-1649496728-3-2");  
        //$body = (object) array ("osoba"=>2, "modul"=>3 , "zespol"=>3, "stan"=>"start");
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {//get
        if ($body->stan == 'start')   
            {
            $time = time();
            $czasserwera = date("Y-m-d H:i:s",$time);
            $resetkod = $czasserwera.'-'.$body->zespol.'-'.$body->modul.'-'.$body->osoba;
            $sql = 
            "
            SELECT
                uszkodzenia.id
            FROM
                uszkodzenia
            WHERE
                    uszkodzenia.zespoly = '".$body->zespol."'    
                AND uszkodzenia.moduly = '".$body->modul."'        
            ";
            $wynik = $conn->query($sql); 
            $ilosc = $wynik->num_rows;
            if ($ilosc == 0)
            {
                $sql =
                "
                INSERT INTO
                  uszkodzenia
                ( moduly, zespoly, nazwa, stan, reset, poreset, nazwaporeset, stanporeset, naprawa, ponaprawa, nazwaponaprawa, stanponaprawa )
                VALUES
                ( ".$body->modul.", ".$body->zespol.", 5, 5, '".$resetkod."', 1, 1, 1, '0', 0, 1, 1 ) ";
                if ($conn->query($sql) === TRUE) 
                {
                $result = array ("wynik"=>true, "stan"=>true, "resetkod"=>$resetkod, "error"=>"wysłano polecenie");  
                }
                else
                {
                $result = array ("wynik"=>true, "stan"=>false, "resetkod"=>'0', "error"=>"error - problem z poleceniem");   
                }
            }
            else
            {
            $sql = 
            "
            SELECT
                uszkodzenia.reset
            FROM
                uszkodzenia
            WHERE
                    uszkodzenia.zespoly = '".$body->zespol."'    
                AND uszkodzenia.moduly = '".$body->modul."'        
                AND uszkodzenia.reset = '0'
            ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
                { // są do resetu   
                $sql =
                "
                UPDATE
                    uszkodzenia
                SET
                    reset = '".$resetkod."'
                WHERE
                    uszkodzenia.zespoly = '".$body->zespol."'    
                    AND uszkodzenia.moduly = '".$body->modul."'               
                    AND uszkodzenia.reset = '0'
                ";
                if ($conn->query($sql) === TRUE) 
                {
                    $result = array ("wynik"=>true, "stan"=>true, "resetkod"=>$resetkod, "error"=>"wysłano polecenie");  
                }
                else
                {
                    $result = array ("wynik"=>true, "stan"=>false, "resetkod"=>'0', "error"=>"error - problem z poleceniem");   
                }
                }  
                else
                { // w resecie

                    $result = array ("wynik"=>false, "stan"=>false, "resetkod"=>'0', "error"=>"error - brak odpowiedzi");
                }
            }
            $conn->close();    
            }
    elseif ($body->stan == 'end')
        {
            $elementy = "wystąpił jakiś problem";
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
            if ($wynik->num_rows > 0) 
            {
            $row = $wynik->fetch_assoc();
            $elementy = "wykonano reset dla ".$row['elementy']." elementów zespołu" ;
            }
            $conn->autocommit(false);
            $sql = 
            "
            UPDATE
                    uszkodzenia
            SET
                reset = '0',
                stan = stanporeset,
                nazwa = nazwaporeset
            WHERE
                    uszkodzenia.zespoly = '".$body->zespol."'    
                AND uszkodzenia.moduly = '".$body->modul."'               
                AND uszkodzenia.reset = '".$body->resetkod."'
                AND uszkodzenia.poreset = 1
                ";
            $conn->query($sql);
            $sql = 
            "
            UPDATE
                    uszkodzenia
            SET
                reset = '0'
            WHERE
                    uszkodzenia.zespoly = '".$body->zespol."'    
                AND uszkodzenia.moduly = '".$body->modul."'               
                AND uszkodzenia.reset = '".$body->resetkod."'
                AND uszkodzenia.poreset = 0
                ";
            $conn->query($sql);
            $sql =
                "
                INSERT INTO
                  testylog
                ( moduly, zespoly, uszkodzenia, uszkodzeniaText, czasstart, czasend, osoba, rodzaj )
                VALUES
                ( ".$body->modul.", ".$body->zespol.", 0, '".$elementy."', '', '".$body->czasend."', ".$body->osoba.", 'reset' )
                ";
            $conn->query($sql);
            if ($conn->commit() === TRUE) 
            {
                $result = array ("wynik"=>true, "stan"=>true, "resetkod"=>$body->resetkod, "error"=>"wykonano reset");  
            }
            else
            {
                $result = array ("wynik"=>true, "stan"=>false, "resetkod"=>$body->resetkod, "error"=>"error - problem z resetem");   
            }

        }
    }
    else
    {
        $result = array ("wynik"=>false, "stan"=>false, "resetkod"=>$body->resetkod, "error"=>"brak danych");      
    }              
    }    
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>false, "resetkod"=>'', "error"=>"problem z odczytem");
    //echo ($e);
}
echo json_encode($result);    
?>