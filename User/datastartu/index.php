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
        if (isset($body))
            { //set
                $sql = "UPDATE 
                ustawienia 
                SET
                zmiana = '".$body->zmiana."',
                wartosc='".$body->czas."'
                WHERE
                id=2
                ";
                if ($conn->query($sql) === TRUE)
                { $result = array ("wynik"=>true, "stan"=>$body->czas);}
                else 
                { $result = array ("wynik"=>false, "stan"=>$body->czas, "error"=>"nie zapisano");}
                $conn->close();    
            }
            else
            { //get
                $sql = "SELECT
                *
                FROM
                (SELECT wartosc as stan FROM ustawienia WHERE id=5) t1 
                JOIN
                (SELECT wartosc as czasorg FROM ustawienia WHERE id=1) t2
                JOIN
                (SELECT wartosc as czasnew, zmiana as czasnewzmiana FROM ustawienia WHERE id=2) t3
                ON true
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $row = $wynik->fetch_assoc();
                $result = array ("wynik"=>true, "stan"=>$row['stan'], "czasorg"=>$row['czasorg'], "czasnew"=>$row['czasnew'], "czasnewzmiana"=>$row['czasnewzmiana']);
                $conn->close();   
                }
                else
                {
                    $result = array ("wynik"=>false, "stan"=>"0 wyników");      
                }
            }          
    }
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>"error", "error"=>$e);
}
echo json_encode($result);     
?>