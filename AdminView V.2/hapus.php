<?php 
require 'page/function.php';

$id = $_GET["User_ID"];

if (hapus($id) > 0) {
    echo "
    <script>
    alert('Data berhasil di hapus');
    document.location.href = 'page/index.php'
    </script>";
}