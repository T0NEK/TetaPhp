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
        //$body = (object) array ('stan' => 'uszkodzenia' );
        //$body = (object) array ('stan' => 'stan' );
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {
        if ($body->stan == 'uszkodzenia')    
        {
            $sql = 
                "SELECT
                    uszkodzenianazwa.id,
                    uszkodzenianazwa.nazwa,
                    uszkodzenianazwa.opis
                FROM
                    uszkodzenianazwa
                ORDER BY
                    uszkodzenianazwa.nazwa
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {    
                $uszkodzenianazwa = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $uszkodzenienazwa = array ("id"=>$row['id'], "nazwa"=>$row['nazwa'], "opis"=>$row['opis']);
                array_push($uszkodzenianazwa,$uszkodzenienazwa);
                }
                $result = array ("wynik"=>true, "stan"=>true, "lista"=>$uszkodzenianazwa, "error"=>"wczytano nazwy uszkodzeń: ".$wynik->num_rows);
                }
            else
            {
            $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak nazw uszkodzeń?");
            }
        $conn->close();       
        }
        elseif ($body->stan == 'stan')    
        {
            $sql = 
                "SELECT
                    stan.id,
                    stan.nazwa,
                    stan.stan,
                    stan.opis
                FROM
                    stan
                ORDER BY
                    stan.nazwa
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {    
                $stanynazwa = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $stannazwa = array ("id"=>$row['id'], "nazwa"=>$row['nazwa'], "opis"=>$row['opis'], "stan"=>$row['stan']);
                array_push($stanynazwa,$stannazwa);
                }
                $result = array ("wynik"=>true, "stan"=>true, "lista"=>$stanynazwa, "error"=>"wczytano nazwy stanów: ".$wynik->num_rows);
                }
            else
            {
            $result = array ("wynik"=>true, "stan"=>false, "error"=>"brak nazw stanów?");
            }
        $conn->close();       
        }
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