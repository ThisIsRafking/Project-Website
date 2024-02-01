<?php 
require 'function.php';

$animek = query("SELECT * FROM users");

if (isset($_POST["cari"])) {
    $animek = cari($_POST["keyword"]);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <center>
    <table border="1" cellpadding="10" cellspacing="0">
       <tr>
        <th>No.</th>
        <th>Username</th>
        <th>Password</th>
        <Th>Email</Th>
        <th>AKSI</th>
       </tr>
       
       <?php foreach($animek as $row) : ?>
       <tr>
        <td><?=$row["User_ID"]."."?></td>
        <td><?=$row["username"]?></td>
        <td><?=$row["password"]?></td>
        <td><?=$row["email"] ?></td>
        <td>
            <a href="../edit.php?User_ID=<?=$row["User_ID"];?>">Edit</a> |
            <a href="../hapus.php?User_ID=<?=$row["User_ID"];?>" onclick="return confirm('YAKIN?')">HAPUS</a>
        </td>
       </tr>
       <?php endforeach; ?>
    </table>

    <a class="button-link" href="../register.php">TAMBAH DATA USER</a>
    <form action="" method="post">
        <input type="text" name="keyword" placeholder="masukkan pencarian" autocomplete="off">
        <button type="submit" name="cari">Search</button>
    </form>
    </center>
</body>
</html>
