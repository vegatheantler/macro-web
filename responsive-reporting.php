<!DOCTYPE html>
<html>
<head>
	<title>macRo Crime Report Process</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body background=">
<form> 
<div class="container">
  <form action="/action_page.php">

<div class="container">
<!-- general information -->
<br><br><br><br>
    <div class="row well">
        <div class="col-md-offset-2 col-md-8 text-center "><h2>General Information</h2>
        <strong><span class="label label-success">Required</span></strong>
        </div>
        <div class="col-xs-12"><hr></div>
        <div class="col-md-6">
        <select class="form-control" name="typeOfOffense" required>
        <option seletected value='' disabled selected hidden>Select Offense Type</option>
        <option>Arson</option>
        <option >Bank Fraud</option>
        <option >Burglary Building</option>
        <option >Burglary Habitation</option>
        <option >Drugs</option>
        <option >Foreign Fighter Radicalization</option>
        <option >Forgery</option>
        <option >Homicide</option><option >Robbery</option>
        <option >Sexual Assault</option>
        <option >Terrorism</option>
        <option >Theft</option>
        <option >Vehicle Theft</option>
        <option >Warrant</option>
        <option>Other</option>
      </select>
      </div><br>
        <div class="col-md-6 col-xs-6 ">
        	 <span data-toggle="tooltip" title="Or your approximate guess of the time and date of the crime.">
        	 <input type="text"  id="dateTimeOfOffense" class="form-control" name="dateTimeOfOffense" placeholder="Date and Time" required/><br>
        	 </span>
        </div>
        
        <div class="col-md-4 col-xs-6">
        	<span data-toggle="tooltip" title="The city or district the crime took place.">
        	<input class="form-control" type="text" name="cityOfOffense" placeholder="City" required />
        	</span><br>
        </div>
        <div class="col-md-4 col-xs-6">
        	<span data-toggle="tooltip" title="Optional">
        	<input class="form-control" type="text" name="barangayOfOffense" placeholder="Barangay" required />
        	</span><br>
        </div>
        <div class="col-md-4 col-xs-6">
        	<span data-toggle="tooltip" title="Optional">
        	<input class="form-control" type="text" name="streetAddressOfOffense" placeholder="Street" required />
        	</span><br>
        </div>
        <div class="col-xs-12 col-md-12">
        	<textarea class="form-control" rows="7" id="description" name="description" placeholder="Describe as detailed as possible the crime you want to report about including who, what, when, where and how do you know"></textarea>
        </div>
    </div>
    
<!-- end of general information -->
<!-- INVOLVED PARTIES -->
    <div class="row well">
        <div class="col-md-offset-2 col-md-8 text-center"><h2>Involved Parties</h2>
        <strong><span class="label label-default">Optional</span></strong><br>
        </div>
        <div class="col-xs-12 text-center"><br>
        <label for="quantityParty">Number of Involved Person/s: <input type="number" min='0' id="quantityParty" name="quantityParty" class="form-control" value=0 style="width: 100%;"></label><hr>
        </div>
        <div id="party0" class="hidden" name ="party0">
        <div class="col-xs-6 col-md-4">
        	<input type="text" name="susFirstname[]" class="form-control" placeholder="First Name" /><br>
        </div>
        <div class="col-xs-6 col-md-4 ">
        	<input type="text" name="susLastname[]" class="form-control" placeholder="Last Name" /><br>
        </div>
        <div class="col-md-4 col-xs-12">
        	<input type="text" name="susAlias[]" class="form-control" placeholder="Alias" /><br>
        </div>
        <div class="col-xs-6 col-md-4 ">
        	<select class="form-control" name="susRace[]">
        	<option value='' disabled selected hidden>Race</option><option>Black</option>
        	<option>White</option>
        	<option>Hispanic</option>
        	<option>Asian</option>
        	<option>Native American</option>
        	<option>First Nations</option>
        	<option>Puerto Rican</option>
        	<option>Japanese</option>
        	<option>Chinese</option>
        	<option>Korean</option>
        	<option>Filipino</option>
        	<option>Micronesian</option>
        	<option>Samoan</option>
        	<option>Hawaiian</option
        	><option>Pacific Islander</option>
        	<option>Other</option>
				</select><br>
        </div>
        <div class="col-xs-6 col-md-4 ">
        	<select class="form-control" name="susGender[]"><option value='' disabled selected hidden>Gender</option><option value="Unknown">Unknown</option><option value="Male">Male</option><option value="Female">Female</option>
				</select><br>
        </div>
        <div class="col-md-4 col-xs-12">
        	<select class="form-control" name="susWeight[]"><option value='' disabled selected hidden>Weight/Build</option><option value="Thin">Thin</option><option value="Average">Average</option><option value="Athletic">Athletic</option><option value="Large">Large</option><option value="Obese">Obese</option>
				</select><br>
        </div>
        <div class="col-xs-6 col-md-3 ">
        		<input type="text" name="susHeight[]" class="form-control" placeholder="Height (Approx.)" /><br>
		</div>
        <div class="col-xs-6 col-md-3 ">
        <input type="text" class="form-control" name="susHairColor[]" placeholder="Hair Color" /><br>
        </div>
        <div class="col-xs-6 col-md-3 ">
        	<input type="text" class="form-control" name="susFacialhair[]" placeholder="Facial Hair" /><br>
        </div>
        <div class=" col-xs-6 col-md-3 ">
        	<input type="text" class="form-control" name="susEyecolor[]" placeholder="Eye Color" /><br>
        </div>
        <div class="col-md-4 col-xs-6 ">
        	<input type="text" class="form-control" name="susNumber[]" placeholder="Suspect's Phone #" /><br>
        </div>
        <div class="col-md-4 col-xs-6">
        	<input type="text" class="form-control" name="susAge[]" placeholder="Age (Approx.)" /><br>
        </div>
        <div class="col-md-4 col-xs-12">
        	<input type="text" class="form-control" name="susLastSeen[]" placeholder="Last Seen Area" /><br>
        </div>
        <div class="col-md-6 col-xs-12">
        	<input type="text" class="form-control" name="susScars[]" placeholder="Scars, Marks, etc.." /><br>
        </div>
        <div class="col-md-6 col-xs-12">
        	<input type="text" class="form-control" name="susClothing[]" placeholder="Clothing" /><br>
        </div>
        <div class="col-xs-12 col-md-12">
        <textarea rows="5" class="form-control" name="susFeatures[]" placeholder="Distinguishing Features (any other information about what the offender looks like)"></textarea><br>
        <input type = "text" class="form-control" name="susAssoc[]" placeholder="Gangs, assosiates, hangouts or animals"><br>
        </div>
    </div>
    </div>
