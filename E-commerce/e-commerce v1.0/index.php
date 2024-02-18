<?php 
require "function/function.php";


if (isset($_COOKIE["id"]) && isset($_COOKIE["holaamigos"])) {
    $id = $_COOKIE["id"];
    $nem = $_COOKIE["holaamigos"];

    $result = mysqli_query($con, "SELECT email FROM admin WHERE id = $id");
    $row = mysqli_fetch_assoc($result);
    if ($nem === hash("sha256", $row["email"])) {
        $_SESSION["Login"] = true;
    }
}

if(isset($_SESSION["Login"])) {
    echo "<script> alert('anda sudah login) </script>";
    header("Location: page/main.php");
    $_SESSION["email"] = $row["email"];
    exit;
}



if(isset($_POST["Login"])) {

    $email = htmlspecialchars($_POST["email"]);
    $password = htmlspecialchars($_POST["password"]);

    $result = mysqli_query($con, "SELECT * FROM admin WHERE email = '$email'");
    if (mysqli_num_rows($result) === 1) {

        $row = mysqli_fetch_assoc($result);
        if (password_verify($password, $row["password"])) {
            $_SESSION["Login"] = true;
            $_SESSION["email"] = $row["email"];

            if(isset($_POST['rememberme'])) {
                setcookie("id", $row["id"], time()+864000);
                setcookie("holaamigos", hash("sha256", $row["email"]), time()+864000);
            }

            header("LOCATION: page/main.php");
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Inter:700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:700" rel="stylesheet">
    <link rel="stylesheet" href="css/style/style.css">
    <title>Signin and Signup</title>
</head>
<body>
    <div class="container">
        <div class="signin-signup">
            <form action="" class="sign-in-form" method="post">
                <h1 class="title">LOGIN FORM</h1>
                <div class="input-field">
                    <i class="fas fa-envelope">r</i>
                    <input type="text" placeholder="Email Address" name="email">
                </div>
                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password" name="password">
                </div>
                <div class="remember-cont">
                <label for="rememberme">Remember Me</label>
                <input type="checkbox" name="rememberme" class="remember">
                </div>
                    <?php if(isset($error)) : ?>
                        <p style="color:red; font-size:15px; font-weight:bold; margin-top:20px;">USERNAME ATAU PASSWORD SALAH!!!</p>
                    <?php endif; ?>
                <button type="submit" class="btn" name="Login">Login</button>
                <p>Don't have an account? <a href="#" class="account-text" id="sign-up-link">Sign up</a></p>
            </form>
        </div>
    </div>
</body>
</html>