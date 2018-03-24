<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>

      <meta name="generator"
      content="HTML Tidy for HTML5 (experimental) for Windows https://github.com/w3c/tidy-html5/tree/c63cc39" />

  	<link href="../css/chat.css" rel="stylesheet">
      <title>chatbox</title>

  </head>
  <body>
    <div class="container" id="main">
       <div class="row" id="welcome">
          <div  class="col-md-8 col-sm-8 leftside animated fadeInLeft">
             <br><br><br><br>
             <div class="leftside jumbotron well" id="chatbox">
                <?php if (true) { ?>
                  <div id="chatArea">
                   <div class="container">
                     <div class="row">
                       <div class = " well">
                         <div class="well" id="chatlogs">Retrieving.. <span class="fa fa-circle-o-notch fa-spin fa-fw"></span>
                         </div><div id="loading" style="display:none;"><span class="fa fa-circle-o-notch fa-spin fa-fw"></span></div>
                         <form name="form1">
                           <div class="form-group">
                             <div class="textarea-container">
                               <textarea class="form-control"
                               name="msg"
                               placeholder="Type your message here"
                               onkeydown = "if (event.keyCode == 13)
                                 document.getElementById('chat-send').click()"
                               ></textarea>
                               <a href="#" id="chat-send" onclick="submitChat()"><span class="fa fa-paper-plane"></span></a>
                             </div>
                             <!--
                             <textarea rows="1" style="resize:none;" class="form-control" name="msg"></textarea>
                             <br />
                             <a href="#" class="btn btn-primary" onclick="submitChat()">send</a>
                             <br />
                             <br />
                             -->
                           </div>
                         </form>
                       </div>
                     </div>
                   </div>
                 </div>
               <?php   } else{ ?>
                <h2>Welcome to <b>Macro</b>.</h2>
                <p>Or <b>Manila's Anonymous Crime Reporting Online.</b> Connect with us — get to know all crime-related issues in your community. Get in-the-moment updates of the reports you submitted. And learn how crimes unfold, in real time, from every angle.</p>
                <?php } ?>
             </div>
          </div>
       </div>
       <!-- end row -->
    </div>
    <!-- end container -->
    </div><!-- end container -->



<script>window.jQuery || document.write('<script src="../js/jquery-1.8.2.min.js"><\/script>')</script>



    <script>

    function submitChat() {
    if ( form1.msg.value == "")
    {
      return;
    }
    //$('#loading').show();
    var msg = form1.msg.value;
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
    var chatlogs = document.getElementById("chatlogs");
    chatlogs.innerHTML = xmlhttp.responseText;
    form1.msg.value="";
    $("#chatlogs").scrollTop(function() { return this.scrollHeight; });
    //$('#loading').hide();
    }
    }
    xmlhttp.open("GET","../chat/insert.php?msg="+msg, true);
    xmlhttp.send();
    }
    $(document).ready (function(){
    $.ajaxSetup({cache:false});
    setInterval(function(){
    $("#chatlogs").load('../chat/logs.php');
    updateScroll();
    }, 2000);


    var scrolled = false;
    function updateScroll(){
    if(!scrolled){
      var element = document.getElementById("chatlogs");
      element.scrollTop = element.scrollHeight;
    }
    }
    $("#chatlogs").scroll (function(){
    scrolled=true;
    });
    });
    </script>



  </body>
</html>
