<?php
require 'page/function.php';

$con = mysqli_connect("localhost", "root", "", "animeliste");

$id = $_GET["User_ID"];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = htmlspecialchars($_POST['username']);
    $password = !empty($_POST['password']) ? htmlspecialchars($_POST['password']) : null;
    $email = htmlspecialchars($_POST['email']);

    
    $sql = empty($password) ? "UPDATE users SET username='$username', email='$email' WHERE User_ID = $id" : "UPDATE users SET username='$username', password='$password', email='$email' WHERE User_ID = $id";

    if (mysqli_query($con, $sql)) {
        header("LOCATION: page/index.php");
        exit();
    }
    
}

$mhs = query("SELECT * FROM users WHERE User_ID = $id")[0];
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
    <form action="edit.php?User_ID=<?= $id ?>" method="post">
        <h1>EDIT DATA</h1>
        <label for="username">Username</label><br>
        <input type="text" name="username" value="<?= $mhs["username"] ?>"><br>

        <label for="password">Password</label><br>
        <input type="password" name="password" value="<?= $mhs["password"] ?>"><br>

        <label for="email">Email</label><br>
        <input type="email" name="email" value="<?= $mhs["email"] ?>"><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
