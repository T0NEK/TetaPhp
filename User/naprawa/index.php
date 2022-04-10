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
        //$body = (object) array ("osoba"=>2, "modul"=>3 , "zespol"=>3, "stan"=>"end", "naprawakod"=>"3-1649496728-3-2");  
        //$body = (object) array ("osoba"=>2, "modul"=>3 , "zespol"=>3, "stan"=>"start");
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {//get
        if ($body->stan == 'start')   
            {
            $time = time();
            $naprawakod = $body->zespol.'-'.$time.'-'.$body->modul.'-'.$body->osoba;
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
                ( moduly, zespoly, nazwa, stan, naprawa, ponaprawa, stanponaprawa )
                VALUES
                ( ".$body->modul.", ".$body->zespol.", 5, 5, '".$naprawakod."', 1, 1 ) ";
                if ($conn->query($sql) === TRUE) 
                {
                $result = array ("wynik"=>true, "stan"=>true, "naprawakod"=>$naprawatkod, "error"=>"wysłano polecenie");  
                }
                else
                {
                $result = array ("wynik"=>true, "stan"=>false, "naprawakod"=>'0', "error"=>"error - problem z poleceniem");   
                }
            }
            else
            {
            $sql = 
            "
            SELECT
                uszkodzenia.naprawa
            FROM
                uszkodzenia
            WHERE
                    uszkodzenia.zespoly = '".$body->zespol."'    
                AND uszkodzenia.moduly = '".$body->modul."'        
                AND uszkodzenia.naprawa = '0'
            ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
                { // są do naprawy 
                $sql =
                "
                UPDATE
                    uszkodzenia
                SET
                    naprawa = '".$naprawakod."'
                WHERE
                    uszkodzenia.zespoly = '".$body->zespol."'    
                    AND uszkodzenia.moduly = '".$body->modul."'               
                    AND uszkodzenia.naprawa = '0'
                ";
                if ($conn->query($sql) === TRUE) 
                {
                    $result = array ("wynik"=>true, "stan"=>true, "naprawakod"=>$naprawakod, "error"=>"wysłano polecenie");  
                }
                else
                {
                    $result = array ("wynik"=>true, "stan"=>false, "naprawakod"=>'0', "error"=>"error - problem z poleceniem");   
                }
                }  
                else
                { // w resecie

                    $result = array ("wynik"=>false, "stan"=>false, "naprawakod"=>'0', "error"=>"error - brak odpowiedzi");
                }
            }
            $conn->close();    
            }
    elseif ($body->stan == 'end')
        {
            $conn->autocommit(false);
            $sql = 
            "
            UPDATE
                    uszkodzenia
            SET
                naprawa = '0',
                stan = stanponaprawa,
                nazwa = nazwaponaprawa
            WHERE
                    uszkodzenia.zespoly = '".$body->zespol."'    
                AND uszkodzenia.moduly = '".$body->modul."'               
                AND uszkodzenia.naprawa = '".$body->naprawakod."'
                AND uszkodzenia.ponaprawa = 1
                ";
            $conn->query($sql);
            $sql = 
            "
            UPDATE
                    uszkodzenia
            SET
                naprawa = '0'
            WHERE
                    uszkodzenia.zespoly = '".$body->zespol."'    
                AND uszkodzenia.moduly = '".$body->modul."'               
                AND uszkodzenia.naprawa = '".$body->naprawakod."'
                AND uszkodzenia.ponaprawa = 0
                ";
            $conn->query($sql);
            if ($conn->commit() === TRUE) 
            {
                $result = array ("wynik"=>true, "stan"=>true, "naprawakod"=>$body->naprawakod, "error"=>"wykonano naprawa");  
            }
            else
            {
                $result = array ("wynik"=>true, "stan"=>false, "naprawakod"=>$body->naprawakod, "error"=>"error - problem z naprawą");   
            }

        }
    }
    else
    {
        $result = array ("wynik"=>false, "stan"=>false, "naprawakod"=>$body->naprawakod, "error"=>"brak danych");      
    }              
    }    
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>false, "naprawakod"=>'', "error"=>"problem z odczytem");
    //echo ($e);
}
echo json_encode($result);    
?>