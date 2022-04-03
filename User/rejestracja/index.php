<?php
require_once "../../connect.php";
//echo json_encode(getallheaders());
if(isset($_SERVER['HTTP_X_FORWARDED_FOR']) && $_SERVER['HTTP_X_FORWARTDED_FOR'] != '') {
    $nrip = $_SERVER['HTTP_X_FORWARDED_FOR'];
} else {
    $nrip = $_SERVER['REMOTE_ADDR'];
}   
  $host = gethostbyaddr($nrip); 
  $poz = strpos($host,'.');
  if ($poz !== false) 
  { $host = substr($host,0,$poz) ;}
$time = time();
$hostid = chr(rand(65,90)).chr(rand(65,90)).rand(1,100).$time.chr(rand(65,90)).chr(rand(65,90)).rand(1,100).$time*rand(1,100).chr(rand(65,90)).chr(rand(65,90));
$czasserwera = date("Y-m-d H:i:s",$time);
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
            $sql = "INSERT 
                    INTO komputery
                    (
                    nazwa,
                    nrip,
                    hostid,
                    czasrejestracja,
                    czaszmiana
                    )
                    VALUES
                    ('".$host."',
                     '".$nrip."',
                     '".$hostid."',
                     '".$body->czas."',
                     '".$body->czas."'
                     )
                    ";
            if ($conn->query($sql) === TRUE) 

            { 
            $id  = $conn->insert_id;   
            $result = array ("wynik"=>true, "id"=>$id, "nazwa"=>$host, "nrip"=>$nrip, "hostid"=>$hostid, "czas"=>$body->czas, "czasserwera"=>$czasserwera); }
            else 
            { $result = array ("wynik"=>false, "czas"=>$body->czas, "error"=>'nie zarejestrowano', "czasserwera"=>$czasserwera); }
            $conn->close();    
        }    
        else
        { //get
           $result = array ("wynik"=>false, "czas"=>"", "error"=>"brak danych", "czasserwera"=>$czasserwera);
        } 
    }   
}
catch(Exception $e)    
{
    $result = array("wynik"=>false, "stan"=>"error", "error"=>$e, "czasserwera"=>$czasserwera);
}
echo json_encode($result);
?>