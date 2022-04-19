<?php

require_once "../../connect.php";



$body = json_decode(file_get_contents("php://input"));
//$body = (object) array ("get"=>'get', "modul"=>3);
//$body = (object) array ("get"=>'set', "idosoba"=>0, "modul"=>3, "dos"=>true);
//$body = (object) array ("get"=>'set', "idosoba"=>9, "modul"=>9, "dos"=>false);

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
                "
                SELECT
                    nazwa
                FROM
                    moduly
                WHERE
                    id = ".$body->modul."
                ";
                $wynik2 = $conn2->query($sql); 
                if ($wynik2->num_rows > 0) 
                {
                $row2 = $wynik2->fetch_assoc();
                $nazwa = $row2['nazwa'];
                }
                else
                {
                $nazwa = 'błąd nazwy';
                }
                $sql = 
                "SELECT
                os.id,
                os.imie,
                os.nazwisko,
                os.funkcja,
                os.kolejnosc,
                IFNULL(moduly.dos,0) as dos
                FROM
                (   SELECT id, imie, nazwisko, funkcja, kolejnosc
                    FROM osoby
                    WHERE user > 0
                )os
                LEFT JOIN
                (   SELECT osoby, dos
                    FROM moduly_osoby
                    WHERE moduly = ".$body->modul."    
                )moduly
                ON os.id = moduly.osoby
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
                $result = array ("get"=>$body->get,"wynik"=>true,  "id"=>$body->modul, "osoby"=>$osoby, "error"=>"wczytano moduły udostępnienia dla: ".$nazwa);
                }
                else
                {
                $result = array ("get"=>$body->get,"wynik"=>false, "id"=>$body->modul, "error"=>"problem z moduły udostępnienia dla: ".$nazwa);
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
                    IFNULL(moduly2.dos,2) as dos,
                    moduly2.id as idwpis,
                    moduly.nazwa
                FROM
                    moduly,
                    (   SELECT id, imie, nazwisko, funkcja
                        FROM osoby
                        WHERE user > 0 AND rodzaj <> 'S'
                    )os
                    LEFT JOIN
                    (   SELECT id, osoby, dos
                        FROM moduly_osoby
                        WHERE moduly = ".$body->modul."    
                    )moduly2
                    ON os.id = moduly2.osoby
                WHERE
                    moduly.id = ".$body->modul."
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
                        INSERT INTO moduly_osoby
                        (
                            moduly,
                            osoby,
                            czas,
                            dos
                        )
                        VALUES
                        (
                            ".$body->modul.",
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
                            moduly_osoby
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
                            $result = array ("get"=>$body->get,"wynik"=>true, "stan"=>true, "error"=>"moduł: {".$nazwa."} został udostepniony dla: Załogi", "idosoba"=>$body->idosoba, "moduly"=>$body->modul, "dos"=>$body->dos, "idosoby"=>$osoby);
                        }
                        else
                        {
                            $result = array ("get"=>$body->get,"wynik"=>true, "stan"=>true, "error"=>"cofnięto Załodze dostęp do modułu: {".$nazwa."}", "idosoba"=>$body->idosoba, "moduly"=>$body->modul, "dos"=>$body->dos, "idosoby"=>$osoby);   
                        }
                    }
                    else
                    {
                        { $result = array ("wynik"=>false, "stan"=>false,  "error"=>"błąd zapisu dostępu do modułu: {".$nazwa."} dla: Załogi"); }                
                    }   
                $conn2->close();    
                }      
                else
                {
                    { $result = array ("wynik"=>false, "stan"=>false,  "error"=>"błąd zapisu dostępu do modułu: {".$nazwa."} dla Załogi"); }                
                }     
            $conn->close();    
            }
            else
            {//set osoba
            $nazwa = '';
            $imie = '';
            $nazwisko = '';    
            $sql = "
            SELECT imie, nazwisko FROM osoby WHERE id = ".$body->idosoba." ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
            { 
            $row = $wynik->fetch_assoc();
            $imie = $row['imie'];
            $nazwisko = $row['nazwisko'];
            }
            $sql = "
            SELECT nazwa FROM moduly WHERE id = ".$body->modul." ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows > 0) 
            { 
            $row = $wynik->fetch_assoc();
            $nazwa = $row['nazwa'];
            }
            $sql = "
            SELECT
                moduly_osoby.id,
                moduly.nazwa,
                osoby.imie,
                osoby.nazwisko
            FROM    
                moduly_osoby,
                moduly,
                osoby
            WHERE  
                moduly_osoby.moduly = ".$body->modul."
                AND moduly_osoby.osoby = ".$body->idosoba."
                AND osoby.id = moduly_osoby.osoby
                AND moduly.id = moduly_osoby.moduly
            ";
            $wynik = $conn->query($sql); 
            $time = time();
            $czasserwera = date("Y-m-d H:i:s",$time);
            if ($wynik->num_rows > 0) 
            { 
            $row = $wynik->fetch_assoc();
            $sql = "
                UPDATE
                moduly_osoby
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
                INSERT INTO moduly_osoby
                (
                    moduly,
                    osoby,
                    czas,
                    dos
                )
                VALUES
                (
                    ".$body->modul.",
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
                    $result = array ("get"=>$body->get,"wynik"=>true, "error"=>"moduł: {".$nazwa."} został udostepniony dla: ".$imie." ".$nazwisko, "idosoba"=>$body->idosoba, "moduly"=>$body->modul, "dos"=>$body->dos);
                }
                else
                {
                    $result = array ("get"=>$body->get,"wynik"=>true, "error"=>"cofnięto: ".$imie." ".$nazwisko." dostęp do modułu: {".$nazwa."}", "idosoba"=>$body->idosoba, "moduly"=>$body->modul, "dos"=>$body->dos);   
                }
            }
            else
            {
                { $result = array ("wynik"=>false, "stan"=>false,  "error"=>"błąd zapisu dostępu do modułu: ".$nazwa." dla: ".$imie." ".$nazwisko); }                
            }   
        $conn->close();               
        $conn2->close();                      
        }
        }   
    }
}
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>false, "error"=>"error");
    echo ($e);
}
}   
else
{
  $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak danych");   
}
echo json_encode($result);     
?>