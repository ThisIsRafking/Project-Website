<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kalkulator</title>
    <style>
        body {
            background-color: black;
        }

        form {
            text-align: center;
        }

        input {
            color: aliceblue;
            padding: 10px;
            background-color:lightslategrey;
            border: 2px solid white;
            border-radius: 10px;
            text-align: center;
        }

        Select {
            padding : 10px;
            border-radius: 10px;
            background-color:slategrey;
            border: 2px solid white;
        }

        button {
            padding: 10px;
            width: 400px;
            border-radius: 15px;
            border: 2px solid white;
            background-color:teal;
        }

        .calc-error {
            color: darkred;
            text-align: center;
            font-size: 70px;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            font-weight: bold;
        }

        .calc-result {
            color:aliceblue;
            text-align: center;
            font-size: 50px;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            font-weight: bold;
        }

    </style>
</head>
<body>
    <form  action="<?php echo htmlspecialchars( $_SERVER["PHP_SELF"]); ?>" method="post">

    <input type="number" name="num01" placeholder="Number one"><br><br>

    <Select name="operator">
        <option value="add">+</option>
        <option value="subtract">-</option>
        <option value="multiply">*</option>
        <option value="divide">/</option>
    </Select><br><br>

    <input type="number" name="num02" placeholder="Number two"><br><br>
    <button>Calculate</button>

</form>

<?php 
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $num01 = filter_input(INPUT_POST, "num01", FILTER_SANITIZE_NUMBER_FLOAT);
    $num02 = filter_input(INPUT_POST, "num02", FILTER_SANITIZE_NUMBER_FLOAT);
    $operator = htmlspecialchars($_POST["operator"]);
}

$error = false;

if (empty($num01) || empty($num02) || empty($operator)) {
echo "<p class='calc-error'>Fill in All Field!<p>";
$error = true;
}

if (!is_numeric($num01) || !is_numeric($num02)){
    echo "<p class='calc-error'>Only Numbers!<p>";
    $error = true;
}

if (!$error) {
    $value = 0;

    switch ($operator) {
        case "add":
        $value = $num01 + $num02;
        break;

       case "subtract":
       $value = $num01 - $num02;      
       break;

       case "multiply":
        $value = $num01 * $num02;      
        break;

        case "divide":
            $value = $num01 / $num02;      
            break;

        default:
        echo "<p class='calc-error'>Invalid Operator!<p>";
    }

    echo "<p class='calc-result'> " . $value . "</p>";
}

?>

</body>
</html>