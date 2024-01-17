<?php

$con = mysqli_connect("localhost","root","","ecommerce");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = htmlspecialchars($_POST['username']);
    $password = htmlspecialchars($_POST['password']);
    $email = htmlspecialchars($_POST['email']);

    $sql = "INSERT INTO users (username,password,email) VALUES ('$username','$password','$email')";
}

if(mysqli_query($con,$sql)) {
    header("Location:peg/mainpage.php");
}

mysqli_close($con);