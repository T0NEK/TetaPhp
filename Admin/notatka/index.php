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
        //$body = (object) array ('kierunek'=>'get', 'stan' => 2, 'notatka' => '1644743771H5V129934757909');
        //$body = (object) array ('kierunek'=>'get', 'stan' => 2, 'notatka' => '1');
        //$body = (object) array ('kierunek'=>'set', 'stan' => 2, 'wersja' => 1, 'notatka' => 'hello notatka');
        $body = json_decode(file_get_contents("php://input"));
        if (isset($body))
        {
        if ($body->kierunek == 'get')    
            {//get 
            $sql = 
                "SELECT
                    id,
                    wersja,
                    stan,
                    CASE stan WHEN 0 THEN 'dostępna'
                                     WHEN 1 THEN 'usunięta'
                                     ELSE 'uszkodzona'
                    END as stanText,
                    czas,
                    tresc
                    FROM
                    notatki_tr
                    WHERE
                    notatki_tr.notatki_ng = ".$body->notatka."
                    ORDER BY
                    wersja
                ";
                $wynik = $conn->query($sql); 
                if ($wynik->num_rows > 0) 
                {
                $notatki = array ();    
                while ($row = $wynik->fetch_assoc())
                {
                $notatka = array ("id"=>$row['id'], "wersja"=>$row['wersja'], "stan"=>($row['stan']==0), "stanText"=>$row['stanText'], "czas"=>$row['czas'], "tresc"=>$row['tresc']);
                array_push($notatki,$notatka);
                $idmax = $row['wersja'];
                }
                $result =  array ("wynik"=>true, "stan"=>true, "notatki"=>$notatki, "wersja"=>$idmax, "error"=>"znaleziono wersji: ".$wynik->num_rows);
                }
                else
                {
                    $result = array ("wynik"=>true, "stan"=>false, "error"=>"treść notatki niedostepna");
                }
            $conn->close();   
            }
            else
            {
                //set
                $time = time();
                $czasserwera = date("Y-m-d H:i:s",$time);
                $sql = "INSERT 
                INTO notatki_tr
                (
                notatki_ng,
                wersja,
                stan,
                czas,
                tresc
                )
                VALUES
                (
                 '".$body->stan."',
                 '".$body->wersja."',
                 0,
                 '".$czasserwera."',
                 '".$body->notatka."'
                 )
                ";
                if ($conn->query($sql) === TRUE) 
                {  
                   $id  = $conn->insert_id;   
                   $result = array ("wynik"=>true, "stan"=>true, "error"=>'wersja: '.$body->wersja, "id"=>$id, "wersja"=>$body->wersja, "stan"=>true, "stanText"=>'dostępna', 'czas'=>$czasserwera, "tresc"=>$body->notatka ); 
                }
                else 
                { 
                $result = array ("wynik"=>false, "stan"=>false,  "error"=>'błąd zapisu'); }
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
    $result = array("wynik"=>false, "stan"=>false, "error"=>"problem z połączeniem");
    echo ($e);
}
echo json_encode($result);     
?>