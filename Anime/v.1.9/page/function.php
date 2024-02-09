<?php

session_start();
$con = mysqli_connect("localhost", "root", "", "animeliste");
function query($query) {
    global $con;
    $result = mysqli_query($con, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function cari($keyword) {
    $query = "SELECT * FROM anime WHERE name LIKE '%$keyword%'
    ";
    return query($query);
}

function Genre($genre)
{
   global $con;

   $genreArray = explode(',', $genre);

   $queries = [];
   foreach ($genreArray as $genre) {
       $queries[] = "SELECT * FROM anime WHERE genre LIKE '%$genre%'";
   }

   $finalQuery = implode(' UNION ', $queries);
   return query($finalQuery);
}

function regis($data) {
    global $con;

    $username = strtolower(htmlspecialchars($data["username"]));
    $password = mysqli_real_escape_string($con, $data["password"]);
    $password2 = mysqli_real_escape_string($con, $data["password2"]);

    
    $sqlu = mysqli_query($con,"SELECT name FROM admin WHERE name = '$username'");
    if (mysqli_fetch_assoc($sqlu)) { 
        echo "<script> alert('username sudah ada') </script>";
        return false;
    }

    if ($password !== $password2) {
        echo "<script> alert('Password tidak sama') </script>";
        return false;
    }
    $password = password_hash($password, PASSWORD_DEFAULT);
    
    $sql = "INSERT INTO admin VALUES ('','$username', '$password')"; 

    mysqli_query($con,$sql);

    return mysqli_affected_rows($con);
}