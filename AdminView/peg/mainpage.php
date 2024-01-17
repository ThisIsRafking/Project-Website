<?php 
require 'function.php';

$users = query("SELECT * FROM users");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main Page</title>
    <style>
        /* Mengatur warna dasar untuk tema gelap */
body {
  background-color: #1f2937; /* Biru tua yang elegan */
  color: #fff; /* Teks berwarna putih */
  font-family: sans-serif;
}

/* Membentuk tampilan tabel yang rapi */
table {
  width: 100%; /* Memenuhi lebar halaman */
  border-collapse: collapse; /* Menghilangkan garis ganda */
  margin: 20px auto; /* Memberi jarak dari tepi halaman */
}

th, td {
  padding: 10px; /* Memberi jarak antar sel */
  text-align: left; /* Rata kiri untuk teks */
  border: 1px solid #ccc; /* Mengatur border sel */
}

th {
  background-color: #2c3e50; /* Biru tua yang sedikit lebih terang */
  font-weight: bold; /* Teks tebal untuk header */
}

/* Membuat zebra striping untuk mempermudah pembacaan */
tr:nth-child(even) {
  background-color: #34495e; /* Biru tua yang lebih gelap untuk baris genap */
}

/* Mengatur judul tabel */
h1 {
  text-align: center; /* Rata tengah */
  margin-bottom: 20px; /* Memberi jarak dari tabel */
}

    </style>
</head>
<body>
    <table border="1" cellpadding="10" cellspacing="0">
<h1>Users Table</h1>

    <tr>
        <th>No.</th>
        <th>Username</th>
        <th>Password</th>
        <th>Email</th>
    </tr>

    <?php foreach($users as $row) : ?>
    <tr>
        <td><?=$row[0]?></td>
        <td><?=$row[1]?></td>
        <td><?=$row[2]?></td>
        <td><?=$row[3]?></td>
    </tr>
<?php endforeach; ?>

    </table>
</body>
</html>