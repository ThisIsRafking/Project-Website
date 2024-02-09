<?php
require 'function.php';
$anim = query("SELECT * FROM anime");

if(isset($_POST["cari"])) {
    $anim = cari($_POST["keyword"]);
} elseif (isset($_POST["genre"])) {
    $genre = $_POST["genre"];
    $anim = Genre($genre);
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stream Anime Terbaik Se Asia</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <header>
    <div class="jumbotron">
        <h1>KINGSTREAM</h1>

        <div class="hamburger-menu">
        <div class="hamburger-menu">
    <button class="hamburger-button" onclick="toggleMenu()">☰</button>
    <div id="user-info" style="display: none;">
        <img src="../img/5856.jpg">
        <span id="user-name"><?= $_SESSION["name"] ?></span>
        <button class="logout"><a href="../logout.php" style="text-decoration: none;">Logout</a></button>

    </div>
    </div>
        </div>
        <form action="" method="post">
        <div class="search">
            <input type="text" placeholder="Search" name="keyword" autocomplete="off">
            <button class="search-button" name="cari">
                <i class="fa fa-search"></i>
            </button>
        </div>
        </form>
    </div>
</header>
        <div class="poster">
            <div class="header">
            </div>
            <div class="content">
                <img class="posimg" src="../img/sj.jpg" alt="Gambar Poster">
            </div>
        </div>

        <main>
        <?php foreach($anim as $row) : ?>
            <div class="card">
        <div class="image">
                <a href="../section.php?id=<?= $row["id"] ?>"><img class="kagame" src="../img/<?php echo $row["images"]; ?>"></a>
        </div>
        <div class="caption">
               <p class="product_name"><?=$row["name"];?></p>
           </div>
            </div>
           <?php endforeach; ?>
    </main>
    <center>
    <form action="" method="post">
    <section class="genre">
    <h2>Genre List</h2>
    <ul class="genre-list">
        <button name="genre" class="genre-item" value="Action">Action</button>
        <button name="genre" class="genre-item" value="Adventure">Adventure</button>
        <button name="genre" class="genre-item" value="Romance">Romance</button>
        <button name="genre" class="genre-item" value="Drama">Drama</button>
        <button name="genre" class="genre-item" value="Comedy">Comedy</button>
        <button name="genre" class="genre-item" value="Suspense">Suspense</button>
        <button name="genre" class="genre-item" value="Supernatural">Supernatural</button>
        <button name="genre" class="genre-item" value="SCI-FI">SCI-FI</button>
        <button name="genre" class="genre-item" value="Fantasy">Fantasy</button>
    </ul>
    </section>
    </form>
    </center>
    <script src="../js/script.js"></script>
</body>
</html>
