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
                uszkodzenia.id as idU,
                stan.nazwa as stanText,
                stan.stan as stanNr,
                zespoly.uszkodzenia,
                zespoly.uszkodzeniapotest,
                uszkodzenia.nazwa as element
            FROM
                zespoly,
                uszkodzenia,
                stan
            WHERE
                    zespoly.id = '".$body->zespol."'    
                AND uszkodzenia.id = zespoly.uszkodzenia    
                AND stan.id = uszkodzenia.stan
                
            ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
            {    
                $row = $wynik->fetch_assoc();    
                $stanText = $row['stanText'];
                $stanNr = $row['stanNr'];
                $uszkodzenia = $row['idU'];
                $element = $row['element'];
                if ($row['uszkodzeniapotest'] == 1)
                { $uszkodzeniapotest = $row['uszkodzenia']; }
                else
                { $uszkodzeniapotest = $row['uszkodzeniapotest'];}
                $conn->autocommit(false);
                $sql =
                "
                INSERT INTO
                  testylog
                (
                  moduly,
                  zespoly,
                  uszkodzenia,
                  czasstart,
                  czasend,
                  osoba  
                )
                VALUES
                (
                  ".$body->modul.",
                  ".$body->zespol.",
                  ".$uszkodzenia.",
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
                        ostatni = ".$id.",
                        uszkodzenia = ".$uszkodzeniapotest."
                    WHERE
                        id = ".$body->zespol."
                    ";
                    $conn->query($sql);
                    if ($conn->commit() === TRUE) 
                    {
                        $result = array ("wynik"=>true, "stan"=>true, "stanText"=>$stanText, "stanNr"=>$stanNr, "uszkodzenia"=>$element , "czasend"=>$body->czasend);  
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
    //echo ($e);
}
echo json_encode($result);    
?>