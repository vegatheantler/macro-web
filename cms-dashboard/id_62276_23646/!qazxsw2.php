<?php
  session_start();
  $db = mysqli_connect("localhost", "root", "", "pnp2");

  if (isset($_POST['login_btn'])) {

    $username =  $_POST['username'];
    $password =  $_POST['password'];

    $password = md5($password);

    $sql = "SELECT * FROM accounts WHERE username='$username' AND password='$password'";
    $result = mysqli_query($db, $sql);

    if (mysqli_num_rows($result) == 1) {
      $_SESSION['message'] = "You are now logged in";
      $_SESSION['username'] = $username;

      header("location: ../747_62276_23646/tab.php");

    } else {
      $_SESSION['message'] = 'Username / Password Incorrect';
    }
  }
?>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Macro_CMS</title>
<link rel="stylesheet" href="../277_62276_23646/!qazxsw2.css">
</head>
<body>
<form  method="POST" action="!qazxsw2.php">
  <div class="vid-container">
  <div class="inner-container">
    <div class="box">
      <center>Admin</center>
	  <br><br>
      <input type="text" name="username" placeholder="Username"/>
      <input type="password" name="password" placeholder="Password"/>
      <input class="button" type="submit" name="login_btn" value="Login">
      <p>Forgot Password? <span>Call Developer.</span></p>
    </div>
  </div>
  <?php
	if (isset($_SESSION['message'])) {
		echo "<div id='error_msg'>".$_SESSION['message']."</div>";
		unset($_SESSION['message']);
	}
?>
</div>
</form>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="js/index.js"></script>
</body>
</html>
