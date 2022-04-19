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
        //$body = (object) array ('stan' => 'osoby');
        //$body = (object) array ('stan' => 'polecenia');
        if (isset($body))
        {
    if ($body->get == 'osoby') 
        {   
         //get
               $sql = 
                "SELECT
                    os.id,
                    os.imie,
                    os.nazwisko,
                    os.funkcja
                FROM
                    osoby os
                WHERE
                        os.rodzaj = 'M'
                    AND user in (1,2)
                order BY
                os.kolejnosc
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $osoby = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $osoba = array ("id"=>$row['id'], "imie"=>$row['imie'], "nazwisko"=>$row['nazwisko'], "funkcja"=>$row['funkcja']);
                array_push($osoby,$osoba);
                }
                $result = array ("wynik"=>true, "osoby"=>$osoby, "error"=> "wczytano");
                 
                }
                else
                {
                    $result = array ("wynik"=>false, "error"=>"0 wyników");      
                }
                $conn->close();  
        }
    elseif ($body->get == 'polecenia')
            {
             $sql = 
             "
             SELECT
                id,
                poleceniepierwsze,
                czaspierwsze,
                polecenieodpowiedz,
                ifnull((SELECT nazwa FROM moduly WHERE symbol = upper(polecenieText)),'nie znaleziono') as modul, 
                ifnull((SELECT nazwa FROM moduly WHERE id = (SELECT moduly FROM zespoly WHERE symbol = upper(polecenieText))),'nie znaleziono') as modulzespol, 
                ifnull((SELECT nazwa FROM zespoly WHERE symbol = upper(polecenieText)),'nie znaleziono') as zespol, 
                ifnull((SELECT nazwa FROM uszkodzenianazwa WHERE upper(nazwa) = upper(polecenieText)),'nie znaleziono') as element, 
                polecenieid,
                polecenieText,
                czaswykonania,
                osoba,
                osobaText,
                odczytana,
                terminal,
                odpowiedz,
                odpowiedzText,
                odpowiedzTresc
             FROM
                innelog
             WHERE
                    dedal = 1 
             ";   
             $wynik = $conn->query($sql); 
             if ($wynik->num_rows > 0) 
             {
             $polecenia = array ();    
             while ($row = $wynik->fetch_assoc())
             {
                $polecenie = array ("id"=>$row['id'], "polecenieid"=>$row['polecenieid'], "poleceniepierwsze"=>$row['poleceniepierwsze'], "czaspierwsze"=>$row['czaspierwsze'], "polecenieodpowiedz"=>$row['polecenieodpowiedz'], "polecenieText"=>$row['polecenieText'], "czaswykonania"=>$row['czaswykonania'], "osoba"=>$row['osoba'], "osobaText"=>$row['osobaText'], "odczytana"=>$row['odczytana'], "terminal"=>$row['terminal'], "odpowiedz"=>($row['odpowiedz']==0), "odpowiedzText"=>$row['odpowiedzText'], "odpowiedzTresc"=>$row['odpowiedzTresc'], "modul"=>$row['modul'], "modulzespol"=>$row['modulzespol'], "zespol"=>$row['zespol'], "element"=>$row['element']);
             array_push($polecenia,$polecenie);
             }
             $result = array ("wynik"=>true, "polecenia"=>$polecenia, "error"=> "wczytano");
              
             }
             else
             {
                 $result = array ("wynik"=>false, "error"=>"0 wyników");      
             }
             $conn->close();   
            }  
elseif ($body->get == 'odp')              
            {
                $id = $body->polecenieid;
                $sql = 
                "
                SELECT
                    odpowiedz
                FROM
                    innelog
                WHERE    
                    odpowiedz = 0
                    AND id = ".$id."
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows == 0) 
                {//2 odp
                $sql = 
                "
                SELECT
                    id,
                    dedal,
                    poleceniepierwsze,
                    czaspierwsze,
                    polecenieid,
                    polecenieText,
                    czaswykonania,
                    osoba,
                    osobaText,
                    odczytana,
                    terminal,
                    odpowiedz
                FROM
                    innelog
                WHERE
                    id = ".$id."  
                ";   
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                    {
                    $row = $wynik->fetch_assoc();
                    $sql = "INSERT 
                        INTO innelog
                        (
                        dedal,
                        poleceniepierwsze,
                        czaspierwsze,
                        polecenieid,
                        polecenieText,
                        czaswykonania,
                        osoba,
                        osobaText,
                        odczytana,
                        terminal,
                        odpowiedz
                        )
                        VALUES
                        (
                        ".$row['dedal'].", 
                        '".$row['poleceniepierwsze']."',
                        '".$row['czaspierwsze']."',
                        ".$row['polecenieid'].",
                        '".$row['polecenieText']."',
                        '".$row['czaswykonania']."',
                        ".$row['osoba'].",
                        '".$row['osobaText']."',
                        ".$row['odczytana'].",
                        '".$row['terminal']."',
                        ".$row['odpowiedz']."
                        )
                        ";
                        if ($conn->query($sql) === TRUE) 
                        { $id  = $conn->insert_id; }
                        else
                        { $id = 0; }
                    }



                }
                if ( $id != 0 )
                {
                $conn->autocommit(false);
                $sql = "INSERT 
                INTO innelog
                (
                dedal,
                poleceniepierwsze,
                czaspierwsze,
                polecenieid,
                polecenieText,
                czaswykonania,
                osoba,
                osobaText,
                odczytana,
                terminal,
                odpowiedz,
                odpowiedzText
                )
                VALUES
                (
                2,
                 '".$body->poleceniepierwsze."',
                 '".$body->czaspierwsze."',
                 ".$body->polecenieid.",
                 '".$body->polecenieText."',
                 '".$body->czaswykonania."',
                 ".$body->osoba.",
                 '".$body->osobaText."',
                 0,
                 '".$body->terminal."',
                 0,
                 '".$body->odpowiedzText."'
                 )
                ";
                $conn->query($sql);
                $sql = 
                "
                UPDATE
                    innelog
                SET
                    odpowiedz = 1,
                    odpowiedzText = '".$body->polecenieText."',
                    odpowiedzTresc = '".$body->odpowiedzText."'
                WHERE
                    id = ".$id."    
                ";
                }
            $conn->query($sql);                
        if ($conn->commit() === TRUE) 
        { 
        $id  = $conn->insert_id;   
        $result = array ("wynik"=>true, "id"=>$id, "error"=>'zapisano odpowiedż'); 
        }
        else 
        { $result = array ("wynik"=>false, "error"=>'nie zapisano odpowiedzi'); }
        $conn->close();       
        }
    }
    else
    {
        $result = array ("wynik"=>false, "error"=>"brak danych");
    }          
    }
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "error"=>"error");
    echo ($e);
}
echo json_encode($result);     
?>