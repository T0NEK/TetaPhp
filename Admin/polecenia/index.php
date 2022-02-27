<?php

require_once "../../connect.php";

//$body = (object) array ("get"=>'set', "idosoba"=>2, "idpolecenia"=>1, "dos"=>true);
//$body = (object) array ("get"=>'set', "idosoba"=>0, "idpolecenia"=>1, "dos"=>true);
//$body = (object) array ("get"=>'zalogowany', "idosoba"=>0, "idpolecenia"=>1, "dos"=>true);
$body = json_decode(file_get_contents("php://input"));
if (isset($body))
{ 
try
{
  $conn = new mysqli($servername, $username, $password, $dbname);
  $conn->set_charset("utf8");
  if ($conn->connect_error) 
  { throw new Exception( $conn->connect_error); } 
  else
  {
    $conn2 = new mysqli($servername, $username, $password, $dbname);
    $conn2->set_charset("utf8");
    if ($conn2->connect_error) 
    { throw new Exception( $conn2->connect_error); } 
    else
    {
        if ($body->get == "get")
        {   
          
                $sql = 
                "SELECT
                    polecenia.id,
                    polecenia.nazwa,
                    polecenia.zalogowany,
                    polecenia.wylogowany,
                    polecenia.polecenie,
                    polecenia.czas,
                    polecenia.dzialania,
                    poleceniaorg.nazwa as nazwaOrg,
                    polecenia.komunikat
                    FROM
                    polecenia,
                    polecenia poleceniaorg
                    WHERE
                    poleceniaorg.id = polecenia.polecenie
                    ORDER BY
                    nazwaOrg, 
                    dzialania desc,
                    nazwa
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $polecenia = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $sql = 
                "SELECT
                os.id,
                os.imie,
                os.nazwisko,
                os.funkcja,
                os.kolejnosc,
                IFNULL(pol.dos,0) as dos
                FROM
                (   SELECT id, imie, nazwisko, funkcja, kolejnosc
                    FROM osoby
                    WHERE user > 0
                )os
                LEFT JOIN
                (   SELECT osoby, dos
                    FROM polecenia_osoby
                    WHERE polecenia = ".$row['id']."    
                )pol
                ON os.id = pol.osoby
                ORDER BY
                os.kolejnosc
                ";
                $wynik2 = $conn2->query($sql); 
                if ($wynik2->num_rows > 0) 
                {
                $osoby = array ();    
                while ($row2 = $wynik2->fetch_assoc())
                {
                  $osoba = array ("id"=>$row2['id'], "imie"=>$row2['imie'], "nazwisko"=>$row2['nazwisko'], "funkcja"=>$row2['funkcja'], "dos"=>($row2['dos'] == 1) );
                  array_push($osoby,$osoba);
                }
                }
                else
                {
                $osoby = array();    
                }
                $polecenie = array ( "id"=>$row['id'], "podstawowe"=>($row['id']==$row['polecenie']), "nazwa"=>$row['nazwa'], "zalogowany"=>($row['zalogowany']==0), "wylogowany"=>($row['wylogowany']==0), "polecenie"=>$row['polecenie'], "czas"=>$row['czas'], "dzialania"=>$row['dzialania'], "nazwaOrg"=>$row['nazwaOrg'], "komunikat"=>$row['komunikat'], "osoby"=>$osoby);
                array_push($polecenia,$polecenie);
                }
                $result = array ("get"=>$body->get,"wynik"=>true, "stan"=>true, "polecenia"=>$polecenia, "error"=>"wczytano polecenia: ".$wynik->num_rows);
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>false, "error"=>"problem z wczytaniem");      
                }
        $conn->close();               
        $conn2->close();               
        }   
        elseif ($body->get == "set")
        {//set
            if ($body->idosoba == 0)
            {//set osoby
                $sql = "
                SELECT
                    os.id,
                    IFNULL(pol.dos,2) as dos,
                    pol.id as idwpis,
                    polecenia.nazwa
                FROM
                    polecenia,
                    (   SELECT id, imie, nazwisko, funkcja
                        FROM osoby
                        WHERE user > 0 AND rodzaj <> 'S'
                    )os
                    LEFT JOIN
                    (   SELECT id, osoby, dos
                        FROM polecenia_osoby
                        WHERE polecenia = ".$body->idpolecenia."    
                    )pol
                    ON os.id = pol.osoby
                WHERE
                    polecenia.id = ".$body->idpolecenia."
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                    $conn2->autocommit(false);
                    $osoby = array ();
                    while ($row = $wynik->fetch_assoc())
                    {
                    $time = time();
                    $czasserwera = date("Y-m-d H:i:s",$time);
                    $nazwa = $row['nazwa'];
                    if ($row['dos'] == 2) 
                    {   
                        $sql = "
                        INSERT INTO polecenia_osoby
                        (
                            polecenia,
                            osoby,
                            czas,
                            dos
                        )
                        VALUES
                        (
                            ".$body->idpolecenia.",
                            ".$row['id'].",
                            '".$czasserwera."',
                            ".($body->dos ? 1:0)."
                        )
                    ";
                    $conn2->query($sql); 
                    array_push($osoby,intval($row['id']));
                   }
                    else
                    {
                       $sql = "
                            UPDATE
                            polecenia_osoby
                            SET
                            dos = ".($body->dos ? 1:0).",
                            czas = '".$czasserwera."'
                            WHERE
                            id = ".$row['idwpis']."
                        ";
                        $conn2->query($sql); 
                        array_push($osoby,intval($row['id']));        
                    }
                    }
                    if ($conn2->commit() === TRUE) 
                    {
                        if ($body->dos)
                        {
                            $result = array ("get"=>$body->get,"wynik"=>true, "stan"=>true, "error"=>"polecenie: {".$nazwa."} zostało udostepniona dla: Załogi", "idosoba"=>$body->idosoba, "idpolecenia"=>$body->idpolecenia, "dos"=>$body->dos, "idosoby"=>$osoby);
                        }
                        else
                        {
                            $result = array ("get"=>$body->get,"wynik"=>true, "stan"=>true, "error"=>"cofnięto Załodze dostęp do polecenia: {".$nazwa."}", "idosoba"=>$body->idosoba, "idpolecenia"=>$body->idpolecenia, "dos"=>$body->dos, "idosoby"=>$osoby);   
                        }
                    }
                    else
                    {
                        { $result = array ("wynik"=>false, "stan"=>false,  "error"=>"błąd zapisu dostępu do polecenia: {".$nazwa."} dla: Załogi"); }                
                    }   
                $conn2->close();    
                }      
                else
                {
                    { $result = array ("wynik"=>false, "stan"=>false,  "error"=>"błąd zapisu dostępu do polecenia: {".$row['nazwa']."} dla Załogi"); }                
                }     
            $conn->close();    
            }
            else
            {//set osoba
            $sql = "
            SELECT
                polecenia_osoby.id,
                polecenia.nazwa,
                osoby.imie,
                osoby.nazwisko
            FROM    
                polecenia_osoby,
                polecenia,
                osoby
            WHERE  
                polecenia_osoby.polecenia = ".$body->idpolecenia."
                AND polecenia_osoby.osoby = ".$body->idosoba."
                AND osoby.id = polecenia_osoby.osoby
                AND polecenia.id = polecenia_osoby.polecenia
            ";
            $wynik = $conn->query($sql); 
            $time = time();
            $czasserwera = date("Y-m-d H:i:s",$time);
            if ($wynik->num_rows > 0) 
            { 
            $row = $wynik->fetch_assoc();
            $sql = "
                UPDATE
                polecenia_osoby
                SET
                dos = ".($body->dos ? 1:0).",
                czas = '".$czasserwera."'
                WHERE
                id = ".$row['id']."
            ";
            }
            else
            {
            $sql = "
                INSERT INTO polecenia_osoby
                (
                    polecenia,
                    osoby,
                    czas,
                    dos
                )
                VALUES
                (
                    ".$body->idpolecenia.",
                    ".$body->idosoba.",
                    '".$czasserwera."',
                    ".($body->dos ? 1:0)."
                )
            ";
            }
            if ($conn2->query($sql) === TRUE) 
            {
                if ($body->dos)
                {
                    $result = array ("get"=>$body->get,"wynik"=>true, "stan"=>true, "error"=>"polecenie: {".$row['nazwa']."} zostało udostepniona dla: ".$row['imie']." ".$row['nazwisko'], "idosoba"=>$body->idosoba, "idpolecenia"=>$body->idpolecenia, "dos"=>$body->dos);
                }
                else
                {
                    $result = array ("get"=>$body->get,"wynik"=>true, "stan"=>true, "error"=>"cofnięto: ".$row['imie']." ".$row['nazwisko']." dostęp do polecenia: {".$row['nazwa']."}", "idosoba"=>$body->idosoba, "idpolecenia"=>$body->idpolecenia, "dos"=>$body->dos);   
                }
            }
            else
            {
                { $result = array ("wynik"=>false, "stan"=>false,  "error"=>"błąd zapisu dostępu do polecenia: {".$row['nazwa']."} dla: ".$row['imie']." ".$row['nazwisko']); }                
            }   
        $conn->close();               
        $conn2->close();                      
        }
        }   
        else
        {
        $sql = "
        SELECT
            nazwa
        FROM 
            polecenia
        WHERE 
            id = ".$body->idpolecenia."    
        ";
        $wynik = $conn->query($sql); 
        if ($wynik->num_rows > 0) 
        {
        $row = $wynik->fetch_assoc();
        $nazwa = $row['nazwa'];
        $sql = "
            UPDATE
                polecenia
            SET
                ".$body->get." = ".($body->dos ? 1:0)."
            WHERE
            id = ".$body->idpolecenia."
        ";
        if ($conn->query($sql) === TRUE) 
        {
            $result = array ("get"=>$body->get,"wynik"=>true, "stan"=>true, "error"=>"polecenie: {".$row['nazwa']."} zmieniono stan {".$body->get."} na: ".($body->dos ? "Nie":"Tak"), "idosoba"=>$body->idosoba, "idpolecenia"=>$body->idpolecenia, "dos"=>$body->dos);
        }
        else
        {
            { $result = array ("wynik"=>false, "stan"=>false,  "error"=>"błąd zapisu stanu {".$body->get."}"); }                
        }
        }
        else
        {
            { $result = array ("wynik"=>false, "stan"=>false,  "error"=>'błąd odczytu polecenia'); }                
        }
        $conn->close();               
        }  
    }
}
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>false, "error"=>"error");
    //echo ($e);
}
}   
else
{
  $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak danych");   
}
echo json_encode($result);     
?>