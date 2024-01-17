<?php 
$server = "localhost";
$user = "root";
$password = "";
$dbname =  "ecommerce";

$con = mysqli_connect($server, $user, $password, $dbname);


function query($query) {
    global $con;
    $result = mysqli_query($con,$query);
    $rows = [];
    while ($row = mysqli_fetch_row($result)) {
        $rows[] = $row;
    }
    return $rows;
}