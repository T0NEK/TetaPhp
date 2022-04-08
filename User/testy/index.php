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
                count(stan.id) as ilosc,
                stan.nazwa as stanText
            FROM
                uszkodzenia,
                stan
            WHERE
                    uszkodzenia.zespoly = '".$body->zespol."'    
                AND uszkodzenia.moduly = '".$body->modul."'        
                AND stan.id = uszkodzenia.stan
            GROUP BY
                stan.nazwa
            ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
            {    
                $stanText = 'wykryto: ';
                $ilosc = 0;
                while ($row = $wynik->fetch_assoc())
                {
                    $stanText = $stanText.$row['ilosc'].' - '.$row['stanText'].", ";
                    $ilosc = $ilosc + $row['ilosc'];
                }
                $stanText = substr($stanText,0,-2);

                $time = time();
                $symbol = $time.$body->zespol.$body->osoba.$ilosc.$body->modul;
                
                $conn->autocommit(false);
                $sql =
                "
                INSERT INTO
                  testylog
                (
                  symbol,  
                  moduly,
                  zespoly,
                  uszkodzenia,
                  czasstart,
                  czasend,
                  osoba  
                )
                VALUES
                (
                    '".$symbol."',
                    ".$body->modul.",
                    ".$body->zespol.",
                    ".$ilosc.",
                    '".$body->czasstart."',
                    '".$body->czasend."',
                    ".$body->osoba."
                )
                ";
                if ($conn->query($sql) === TRUE) 
                {
                    $id = $conn->insert_id;
                    $sql = 
                    "
                    UPDATE
                        zespoly
                    SET    
                        ostatni = ".$id."
                    WHERE
                        id = ".$body->zespol."
                    ";
                    $conn->query($sql);
                    if ($conn->commit() === TRUE) 
                    {
                        $result = array ("wynik"=>true, "stan"=>true, "stanText"=>$stanText, "czasend"=>$body->czasend, "symbol" => $symbol);  
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
    echo ($e);
}
echo json_encode($result);    
?>