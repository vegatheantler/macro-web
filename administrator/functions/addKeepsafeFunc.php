<?php
  include_once '../../includes/dbconnect.php';
  if (isset($_POST['submit'])) {
  //all the variables
  $sidebarName = $_POST['sidebarName'];
  $content = $_POST['content'];
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
        INSERT INTO `keepsafe` (`id`, `sidebarName`, `imageName`, `content`, `defaultOpened`, `created_at`) VALUES (NULL, '$sidebarName', '$fileNameNew', '$content', '', CURRENT_TIMESTAMP);
        ";
        $fileDestination = '../../keepsafeImages/'.$fileNameNew;
        move_uploaded_file($fileTmpName,$fileDestination);
        mysqli_query($conn,$sql);
        header("Location: ../functions/addKeepsafeFuncSuccess.php");
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
