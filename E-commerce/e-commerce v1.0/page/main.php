<?php 
require "../function/function.php";
$store = query("SELECT * FROM product");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>-----MAIN PAGE-----</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Inter:700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:700" rel="stylesheet">
    <link rel="stylesheet" href="../css/style/main.css">
    <link rel="stylesheet" href="../css/responsive/main.css">
</head>
<body>
    <header>
        <img src="../img/cihuy.png">
        <navbar>
            <input type="text" name="search" class="search">
            <button><i class="fas fa-search" id="search-icon"></i></button>
        </navbar>
        <div class="nav"> 
                          <div class="regi">
                          <h2>$100.000.000</h2>  
                          <img src="../img/cash.png" class="two"> 
                          <img src="../img/menu.png" class="two">
                          </div>

        <img src="../img/cart.png" class="one">
        <img src="../img/bell.png" class="one">
        <img src="../img/chat.png" class="one">
        </div>
    </header>

    <main>
        <?php foreach($store as $row) : ?>
            <div class="card">
        <div class="image">
                <a href="../section.php?id=<?= $row["id"] ?>"><img class="kagame" src="../img/<?php echo $row["image"]; ?>"></a>
        </div>
        <div class="caption">
               <p class="product_name"><?=$row["title"];?></p>
           </div>
            </div>
           <?php endforeach; ?>
    </main>
</body>
</html>