<!-- end of INVOLVED PARTIES -->
<!-- vehicle -->
    <div class="row well">
        <div class="col-sm-offset-2 col-md-8 text-center">
            <h2>Vehicle</h2>
        <strong><span class="label label-default text-center">Optional</span></strong><br>
        </div>
        <div class="col-sm-offset-2 col-md-8 text-center">
            <label for="quantityParty">Number of Involved Person/s: <input type="number" min='0' id="quantityVehicle" name="quantityVehicle" class="form-control" value=0 style="width: 100%;"></label><hr>
        </div>
        <div id="vehicle0" class = "hidden" name="vehicle0">
        <div class="col-md-4 col-xs-6">
            <input type="text" name="carMake[]" class="form-control" placeholder="Make/Brand" /><br>
        </div>
        <div class="col-md-4 col-xs-6">
            <input type="text" name="carModel[]" class="form-control" placeholder="Model" /><br>
        </div>
        <div class="col-md-4 col-xs-6">
            <input type="text" name="carYear[]" class="form-control" placeholder="Year" /><br>
        </div>
        <div class="col-md-6 col-xs-6">
            <input type="text" name="carColor[]" class="form-control" placeholder="Color" /><br>
        </div>
        <div class="col-md-6 col-xs-12">
            <input type="text" name="carPlate[]" class="form-control" placeholder="Plate Number" /><br>
        </div>
        <div class="col-xs-12 col-md-12">
            <textarea rows="5" name="carDesc[]" class="form-control" placeholder="Description (any identifying marks, bumper stickers, company logos, etc.)"></textarea><br>
        </div>
        </div>
    </div>
<!--end of vehicle -->
<!-- evidence -->
<div class="row well">
    <div class="col-md-offset-2 col-md-8 text-center">
    <h2>Evidence</h2>
    <strong><span class="label label-default text-center">Optional</span></strong><br><br>
    </div>
    <div class="col-md-offset-2 col-md-8 text-center">
        <div class="col-sm-offset-2 col-md-8 text-center">
            <label for="quantityEvidence">Number of Evidence/s:<input type="number" min='0' id="quantityEvidence" name="quantityBox" class="form-control" value=0 style="width: 100%;"></label><hr>
        </div>    
    </div>
    <div class="col-xs-12 text-center">
    <p>If you have a digital photograph that's relevant to this report <br>(for example, a photo taken with your phone) you can upload it here. Please ensure the image is <br> in .jpg or .jpeg format and that it’s no bigger than 2 MB in size.</p><br>
<p>Files must be less than <strong>2 MB</strong><br>Allowed file types: <strong>JPG, JPEG, PNG & GIF</strong></p></h3>
    <div class="col-md-offset-2 col-md-8">
        <div class="duplicates">
            <div id="evidence0" class="hidden">
                <input name="evidence[]" type="file" class="form-control" style="height: 20%;"><br>
            </div>
        </div>
    </div>
    </div>
