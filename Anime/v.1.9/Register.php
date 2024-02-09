<?php 
require 'page/function.php';

if(isset($_POST["register"])) {

    if(regis($_POST) > 0) {
        echo "<script> alert('Data baru berhasil ditambah')</script>";
        header("LOCATION: Login.php");
    } else {
        echo mysqli_error($con);
    }
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
        <h1>Register Form</h1>
        <label for="username">Username</label><br>
        <input type="text" name="username" id="username"><br>

        <label for="password">Password</label><br>
        <input type="password" name="password" id="password"><br>

        <label for="password2">Confirm Password</label><br>
        <input type="password2" name="password2" id="password2"><br>

        <button name="register">Submit</button>
</form>

</body>
</html>