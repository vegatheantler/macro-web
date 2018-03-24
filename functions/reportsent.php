<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Anton">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Faster One">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Didact Gothic">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Didact Antic">
  </head>
  <body>
    <div class='container-fluid'>
    <div class='row padding15'>
      <div class='col-xs-10 col-md-6  col-xs-offset-1 col-md-offset-3'>
        <div class='row text-center'><br><br><br><br>
          <hr/>
          <h1 style="font-family: 'Anton', serif;font-size: 48px;">MACRO PH</h1>
        </div>

        <div>
          <center>
          <h3 class='text-success' style="font-family: 'Faster One', serif;font-size: 30px;"> REPORT SUCCESS! </h3>
          </center>
          <br />
          <center>
          <p class='lead' style="font-family: 'Didact Gothic', serif;font-size: 25px;">
            REFERENCE ID: <b><?=$_GET['referenceID']?></b> <br>
            PASSWORD: <b><?=$_GET['referencePassword']?></b></center>
            <br/>
            <br/>
          <p style="font-family: 'Antic', serif;">DO NOT LOSE THE ABOVE REFERENCE ID AND PASSWORD.
          IT IS THE ONLY WAY TO CHECK THE STATUS OF YOUR REPORT.
          Be sure to login at <a href="../">MACRO PH</a> to provide any additional information to this report. Also, login often to see if there are any follow up questions pending which you could possibly answer.</p>
          <br></p>

        </div>

        <hr/>
        <div class='row text-center padding15'>
          <a href='../'>&copy; 2018 MACRO PH</a>
        </div>
      </div>
    </div>
  </div>

  </body>
</html>
