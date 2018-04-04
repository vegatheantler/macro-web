<?php
include_once 'functions/browserchecker.php';
?>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">
    <link rel="stylesheet" type="text/css" href="css/gallery.css">

  <title>Binondo's Most Wanted</title>
</head>
<body>
<?php require 'includes/dbconnect.php';
      require 'indexheader.html';
	  ;?>
<?php
$sql = "SELECT * FROM wanted";
if ($result = mysqli_query($conn, $sql)) {
    if (mysqli_num_rows($result) > 0) {

    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
?>
  <div class="container" id="wanted" class="tabcontent">
<form class="form" method="POST" action="multistep.php">
  <div class="col-lg-3 col-sm-4 col-xs-6  ">
    <div class="thumbnail animated fadeInLeft">
      <ul class="list-group">
        <li class="list-group-item"><img height="150" width="225" src="wantedImages/<?php echo $row["wantedID"];  ?>.jpg"></li>
    <li class="list-group-item"><p>Name: <?php echo strtoupper($row["lastName"]) . "," . $row["firstName"];  ?></p></li>
    <li class="list-group-item"><p>Age: <?php echo $row["age"]. ' years old';  ?></p></li>
    <li class="list-group-item"><p>Description: <?php echo $row["gender"] . ", " . $row["appearance"] . ", " . $row['height'] . ", " . $row['build'] . ", " . $row['hairLength'] ." " . $row['hairStyle'];  ?></p></li>
    <li class="list-group-item"><p>Case: <?php echo $row["CriminalCase"];?></p></li>
    <li class="list-group-item"><p>Warrant Date: <?php echo $row["warrantDate"];  ?></p></li>
    <li class="list-group-item"><center><button type="submit" class="btn btn-info">Give tip about this criminal</button></center></center></li>
    <input type="hidden" name="wantedID" value="<?php echo htmlentities($row["wantedID"]); ?>">
    <input type="hidden" name="wantedName" value="<?php echo htmlentities($row["firstName"]. " ". $row["lastName"]); ?>">
  </ul>
    </div>
  </div>
</form>
	<?php
    }
	} else {
		echo "0 wanted at a time";
	}
}
?>
</div>
</body>
</html>
