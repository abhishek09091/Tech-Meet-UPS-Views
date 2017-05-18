<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



<title>Registration form</title>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script>
    function myfun(){
    	
    	var email = $('#email').val();
    	var password = $('#password').val();
    	var companyName=$("#companyName").val();
    	var companyAddress=$("#companyAddress").val();
    	var mobileNumber=$("#mobileNumber").val();
    	var technicalCapabilities=$("#technicalCapabilities").val();
        var yearsOfExperience=$("#yearsOfExperience").val();
    	var jsonData = {"email": email,"password": password,"companyName": companyName,"companyAddress": companyAddress,"mobileNumber": mobileNumber,"technicalCapabilities": technicalCapabilities,"yearsOfExperience": yearsOfExperience};
    	
    	$.ajax({
    		 type:'POST',
    		 contentType: 'application/json; charset=UTF-8',
    		 dataType: 'text',
    		 data: JSON.stringify(jsonData),
    		 url: '/techMeetUp/registerUser',
    		 success: function(result){
    			 console.log(result);
    			 if(result === '1') location.href = '/techMeetUpViews/views/home.jsp'
    			 else location.href = '/techMeetUpViews/index.jsp'
    		 },
    		 error: function(error){
    			 console.log(error);
    		 }
    		
    		
    	});
    	
    	
    	return false;
    }
    </script>
    
    
</head>
<body>
<h2>Registration Form for Meet Up</h2>
<form onsubmit="return myfun()">
Email:<input type="email" id="email" name="email"/></br>
</br>
Password:<input type="password" id="password" name="password"/></br>
</br>
Company Name:<input type="text" id="companyName" name="companyName"/></br>
</br>
Company Address:<input type="text" id="companyAddress" name="companyAddress"/></br>
</br>
Mobile Number:<input type="number" id="mobileNumber" min="1000000" name="mobileNumber"/></br>
</br>
Technical Capabilities:<input type="text" id="technicalCapabilities" name="technicalCapabilities"/></br>
</br>
Years Of Expierience:<input type="number" id="yearsOfExperience" min="0" name="yearsOfExperience"/></br>
</br>
<input type="submit" id="button" value="submit">
</form>
</body>
</html>