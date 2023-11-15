<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Regristration Form</title>
</head>
<h1>Blood Donation Camp</h1>
<body>
<div><h2>Registration Form</h2></div>
<form action='connect.php' method="POST">

<label for='user'>Name:</label><BR>
<input type='text' name='name' id='name' required/><bR>

<label for='email'>Email:</label><BR>
<input type='email"' name='email' id='email' required/><bR>

<label for='phone'>Phone:</label><BR>
<input type="text" name="phone" id="phone" required/><bR>

<label for='bgroup'>Blood Group:</label><BR>
<input type="text" name="bgroup" id="bgroup" required/><bR><bR>

<input type='submit' name='submit' id='submit'/>

</form>

</body>
</html>