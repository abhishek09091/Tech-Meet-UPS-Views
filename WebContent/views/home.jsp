<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>lOGIN FORM</title>


<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script>
    function myfun(){
    	
    	var email = $('#email').val();
    	var password = $('#password').val();
    	var jsonData = {"email": email,"password": password};
    	
    	$.ajax({
    		 type:'POST',
    		 contentType: 'application/json; charset=UTF-8',
    		 dataType: 'text',
    		 data: JSON.stringify(jsonData),
    		 url: '/techMeetUp/login',
    		 success: function(result){
    			 console.log(result);
    			 if(result === '2') location.href = '/techMeetUpViews/views/view.jsp'
    			 else if(result === '1') location.href = '/techMeetUpViews/views/adminlogin.jsp'
    			 else location.href = '/techMeetUpViews/views/login.jsp'
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
<form onsubmit="return myfun()">
Email:<input type="email" id="email" name="email" ></input>
Password:<input type="password" id="password" name="password"></input>
<input type="submit" id="button" value="submit"></input>
</form>

<h3><a href="register.jsp">New User Register Here</a></h3>
</body>
</html>