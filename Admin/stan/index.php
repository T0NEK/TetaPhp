<?php
require_once "../../connect.php";
//echo json_encode(getallheaders());
try
{
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) 
    { throw new Exception( $conn->connect_error); } 
    else
    {
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        { //set   
            $conn->autocommit(false);
            $sql = "UPDATE 
                    ustawienia 
                    SET
                    zmiana = '".$body->zmiana."',
                    wartosc = UPPER ('".$body->czasD."')
                    WHERE
                    id=4
                    ";
            $conn->query($sql);
            $sql = "UPDATE 
                    ustawienia 
                    SET
                    zmiana = '".$body->zmiana."',
                    wartosc = UPPER ('".$body->stan."')
                    WHERE
                    id=5
                    ";
            $conn->query($sql);
            $sql = "UPDATE 
                    ustawienia 
                    SET
                    zmiana = '".$body->zmiana."',
                    wartosc = '".$body->czas."'
                    WHERE
                    id=6
                    ";
            $conn->query($sql);

            if ($conn->commit() === TRUE) 
            { $result = array ("wynik"=>true, "stan"=>$body->stan, "czas"=>$body->czas); }
            else 
            { $result = array ("wynik"=>false, "stan"=>$body->stan, "czas"=>$body->czas, "error"=>'nie zapisano'); }
            $conn->close();    
        }    
        else
        { //get
           $sql = "SELECT
                    *
                    FROM
                    (SELECT wartosc as stan FROM ustawienia WHERE id=5) t1 
                    JOIN
                    (SELECT wartosc as czas FROM ustawienia WHERE id=6) t2
                    ON true
                    ";          
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                    $row = $wynik->fetch_assoc();
                    $result = array ("wynik"=>true, "stan"=>$row['stan'], "czas"=>$row['czas']);
                } 
                else 
                {
                    $result = array ("wynik"=>true, "stan"=>"", "czas"=>"", "error"=>"0 wyników");
                }
            $conn->close();            
        } 
    }   
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>"error", "error"=>$e);
}
echo json_encode($result);
?>