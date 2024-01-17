<?php

// Data Types
$string = "P Mabar"; //Text
$int = 123;          //Numeric
$float = 1.23;       //Pecahan
$bool = true;        //True Or False

$array = array("Asep", "Udin", "GigaChad"); // array() Or [] = Kumpulan Data
$object = null; //Type Object

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//  Built-In Superglobal Variables

echo $_SERVER["DOCUMENT_ROOT"];
echo "<br>";
echo $_SERVER["PHP_SELF"];
echo "<br>";
echo $_SERVER["SERVER_NAME"];
echo "<br>";
echo $_SERVER["REQUEST_METHOD"];
echo "<br>";

/*
$_GET["null"];
$_POST["null"];
$_REQUEST["null"];
$_FILES["null"];
$_COOKIE["null"];
$_ENV["null"]
*/

$_SESSION["nama"] = "Alok";
echo $_SESSION["nama"];                                                                                                                                                                               echo "<br>";

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Operators

// String Operator

$a1 = "aku";
$b1 = "Alok";
$c1 = $a1 . " " . $b1;
echo $c1;
echo "<br>";                                                                                                                                                                      
// Arihmethic Operator

// +, =, -, *, %, **, ()

$a = 2;
$a += 4;
echo $a;

echo "<br>";

$b = 5;
$b /= 2;
echo $b;
echo "<br>";

//comparison Operator

$a2 = 7;
$b2 = 4;

if ($a2 == $b2) {
echo "sama";
}
else {
    echo "gasama" . "<br>";
}

$a3 = 7;
$b3 = "7";

if ($a3 == $b3) {
echo "sama1" . "<br>";
}
else {
    echo "gasama1";
}

$a4 = 7;
$b4 = "7";

if ($a4 === $b4) {
echo "sama2";
}
else {
    echo "gasama2" . "<br>";
}

// == Comparison tanpa Melihat Data types
// != Comparison False
// === Comparison dengan menggunakan data type
// < > Comparison KUrang Lebih Dari OR <= >=

// Logical Operator


$a5 = 7;
$b5 = 7;

$c1 = 3;
$d = 3;

if ($a4 == $b4 or $c1 == $d) {
echo "sama2" . "<br>";
}
else {
    echo "gasam" . "<br>" ;
}

// or ||
// and &&

// Increment/Decrement Operator

$a6 = 1;
echo ++$a6 . "<br>";

$b6 = 1;
echo --$b6 . "<br>";

$a7 = 1;
echo $a7++;
echo $a7++;
echo $a7++;
echo $a7++;
echo $a7++;
echo $a7++;
echo $a7++;
echo $a7++;
echo ++$a7 . "<br>";

$a8 = 1;

if ($a8 < 10) {
    while($a8++ < 10){
        echo $a8  . "<br>";
 }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Conditions & Control Structures

$bool = true;
$d = 1;
$e = 3;

if ($d < $e && !$bool) { //Multiple Condition
    echo "First condition is true!";
}
else if ($d < $e && $bool) {
    echo "Second condition is true!";
} 
else {
    echo "none of the condition were true";
}

switch ($d) { //One Condition Only
    case 1:
        echo "First case is true!";
        break;
    case 5:
        echo "Second case is true!";
    default:
    echo "none of the condition were true";
} echo "<br>";

$result = match ($d) {
    1 => "variable one match to First condition!",
    2 => "variable one match to Second condition!",
    3, 4, 5 => "variable one match to Last condition!",
    default => "none of them were match to the condition",
};

echo $result . "<br>";

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Array

$fruits = ["apple", "pear", "orange"]; //0 - 1 - 2 - ...

$fruits[1] = "banana";
unset($fruits[2]);

echo $fruits[1] . "<br>";

$piket = [
    "Nyapu" => "alok",
    "bela negara" => "kairi kumar",
    "Ngepel" => "rizki"
];

echo count($piket) . $piket["Nyapu"] . "<br>";

print_r($piket);                                             echo "<br>";
array_push($piket, "Danis");
print_r($piket);


?>