<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
$reportID = 53;


require_once '../includes/dbconnect.php';




	if ($result1 = mysqli_query($conn, "SELECT * FROM chatlogs WHERE `reportID` = $reportID ORDER by chatID ASC")){
		$user = "";
		while ($extract = mysqli_fetch_array($result1))
		{
			if ($extract['isAdmin'] == TRUE)
			{
				$user = "<span style='color:red;font-weight:900;'>Macro Officer</span>";
			} else {
				$user =  "<span style='color:green;font-weight:700;'>Client</span>";
			}

			$formattedTime = "<sup style='color:gray;font-size:50%;'>" . $extract['date_sent'] . "</sup>";
			echo  $user . " : " . $extract['message'] . " ".  $formattedTime . "<br /><hr>" ;
		}
	}

?>﻿
