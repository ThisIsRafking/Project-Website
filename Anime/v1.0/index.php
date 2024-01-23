<?php
require 'connect.php';
$imag = query("SELECT * FROM anime");
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stream Anime Terbaik Se Asia</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <header>
    <div class="jumbotron">
        <h1>INI LEGAL KOK</h1>
        <div class="hamburger-menu">
            <button class="hamburger-button">☰</button>
        </div>
        <div class="search">
            <input type="text" placeholder="Search">
            <button class="search-button">
                <i class="fa fa-search"></i>
            </button>
        </div>
    </div>
</header>
        <div class="poster">
            <div class="header">
            </div>
            <div class="content">
                <img src="img/sj.jpg" alt="Gambar Poster">
            </div>
        </div>

        <main>
        <?php while($row = mysqli_fetch_assoc($imag)){ ?>
            <div class="card">
        <div class="image">
                <img src="img/<?php echo $row["images"]; ?>"width="10%">
        </div>
        <div class="caption">
               <p class="product_name"><?=$row["name"];?></p>
           </div>
            </div>
           <?php } ?>
    </main>
</body>
</html>
