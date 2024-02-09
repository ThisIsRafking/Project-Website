<?php 

require 'page/function.php';
    $id = $_GET["id"];

    $result = mysqli_query($con,"SELECT * FROM anime WHERE id = $id");
    $row = mysqli_fetch_assoc($result);

    $episodes_result = mysqli_query($con, "SELECT * FROM episodes WHERE anime_id = $id");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $row["name"] ?></title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/section.css">
</head>
<body>
    <header>
    <center>
    <h1 style="margin-top:15px;">Tonton sekarang</h1>
</center>
<main>
    <p class="name"><?=$row["name"]?></p><br>
    <p class="name">Genre : <?= $row["genre"] ?></p><br>
    <p class="name">Score : <?= $row["score"] ?></p><br>
    <p class="name">Episode : <?= $row["episodes"] ?></p>
    <h3>Sinopsis :</h3>
    <h4 class="sinopsis"><?= $row["sinopsis"] ?></h4>
    <div class="episodey">
    <p class="name">Daftar Episode :</p><br>
    <ul>
        <?php while ($episode_row = mysqli_fetch_assoc($episodes_result)) : ?>
            <li>
                <a href="<?= $episode_row['video_url'] ?>">
                    <?= $episode_row['episode_number'] ?>: <?= $episode_row['title'] ?>
                </a>
            </li>
        <?php endwhile; ?>
    </ul>
    </div>
</main>
<aside>
    <img src="img/<?= $row["images"] ?>">
</aside>
</header>
</body>
</html>