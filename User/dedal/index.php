<?php
require_once "../../connect.php";
//echo json_encode(getallheaders());
try
{
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset("utf8");
    if ($conn->connect_error) 
    { throw new Exception( $conn->connect_error); } 
    else
    {
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        { //set   
if ($body->get == 'set')
            {            
            $sql = "INSERT 
                    INTO innelog
                    (
                    dedal,
                    poleceniepierwsze,
                    czaspierwsze,
                    polecenieodpowiedz,
                    polecenieid,
                    polecenieText,
                    czaswykonania,
                    osoba,
                    osobaText,
                    odczytana,
                    terminal,
                    odpowiedzText
                    )
                    VALUES
                    (
                    1,
                     '".$body->poleceniepierwsze."',
                     '".$body->czaspierwsze."',
                     '".$body->polecenieodpowiedz."',
                     ".$body->polecenieid.",
                     '".$body->polecenieText."',
                     '".$body->czaswykonania."',
                     ".$body->osoba.",
                     '".$body->osobaText."',
                     0,
                     '".$body->terminal."',
                     '".$body->odpowiedzText."'
                     )
                    ";
            if ($conn->query($sql) === TRUE) 
            { 
            $id  = $conn->insert_id;   
            $result = array ("wynik"=>true, "id"=>$id, "error"=>'zapisano historię'); 
            }
            else 
            { $result = array ("wynik"=>false, "error"=>'nie zapisano historii'); }
            $conn->close();
            }
    elseif ($body->get == 'get') 
            {
             $sql = 
             "
             SELECT
                id,
                poleceniepierwsze,
                czaspierwsze,
                polecenieid,
                polecenieText,
                czaswykonania,
                osoba,
                osobaText,
                terminal,
                odpowiedzText
             FROM
                innelog
             WHERE
                    dedal = 2
                AND odczytana = 0
                AND osoba = ".$body->osoba."
             ";   
             $wynik = $conn->query($sql); 
             if ($wynik->num_rows > 0) 
             {
             $row = $wynik->fetch_assoc();  
             $polecenia = array ();    
             $polecenie = array ("id"=>$row['id'], "polecenieid"=>$row['polecenieid'], "poleceniepierwsze"=>$row['poleceniepierwsze'], "czaspierwsze"=>$row['czaspierwsze'], "polecenieText"=>$row['polecenieText'], "czaswykonania"=>$row['czaswykonania'], "osoba"=>$row['osoba'], "osobaText"=>$row['osobaText'], "terminal"=>$row['terminal'], "odpowiedzText"=>$row['odpowiedzText']);
             array_push($polecenia,$polecenie);
                $sql = 
                "
                UPDATE
                    innelog
                SET
                    odczytana = 1
                WHERE
                    id = ".$row['id']."    
                ";
             if ($conn->query($sql) === TRUE) 
            {
                $result = array ("wynik"=>true, "polecenia"=>$polecenia, "error"=> "wczytano");                   
            }  
            else
            {
                $result = array ("wynik"=>false, "error"=>"problem odczytu");      
            }
             }
             else
             {
                 $result = array ("wynik"=>false, "error"=>"0 wyników");      
             }
             $conn->close();    
            }           
        }    
        else
        { //get
           $result = array ("wynik"=>false, "error"=>"brak danych");
        } 
    }   
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "error"=>'błąd danych');
    //echo $e;
}
echo json_encode($result);
?>