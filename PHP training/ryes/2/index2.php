<?php 

//  Internal (Built-In) Functions


// sub string

$string = "Hello World!";

echo strlen($string) . "<br>"; // Jumlah Karakter

echo strpos($string, "o") . "<br>"; // posisi karakter

echo str_replace("Hello", "Go Away", $string) . "<br>";

print_r(explode(" ", $string)); echo "<br>";

//math

$number = -5.4;

echo abs($number)  . "<br>";
echo round($number)  . "<br>";
echo sqrt(20)  . "<br>";
echo rand(1, 100)  . "<br>";

//array

$fruits = ["apple", "banana", "orange"];

array_push($fruits, "kiwi");

echo count($fruits)  . "<br>";
echo is_array($fruits) . "<br>";


//date Time

echo date("y-m-d h.i.s") . "<br>"; // Y = Years M = Month d = Day H = Hours i = minutes s = Second
echo date("Y M D H:IsS") . "<br>";

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// User Defined Function

function hello() {
    echo "Hello World!";
}

hello(); echo "<br>";

function namaOrang($firstname, $lastname, $Age) {
    return "Hello " . $firstname . " " . $lastname . ", your age must be " . $Age;
}

$OrangPertama = namaOrang("Ahmad", "alread", 18);
$OrangKedua = namaOrang("Bayu", "Emrahadul", 15);
echo $OrangPertama . "<br>";
echo $OrangKedua . "<br>";

$test = "test";
function test() {

global $test;
return $test;

}
$teyt = test();

echo $teyt . "<br>";

function calculator(int $num01, int $num02) {
    $result = $num01 + $num02;
    return $result;
}

$calc = calculator(2, 8);
echo $calc . "<br>";

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Loops

/* for ($i = 0; $i <= rand(1, 20); $i++) {
    echo "Tambah Terus Tambah, Sekarang Bernilai" . $i . "<br>";
} */

/*$num = 0;
while ($num < 10) {
    echo $num;
    $num++;
}*/

$english = [
"red" => "merah",
"blue" => "biru",
"yellow" => "kuning",
];

foreach ($english as $inggris => $indonesia) {
echo "English is " . $inggris . " dan indonesianya adalah " . $indonesia . "<br>"; 
}

?>