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
       //$body = (object) array ('login' => 'john', 'pass' => '123');
        if (isset($body))
        { //set   
    if ($body->stan == true)    
        {//logowanie
            $sql ="SELECT
                   id,
                   imie,
                   nazwisko, 
                   autoryzacja,
                   funkcja,
                   rodzaj,
                   blokadanew,
                   zalogowanynew,
                   naroslnew
                   FROM
                   osoby 
                   WHERE
                   (user = 1 OR user = 2 ) AND
                   id = ".$body->zalogowany."
                   ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows == 1) 
                {
                $row = $wynik->fetch_assoc();
                $id = $row['id'];
                $imie = $row['imie'];
                $nazwisko = $row['nazwisko'];
                $autoryzacja = $row['autoryzacja'];
                $funkcja = $row['funkcja'];
                $rodzaj = $row['rodzaj'];
                $blokada = $row['blokadanew'];
                $zalogowany = $row['zalogowanynew'];
                $naroslnew = $row['naroslnew'];
                $sql = "INSERT 
                INTO logowania
                (
                komputery,
                czaslogowania,
                czaswylogowania,
                czaszmiana,
                zalogowany,
                del,
                wyloguj
                )
                VALUES
                (".$body->idhost.",
                    '".$body->czas."',
                    '',
                    '".$body->czas."',
                    '".$id."',
                    0,
                    0
                    )
                ";
                if ($conn->query($sql) === TRUE) 
                    { 
                        $result = array ("wynik"=>true, "stan"=>true, "zalogowany"=>$id, "imie"=>$imie, "nazwisko"=>$nazwisko, "autoryzacja"=>($autoryzacja==1), "funkcja"=>$funkcja, "rodzaj"=>$rodzaj, "polecenia"=>($zalogowany==1), "naroslnew"=>$naroslnew, "error"=>$imie." ".$nazwisko." - został zalogowany");
                    }
                    else 
                    { 
                        $result = array ("wynik"=>false, "stan"=>false, "error"=>$imie." ".$nazwisko." - błąd logowania"); 
                    }     
                }
                else
                {
                    $result = array ("wynik"=>true, "stan"=>false, "error"=>"nieprawidłowy login lub hasło");     
                }
        $conn->close();                        
        }  
        else
        {//wylogowanie
            $sql ="SELECT
            id,
            imie,
            nazwisko, 
            zalogowanynew
            FROM
            osoby 
            WHERE
            (user = 1 OR user = 2 ) AND
            id = ".$body->zalogowany."
            ";
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows == 1) 
            {
            $row = $wynik->fetch_assoc();
            $id = $row['id'];
            $imie = $row['imie'];
            $nazwisko = $row['nazwisko'];
            $zalogowany = $row['zalogowanynew'];
            $sql = "
            SELECT
                logowania.id,
                logowania.czaslogowania,
                logowania.wyloguj,
                komputery.nazwa
            FROM
                logowania,
                komputery
            WHERE
                logowania.zalogowany = ".$id." 
                AND logowania.komputery = komputery.id
                AND logowania.del = 0   
            ";    
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows == 0)
            {
                $result = array ("wynik"=>false,  "stan"=>false, "error"=>$imie." ".$nazwisko." - nie jest zalogowany");
            } 
            else
            {
            while ($row = $wynik->fetch_assoc())
            {
            $czaslogowania = $row['czaslogowania'];
            $idlog = $row['id'];
            $nazwa = $row['nazwa'];
            $wyloguj = $row['wyloguj'];
            if ($nazwa == $body->nazwa)
            {   $wiersz = ' del = 1 '; $komunikat = '- został wylogowany'; }
            else
            { if ($wyloguj == 1)
                { $wiersz = ' del = 1, wyloguj = 0 '; $komunikat = '- został brutalnie wylogowany '; }
                else
                { $wiersz = ' wyloguj = 1 '; $komunikat = '- wydano polecenie wylogowania'; }
            }
            $sql = "UPDATE 
                        logowania
                    SET
                        ".$wiersz."
                    WHERE
                        id = ".$idlog."
                        ";
            if ($conn->query($sql) === TRUE) 
            {
                $result = array ("wynik"=>true, "stan"=>true, "zalogowany"=>0, "imie"=>"", "nazwisko"=>"", "autoryzacja"=>false, "funkcja"=>"", "polecenia"=>true, "rodzaj"=>"", "error"=>$imie." ".$nazwisko." z: ".$czaslogowania." ".$komunikat);
            }
            else
            {
                $result = array ("wynik"=>false, "stan"=>false, "error"=>"nieokreślony błąd podczas wylogowywania: ".$imie." ".$nazwisko." z:".$czaslogowania);  
            }
            }
        }
        }
        else
        {
            $result = array ("wynik"=>false, "stan"=>false, "error"=>"błąd nie znaleziono osoby");  
        }
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
    $result = array("wynik"=>false, "stan"=>"error", "error"=>$e);
    echo $e;
}
echo json_encode($result);
?>