<?php
$servername = "localhost";
$serverusername = "root";
$serverpassword = "";
$serverdb = "pnp2";

// Create connection
$conn = mysqli_connect($servername, $serverusername, $serverpassword,$serverdb);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

?>
