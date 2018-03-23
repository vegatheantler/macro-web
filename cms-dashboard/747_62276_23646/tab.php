<?php
session_start();
if (!isset($_SESSION['username'])){
header("Location: !qazxsw2.php");
} else{
require '../../includes/dbconnect.php';
$username = $_SESSION['username'];
$sql = "SELECT * FROM admin WHERE uname='$username'";
$result=mysqli_query($conn,$sql);
}
?>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../277_62276_23646/tab.css">
</head>
<body>

<div class="abshead">
<a class="abslogout" href="logout.php"><img class="absheadimg" src="../images/nav.png"/></a>
</div>

</body>
</html>
