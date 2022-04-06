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
                stan.nazwa as stanText,
                stan.stan as stanNr
            FROM
                zespoly,
                stan
            WHERE
                    zespoly.id = '".$body->zespol."'    
                AND stan.id = zespoly.stan
            ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
            {    
                $row = $wynik->fetch_assoc();    
                $stanText = $row['stanText'];
                $stanNr = $row['stanNr'];
                $sql =
                "
                INSERT INTO
                  testylog
                (
                  moduly,
                  zespoly,
                  stan,
                  czasstart,
                  czasend,
                  osoba  
                )
                VALUES
                (
                  ".$body->modul.",
                  ".$body->zespol.",
                  ".$stanNr.",
                  '".$body->czasstart."',
                  '".$body->czasend."',
                  ".$body->osoba."
                )
                ";
                if ($conn->query($sql) === TRUE) 
                {
                    $result = array ("wynik"=>true, "stan"=>true, "stanText"=>$stanText, "stanNr"=>$stanNr, "czasend"=>$body->czasend);  
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