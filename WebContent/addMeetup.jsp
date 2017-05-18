<!DOCTYPE HTML>
<html>

<head>
  <title>ATMECS</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine&amp;v1" />
  <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz" />
  <link rel="stylesheet" type="text/css" href="css/mainstyle.css" />
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  
  <script>

</script>
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <h1>Meetup<a href="http://atmecs.com">_S</a></h1>
        <div class="slogan">Passionate Minds!!!</div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="current" in the li tag for the selected page - to highlight which page you're on -->
          <li><a href="meetup.jsp">Meetup</a></li>
          <li class="current"><a href="addMeetup.jsp">Add Meetup</a></li>
          <li><a href="deleteMeetup.jsp">Delete Meetup</a></li>
          <li><a href="search.jsp">Search Meetup</a></li>
          <li><a href="modify.jsp">Modify Meetup</a></li>
          <li><a href="register.jsp">Register for event</a></li>
          
        </ul>
      </div>
    </div>
    <div id="site_content">
      
      <div id="content">
        <!-- insert the page content here -->
        <form onsubmit="return addMeetup()">
        <table>
        <tr>
        <th>Title</th>
        <th>Description</th>
        <th>Presenter</th>
        <th>guest</th>
        <th>startTime</th>
        <th>endTime</th>
        <th>Date</th>
        </tr>
        <tr>
        <td><input type="text" id="title" name="title" placeholder="Title"></td>
        <td><input type="text" id="description" name="description" placeholder="Description"></td>
        <td><input type="text" id="presenter" name="presenter" placeholder="Presenter"></td>
        <td><input type="text" id="guest" name="guest" placeholder="Guest"></td>
        <td><input type="time" id="starttime" name="starttime" placeholder="Start Timr"></td>
        <td><input type="time" id="endtime" name="endtime" placeholder="End Time"></td>
        <td><input type="date" id="date1" name="date1" placeholder="Date Of Meet Up"></td>
        </tr>
        <tr>
        <td colspan="5"><button>Add Meetup</button></td>
        </table>
        </form>
			
			
        
      </div>
    </div>
    <div id="footer">
      <p>Copyright &copy; Abhishek | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://www.html5webtemplates.co.uk">designed for meetups@atmecs</a></p>
    </div>
  </div>
  <script src="js/scripts.js"></script>
</body>
</html>
