<?php
  include_once '../../includes/dbconnect.php';
  if (isset($_POST['submit'])) {
  //all the variables
  $caseID = $_POST['caseID'];
  $title = $_POST['title'];
  $casenumber = $_POST['casenumber'];
  $description = $_POST['description'];
  $file = $_FILES['file'];


  $fileName = $_FILES['file']['name'];
  $fileTmpName = $_FILES['file']['tmp_name'];
  $fileSize = $_FILES['file']['size'];
  $fileError = $_FILES['file']['error'];
  $fileType = $_FILES['file']['type'];


  $fileExt = explode('.', $fileName);
  $fileActualExt = strtolower(end($fileExt));

  $allowed = array('jpg','jpeg','png','pdf');

  if (in_array($fileActualExt, $allowed)) {
    if ($fileError === 0) {
      if ($fileSize < 2000000) {
        $fileNameNew = uniqid('', true).".".$fileActualExt;
        $sql = "
        UPDATE `unsolved` SET `title` = '$title', `imagename` = '$fileNameNew', `casenumber` = '$casenumber', `description` = '$description' WHERE `unsolved`.`caseID` = '$caseID';
        ";
        mysqli_query($conn,$sql);
        $fileDestination = '../../unsolvedImages/'.$fileNameNew;
        move_uploaded_file($fileTmpName,$fileDestination);
        header("Location: ../functions/updateWantedFuncSuccess.php");
      }else {
        echo "Your file is too big! ";
      }
    } else {
      echo "There was an error uploading your file!";
    }
  }else {
    echo "Please upload images only!";
  }
}
