<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="css/unsolved.css">
	<link rel="stylesheet" type="text/css" href="css/gallery.css"></head>
	<style type="text/css">
		.tab {
    float: left;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
    width: 30%;
    height: 300px;
}

/* Style the buttons that are used to open the tab content */
.tab button {
    display: block;
    background-color: inherit;
    color: black;
    padding: 22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    float: left;
    padding: 0px 12px;
    border: 1px solid #ccc;
    width: 70%;
    border-left: none;
    height: 300px;
}
	</style>
	<title>MACRO || SEARCH</title>
<?php
	require 'includes/dbconnect.php'; 
	require 'indexheader.html';?>




<div class="tab"><br><br><br>
  <button class="tablinks" onclick="openCity(event, 'London')">London</button>
  <button class="tablinks" onclick="openCity(event, 'Paris')">Paris</button>
</div>	



	<?php
	if(isset($_POST['submit-search'])){
		$search = mysqli_real_escape_string($conn, $_POST['search-big']);
		$sql = "SELECT * FROM unsolved where description LIKE '%$search%'";
		$result = mysqli_query($conn, $sql);
		$queryResult = mysqli_num_rows($result);

		if ($queryResult > 0) {
			while ($row = mysqli_fetch_assoc($result)) {
				?>
			
<!-- unsolved search output -->
<div class="container" id="London">
	<form method="POST" action="multistep.php">
    <div class="row">
        <div class="col-sm-12"><br><br><br><br>
        	<h4 class="animated fadeIn">PUBLISHED DATE: <?php echo $row["created_at"]; ?></h4><br>
            <img  id="unsolved-img" class="animated bounceIn" src="unsolvedImages/<?php echo $row["imagename"]; ?>.jpg">
            <h1 id="ctitle" style="text-transform: uppercase;" class="animated fadeIn"><?php echo $row["title"]; ?></h1>
            <h4 class="animated fadeIn">CASE# <?php echo $row["casenumber"]; ?></h4>
            <p class="animated fadeIn"><?php echo $row["description"] ?></p>
            <br>
            <input type="hidden" name="caseID" value="<?php echo $row["caseID"] ?>">
            <center><input type="submit" value="GIVE US TIPS" class="btn btn-info" href="#"></center>
            <hr>
            <br><br>
        </div>
    </div>
    </form>
</div>


<!-- end -->
				<?php
			}
		} 
	}
	if(isset($_POST['submit-search'])){
		$search1 = mysqli_real_escape_string($conn, $_POST['search-big']);
		$sql1 = "SELECT * from wanted where CriminalCase LIKE '%$search%'";
		$result1 = mysqli_query($conn, $sql1);
		$queryResult1 = mysqli_num_rows($result1);

		if ($queryResult1 > 0) {
			while ($row = mysqli_fetch_assoc($result1)) {
				?>
<!-- wanted search output -->

<div id="Paris" class="tabcontent">
  <h3>Paris</h3>
  <p>Paris is the capital of France.</p>
</div>


<!-- end -->

				<?php
			}
		} else {
			echo "NO RESULT";
		}


	}
?>


</body>
<script src="js/script.js"></script>
<script type="text/javascript">function openCity(evt, cityName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the link that opened the tab
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
} </script>
</html>