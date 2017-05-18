<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html >
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Fixed table header</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" >
      
      
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	
	<script type="text/javascript">
	$(function(){
		
		var $datas=$('#datas');
		
		$.ajax({
			
			type: 'GET',
			url: '/techMeetUp/view',
			success: function(datas){
				
				$.each(datas, function(i,data){
					$datas.append('<form >'+'<tr>'+
			          '<td>'+data.id.title+'</td>'+
			          '<td>'+data.id.date1+'</td>'+
			          '<td>'+data.description+'</td>'+
			          '<td>'+data.starttime+'</td>'+
			          '<td>'+data.endtime+'</td>'+
			          '<td>'+data.presenter+'</td>'+
			          '<td>'+data.guest+'</td>'+
			          '<td>'+'<input type='+'submit'+'id='+data.id.title+'</td>'+
			          '</tr>'+'</form>');
				});
			}
			
		});
		
		
	});
	</script>

  
</head>


<body>
  <table>
    <thead>
        <tr>
          <th>Title</th>
          <th>Date</th>
          <th>Description</th>
          <th>StartTime</th>
          <th>EndTime</th>
          <th>Presenter</th>
          <th>Guest</th>
          <th>Registration</th>
        </tr>
    </thead>
    <tbody id="datas">
        
    </tbody>
</table>
  
   

</body>
</html>
