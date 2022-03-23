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
                   zalogowanynew
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
                if ($blokada == 1)  
                    {
                    if ($zalogowany == 0)    
                        {
                        $time = date("Y-m-d H:i:s",time());
                        $sql = "UPDATE 
                                osoby
                                SET
                                zalogowanynew = 1,
                                czaslogowania = '".$time."',
                                czaswylogowania = '',
                                czaszmiana = '".$time."'
                                WHERE
                                id = ".$id."
                                ";
                        if ($conn->query($sql) === TRUE) 
                            { 
                                $result = array ("wynik"=>true, "stan"=>true, "zalogowany"=>$id, "imie"=>$imie, "nazwisko"=>$nazwisko, "autoryzacja"=>($autoryzacja==1), "funkcja"=>$funkcja, "rodzaj"=>$rodzaj, "error"=>" - zostałeś zalogowany");
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
            user=1 AND
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
            if ($zalogowany == 1)
            {
            $time = date("Y-m-d H:i:s",time());
            $sql = "UPDATE 
                    osoby
                    SET
                    zalogowanynew = 0,
                    czaswylogowania = '".$time."',
                    czaszmiana = '".$time."'
                    WHERE
                    id = ".$id."
                    ";
            if ($conn->query($sql) === TRUE) 
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
        else
        {
            $result = array ("wynik"=>false, "stan"=>false, "error"=>"błąd nie znaleziono osoby");  
        }
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
    //echo $e;
}
echo json_encode($result);
?>