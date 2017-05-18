<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Meetup</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
  <div class="login-page">
  <div class="form">
    <form class="register-form" onsubmit="return register()">
      <input type="email" placeholder="email" required id="email" name="email"/>
      <input type="password" placeholder="password" required id="password" name="password"/>
      <input type="text" placeholder="Company Name" required id="companyName" name="companyName"/>
      <input type="text" placeholder="Company address" required id="companyAddress" name="companyAddress"/>
      <input type="text" placeholder="Experience in years" required id="yearsOfExperience" name="yearsOfExperience"/>
      <input type="text" placeholder="Mobile Number" required id="mobileNumber" name="mobileNumber"/>
      <textarea placeholder="Technical Capabilities" required id="technicalCapabilities" name="technicalCapabilities"></textarea>
      
      <button type="submit">create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
    </form>
    
    <form class="login-form" onsubmit="return login()">
      <input type="email" placeholder="email" id="email" name="email"/>
      <input type="password" placeholder="password" id="password" name="password"/>
      <button type="submit">login</button>
      <p class="message">Not registered? <a href="#">Create an account</a></p>
    </form>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>
    <script src="js/scripts.js"></script>

</body>
</html>
