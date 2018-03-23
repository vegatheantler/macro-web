<?php
  include_once '../../includes/dbconnect.php';
  if (isset($_POST['submit'])) {
  //all the variables
  $fname = $_POST['fname'];
  $lname = $_POST['lname'];
  $criminalcase = $_POST['criminalcase'];
  $crimelocation = $_POST['crimelocation'];
  $crimeDesc = $_POST['crimeDesc'];
  $time = $_POST['time'];
  $warrantDate = $_POST['warrantDate'];
  $age = $_POST['age'];
  $gender = $_POST['gender'];
  $height = $_POST['height'];
  $build = $_POST['build'];
  $hairColor = $_POST['hairColor'];
  $hairLength = $_POST['hairLength'];
  $hairStyle = $_POST['hairStyle'];
  $facialHair = $_POST['facialHair'];
  $ethnicApp = $_POST['ethnicApp'];
  $addInfo = $_POST['addInfo'];
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
        $sql = "INSERT INTO wanted (wantedID, firstName, lastName, CriminalCase, crimeLocation, crimeDesc, time, warrantDate, age, gender, height, build, hairColor, hairLength, hairStyle, facialHair, ethnicApp, addInfo,imgName) VALUES (NULL, '$fname', '$lname', '$criminalcase', '$crimelocation', '$crimeDesc', '$time', '$warrantDate', '$age', '$gender', '$height', '$build', '$hairColor', '$hairLength', '$hairStyle', '$facialHair', '$ethnicApp', '$addInfo', '$fileNameNew');";
        mysqli_query($conn,$sql);
        $fileDestination = '../uploads/'.$fileNameNew;
        move_uploaded_file($fileTmpName,$fileDestination);
        header("Location: ../addWanted.php");
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
