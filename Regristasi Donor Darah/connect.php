<?php

if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
    $Con = mysqli_connect('localhost','root','','blood_donation_camp') or die("connection failed:" .mysqli_connect_error());
    if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['phone']) && isset($_POST['bgroup'])) 
    {

        $name = $_POST ['name'];
        $email = $_POST ['email'];
        $phone = $_POST ['phone'];
        $bgroup = $_POST ['bgroup'];


        $sql= "INSERT INTO `bdc_user` (`name`,`email`,`phone`,`bgroup`) VALUES ('$name','$email','$phone','$bgroup')";
        
        $query = mysqli_query($Con, $sql);
        if ($query) {
            echo  'Entry Sucessfull';
        }
        else {
            echo 'Error Occurred';
        }

    }
}

?>