</div>
<!-- end of evidence -->
<!-- HOW TO REACH YOU? -->
<div class="row well">
    <div class="col-md-offset-2 col-md-8 text-center">
    <h2>How to reach you?</h2>
    <strong><span class="label label-default text-center">Optional</span></strong><br><hr>
    </div>
    <div class="col-xs-12 text-center">
        <h4><span class="label label-danger">Confidential - For Police use only - Private details</span> <br>
        <label class= "label label-danger">are protected by the Data Protection Act</label></h4><br>
The information you provide to us are anonymous. However, you must know that the investigation and ability <br>  to prosecute the offender(s) is severely limited if the police cannot contact you.</p>
<br>
<p>You may also specify how you are contacted and if contacting you would cause you any difficulties.</p>
<br>
<p>We will not pass on your details without your consent and would ask you to consider giving your details confidentially.</p></h3>
    </div>
    <div class="col-md-6 col-xs-6">
        <input type="text" name="infLastname[]" class="form-control" placeholder="Your Last Name" /><br>
    </div>
    <div class="col-md-6 col-xs-6">
        <input type="text" name="infFirstname[]" class="form-control" placeholder="Your First Name" /><br>
    </div>
    <div class="col-md-6 col-xs-6">
        <input type="text" name="infStreetAddress[]" class="form-control" placeholder="Street Address" /><br>
    </div>
    <div class="col-md-6 col-xs-6">
        <input type="text" name="infBarangay[]" class="form-control" placeholder="Barangay" /><br>
    </div>
    <div class="col-md-6 col-xs-6">
        <input type="text" name="infNumber[]" class="form-control" placeholder="Contact Phone" /><br>
    </div>
    <div class="col-md-6 col-xs-6">
        <input type="text" name="infEmail[]" class="form-control" placeholder="E-mail Address" /><br>
    </div>
</div>
<!--  end HOW TO REACH YOU? -->
<!-- agreement -->
<div class="row well">
    <div class="col-md-offset-2 col-md-8 text-center">
    <h1>AGREEMENT</h1>

    </div>
    <div class="col-md-offset-1 col-md-10 text-center"><h4> This tip submission system is provided to the public for the purpose of anonymously <br> reporting known or suspected suspicious or criminal activity which has occurred, or may occur. Any misuse or abuse of this system is strictly prohibited. <br> <label class= "label label-warning">MAKING A FALSE REPORT TO LAW </label><br><label class= "label label-warning">ENFORCEMENT IS A SERIOUS OFFENSE AND </label><br><label class= "label label-warning"> MAY BE PUNISHABLE BY LAW.</label><br> You acknowledge and confirm that the information you are providing is not urgent or requiring prompt or <br> immediate attention, and you understand that you should <span class= "label label-info">call 911</span> or contact the appropriate authorities by phone if this is time sensitive information. Children must be 13 years or older or have parents’ permission to use this service.</h4>    

    </div>

    <div class="col-md-offset-3 col-md-6 col-sm-12 text-center">
    <br><center>
        <script type="text/javascript">
        var RecaptchaOptions = {
            theme : 'clean',
            tabindex : 0
        };

</script><script type="text/javascript" src="https://www.google.com/recaptcha/api/challenge?k=6LdvkbwSAAAAAJhwP-Yy6SpaNY0Q4RUS4o-KQP-I">

</script><noscript>
        <iframe class="col-lg-12 col-md-12 col-sm-12" src="https://www.google.com/recaptcha/api/noscript?k=6LdvkbwSAAAAAJhwP-Yy6SpaNY0Q4RUS4o-KQP-I"  frameborder="0">

        </iframe><br /><textarea style="border-radius: 15px;" name="recaptcha_challenge_field" rows="3" cols="40"></textarea><input name="recaptcha_response_field" value="manual_challenge" type="hidden" />
</noscript></center><br>

    </div>
    <div class="col-md-offset-3 col-md-6 text-center">
        <p class="noHighlight">
        <input type="text" id="password" name="password" class="form-control" placeholder="Password for your Report" id="password" required/></p>

    </div>
    <div class="col-md-offset-4 col-md-4">
    <center>
        <p class="noHighlight">
        <label for="agreement" class="form-control"><input type="checkbox" name="checkbox" id="agreement" required/>I agree to the terms and conditions.</label></p>
        </center>
        <hr>

    </div>
    <div class="col-md-6">
        
        <input type="button" name="previous" class="form-control" value="Cancel Report" />
        

    </div>
    <div class="col-md-6">
    <input type="hidden" id="involvedParty" name="involvedParty" value=0>
        <input type="hidden" id="involvedVehicle" name="involvedVehicle" value=0>
        <input type="hidden" id="evidenceUploaded" name="evidenceUploaded" value=0>
        
        <input type="submit" id="submitForm" name="submit"  class="form-control" value="Submit" />
    </div>
</div>
<!-- end agreement -->
</div>
</body>
<script src="js/multistep.js"></script>
</html>