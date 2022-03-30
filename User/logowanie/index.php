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
    if ($body->zalogowany == 0)    
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
                   userlogin = '".$body->login."' AND
                   haslonew = '".$body->pass."' 
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
                if ($blokada == 1)  
                    {
                    $sql = "
                    SELECT
                        logowania.czaslogowania,
                        komputery.nazwa
                    FROM
                        logowania,
                        komputery
                    WHERE
                        logowania.zalogowany = ".$id." 
                        AND logowania.del = 0   
                        AND komputery.id = logowania.komputery
                    ";    
                    $wynik = $conn->query($sql); 
                    if ($wynik->num_rows > 0)
                    {
                        $row = $wynik->fetch_assoc();
                        $result = array ("wynik"=>true,  "stan"=>false, "error"=>$imie." ".$nazwisko." - jesteś zalogowany na: ".$row['nazwa'].' od:'.$row['czaslogowania']);
                    } 
                    else
                    {
                    if ($zalogowany == 0)    
                        {
                        $conn->autocommit(false);
                        $sql = "UPDATE 
                                    osoby
                                SET
                                    zalogowanynew = 1,
                                    czaslogowania = '".$body->czas."',
                                    czaswylogowania = '',
                                    czaszmiana = '".$body->czas."'
                                WHERE
                                    id = ".$id."
                                ";
                        $conn->query($sql);

                        $sql = "INSERT 
                        INTO logowania
                        (
                        komputery,
                        czaslogowania,
                        czaswylogowania,
                        czaszmiana,
                        zalogowany,
                        del
                        )
                        VALUES
                        (".$body->idhost.",
                         '".$body->czas."',
                         '',
                         '".$body->czas."',
                         '".$id."',
                         0
                         )
                        ";
                        $conn->query($sql);
                        if ($conn->commit() === TRUE) 
                            { 
                                $result = array ("wynik"=>true, "stan"=>true, "zalogowany"=>$id, "imie"=>$imie, "nazwisko"=>$nazwisko, "autoryzacja"=>($autoryzacja==1), "funkcja"=>$funkcja, "rodzaj"=>$rodzaj, "naroslnew"=>$naroslnew, "error"=>" - zostałeś zalogowany");
                            }
                            else 
                            { 
                                $result = array ("wynik"=>false, "stan"=>false, "error"=>$imie." ".$nazwisko." - błąd logowania"); 
                            }
                        }
                        else
                        {
                            $result = array ("wynik"=>true,  "stan"=>false, "error"=>$imie." ".$nazwisko." - jesteś zalogowany na innym urzadzeniu");     
                        }   
                    }         
                    }
                    else
                    {
                        $result = array ("wynik"=>true,  "stan"=>false, "error"=>$imie." ".$nazwisko." - odmowa logowania");     
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
                id,
                czaslogowania
            FROM
                logowania
            WHERE
                zalogowany = ".$id." 
                AND del = 0   
            ";    
            $wynik = $conn->query($sql); 
            if ($wynik->num_rows == 0)
            {
                $result = array ("wynik"=>true,  "stan"=>false, "error"=>$imie." ".$nazwisko." - nie jesteś zalogowany");
            } 
            else
            {
            $row = $wynik->fetch_assoc();    
            $czaslogowania = $row['czaslogowania'];
            $idlog = $row['id'];
            if ($zalogowany == 1)
            {
            $conn->autocommit(false);
            $sql = "UPDATE 
                        osoby
                    SET
                        zalogowanynew = 0,
                        czaswylogowania = '".$body->czas."',
                        czaszmiana = '".$body->czas."'
                    WHERE
                        id = ".$id."
                    ";
            $conn->query($sql);
            $sql = "UPDATE 
                        logowania
                    SET
                        czaswylogowania = '".$body->czas."',
                        czaszmiana = '".$body->czas."',
                        del = 1
                    WHERE
                        id = ".$idlog."
                        ";
            $conn->query($sql);
            if ($conn->commit() === TRUE) 
            {
                $result = array ("wynik"=>true, "stan"=>true, "zalogowany"=>0, "imie"=>"", "nazwisko"=>"", "autoryzacja"=>false, "funkcja"=>"", "rodzaj"=>"", "error"=>$imie." ".$nazwisko." - zostałeś wylogowany");
            }
            else
            {
                $result = array ("wynik"=>false, "stan"=>false, "error"=>"nieokreślony błąd podczas wylogowywania");  
            }
            }
            else
            {
                $result = array ("wynik"=>false, "stan"=>false, "error"=>$imie." ".$nazwisko." - nie jesteś zalogowany");  
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
        { //get
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