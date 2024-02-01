<?php

$con = mysqli_connect("localhost","root","","animeliste");

function query($query) {
global $con;
$result = mysqli_query($con,$query);
$rows = [];
while ($row = mysqli_fetch_assoc($result)) {
$rows[] = $row;
}
return $rows;
}

function hapus($id) {
    global $con;
    mysqli_query($con,"DELETE FROM users WHERE User_ID = $id");
    return mysqli_affected_rows($con);
}

function cari($keyword) {
    $query = "SELECT * FROM users 
    WHERE 
    username LIKE '%$keyword%' OR
    password LIKE '%$keyword%' OR
    email LIKE '%$keyword%'
    ";

    return query($query);
}