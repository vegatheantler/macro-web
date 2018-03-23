<!DOCTYPE html>
<html>
<head>
  <title>PNP Sumbong11 Inquiry</title>
  <link rel="stylesheet" href="css/report.css" type="text/css" media="screen">
</head>
<body>
<div class="container">  
  <form id="contact" action="" method="post">
    <h3>Inquiry Form</h3>
    <h4>Fill all the given field.</h4>
    <fieldset>
      <input placeholder="Your name "  type="text" tabindex="1" required autofocus>
    </fieldset>
    <fieldset>
      <input placeholder="Your Email Address (optional)" type="email" tabindex="2" required>
    </fieldset>
    <fieldset>
      <input placeholder="Your Phone Number" type="tel" tabindex="3" required>
    </fieldset>
    <fieldset>
      <textarea placeholder="Type your message here...." tabindex="5" required></textarea>
    </fieldset>
    <fieldset>
      <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
    </fieldset>
    <fieldset>
      <center><button id="back" onclick="goBack()">Go Back</button></center>
      <script>
      function goBack() {
          window.history.back();
      }
      </script>
    </fieldset>
  </form>
</div>
</body>
</html>