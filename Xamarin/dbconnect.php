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


$sql="Select * FROM accounts";
$result=mysqli_query($conn,$sql);
if($result){
	
	while($row=mysqli_fetch_array($result)){
		$flag[]=$row;
	}
	print(json_encode($flag));
}
mysqli_close($conn);
?>