<?php
  include_once '../../includes/dbconnect.php';
  if (isset($_POST['submit'])) {
  //all the variables
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
        $sql = "INSERT INTO `unsolved` (`caseID`, `title`, `imagename`, `casenumber`, `description`, `created_at`) VALUES (NULL, '$title', '$fileNameNew', '$casenumber', '$description', CURRENT_TIMESTAMP);";

        $fileDestination = '../../unsolvedImages/'.$fileNameNew;
        move_uploaded_file($fileTmpName,$fileDestination);
        mysqli_query($conn,$sql);
        header("Location: ../functions/addUnsolvedFuncSuccess.php");
      }else {
        echo "Your file is too big! ";
      }
    } else {
      echo "There was an error uploading your file!";
    }
  }else {
    echo "PLEASE UPLOAD ONLY IMAGES! THANKS YOU!";
  }
}
