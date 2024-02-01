<?php 

$con = mysqli_connect("localhost","root","","animeliste");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = htmlspecialchars($_POST['username']);
    $password = htmlspecialchars($_POST['password']);
    $email = htmlspecialchars($_POST['email']);

    $sql = "INSERT INTO users VALUES ('', '$username', '$password', '$email')";
}



if (mysqli_query($con,$sql)) {
    header("LOCATION: page/index.php");
    exit();
}

mysqli_close($con);