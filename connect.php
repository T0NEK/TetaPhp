<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, PUT, POST");
header("Access-Control-Allow-Headers: *");
header("Content-Type: application/json; charset=utf-8");
//header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');

$servername = "localhost";
$username   = "komunikator";
$password   = "komunikator";
$dbname     = "teta";

mysqli_report(MYSQLI_REPORT_STRICT | MYSQLI_REPORT_ALL & ~MYSQLI_REPORT_INDEX);

?>