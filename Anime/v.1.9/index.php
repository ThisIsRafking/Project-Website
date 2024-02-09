<?php 
require 'page/function.php';

if (isset($_COOKIE["id"]) && isset($_COOKIE["holaamigos"])) {
    $id = $_COOKIE["id"];
    $nem = $_COOKIE["holaamigos"];

    $result = mysqli_query($con, "SELECT name FROM admin WHERE id = $id");
    $row = mysqli_fetch_assoc($result);
    if ($nem === hash("sha256", $row["name"])) {
        $_SESSION["Login"] = true;
    }
}

if(isset($_SESSION["Login"])) {
    echo "<script> alert('anda sudah login) </script>";
    header("Location: page/mainpage.php");
    $_SESSION["name"] = $row["name"];
    exit;
}



if(isset($_POST["Login"])) {

    $username = htmlspecialchars($_POST["username"]);
    $password = htmlspecialchars($_POST["password"]);

    $result = mysqli_query($con, "SELECT * FROM admin WHERE name = '$username'");
    if (mysqli_num_rows($result) === 1) {

        $row = mysqli_fetch_assoc($result);
        if (password_verify($password, $row["password"])) {
            $_SESSION["Login"] = true;
            $_SESSION["name"] = $row["name"];

            if(isset($_POST['rememberme'])) {
                setcookie("id", $row["id"], time()+864000);
                setcookie("holaamigos", hash("sha256", $row["name"]), time()+864000);
            }

            header("LOCATION: page/mainpage.php");
            exit;
        }
    }
    $error = true;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<form action="" method="post">
        <h1>Login Form</h1>
        <label for="username">Username</label><br>
        <input type="text" name="username" id="username"><br>

        <label for="password">Password</label><br>
        <input type="password" name="password" id="password"><br>
        <?php if(isset($error)) : ?>
        <p style="color:red; font-size:12px"; font-weight:bold;>USERNAME ATAU PASSWORD SALAH!!!</p>
        <?php endif; ?>
        <label for="rememberme">Remember Me</label><br>
        <input type="checkbox" name="rememberme" id="remember"><br>
        <button name="Login">Submit</button>
        <button><a href="Register.php" style="text-decoration: none;">Daftar<a></button>
</form>
</body>
</html>