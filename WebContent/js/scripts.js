function register(){
	
//	var x = document.getElementById("email").value;
	var email = $('#email').val();
	var password= $('#password').val();
	var company = $('#company').val();
	var company_address = $('#company_address').val();
	var experience_in_years =$('#experience_in_years').val();
	var mobile = $('#mobile').val();
	var technical_capabilites = $('#technical_capabilites').val();
	var regData={"email": email,"password": password,"company": company, "company_address": company_address,"experience_in_years": experience_in_years,"mobile": mobile,"technical_capabilites": technical_capabilites };
	//alert(regData);
	$.ajax({
		type:'POST',
		contentType: 'application/json; charset=utf-8',
		url: '/AtmecsMeetup/users/register',
		data: JSON.stringify(regData),
		success: function(result){
			
			console.log(result);
			alert("registered");
			if(result === "") location.href = "/Meetup"

			
		},
		error: function(error){
			console.log(error);
			alert(error);
		}
	});
	return false;
}

function login(){
	
	
	var email = $('#email').val();
	var password = $('#password').val();
	var loginData = {"email": email,"password": password};
	
	$.ajax({
		type:'POST',
		contentType: 'application/json; charset=utf-8',
		dataType:'text',
		url: '/techMeetUp/login',
		data: JSON.stringify(loginData),
		success: function(result){
			
			console.log(result);
			
			if(result === '2') location.href = '/techMeetUpViews/meetup.jsp'
   			 else if(result === '1') location.href = '/techMeetUpViews/views/adminlogin.jsp'
   			 else location.href = '/techMeetUpViews/meetup.jsp'
						

			
		},
		error: function(error){
			console.log(error);
			alert(error);
		}
	});


	return false;
}


function welcome(){
	
		$.ajax({
			type:'GET',
			contentType: 'application/json; charset=utf-8',
			url: '/techMeetUp/view',
			success: function(result){
				console.log(result);
				$.each(result,function(index){
					
					$('table').append(
							"<tr><td>" + result[index].id + "</td>" +
	                         "<td>" + result[index].title + "</td>" +
	                         "<td>" + result[index].description + "</td>" +
	                         "<td>" + result[index].presenter+ "</td>" +
	                         "<td>" + result[index].guest + "</td>" +
	                         "<td>" + result[index].starttime + "</td>" +
	                         "<td>" + result[index].endtime + "</td>" +
	                         "<td>" + result[index].date1 + "</td>" +
	                         "</tr>");
					
				});
				
			},
			error: function(result){
				
			}
			
		});
	
}


function deleteMeetup(){
	
	alert("delete");
	var id = $('#id').val();
	$.ajax({
		type:'DELETE',
		contentType: 'application/json; charset=utf-8',
		url: '/AtmecsMeetup/meetup/delete/'+id+'',
		success: function(result){
			console.log(result);
				
		},
		error: function(error){
			console.log(error);
		}
	});

   // location.href = "/AtmecsMeetup/meetup/delete/"+id;
   // location.href="google.com";

	
	return false;
}

function addMeetup(){
	
	var title = $('#title').val();
	var description = $('#description').val();
	var presenter = $('#presenter').val();
	var guest = $('#guest').val();
	var starttime = $('#starttime').val();
	var endtime = $('#endtime').val();
	var date1= $("#date1").val();
	var meetupData = {"description": description,"endtime": endtime,"guest": guest,"presenter": presenter,"starttime": starttime,"date1":date1,"title": title};
	alert(title+description+presenter+guest+starttime+endtime+date1);
	$.ajax({
		type:'POST',
		contentType: 'application/json; charset=utf-8',
		//dataType:'text',
		url: '/techMeetUp/addMeetUp',
		data: JSON.stringify(meetupData),
		success: function(result){
			
			console.log(result);
			
	
		},
		error: function(error){
			console.log(error);
			alert(error);
		}
		
		
	});
	
	return false;
}

function searchPresenter(){
	
	var presenter = $('#presenter').val();
	$.ajax({
		
		type:'GET',
		contentType: 'application/json; charset=utf-8',
		url: '/techMeetUp/viewByPresenter/'+presenter+'',
		success: function(result){
			
			$.each(result,function(index){
				
				$('table').append(
						"<tr><td>" + result[index].title + "</td>" +
                         "<td>" + result[index].description + "</td>" +
                         "<td>" + result[index].presenter + "</td>" +
                         "<td>" + result[index].guest+ "</td>" +
                         "<td>" + result[index].starttime + "</td>" +
                         "<td>" + result[index].endtime + "</td>" +
                         "</tr>");
				
			});
			
			console.log(result);
		},
		error: function(error){
	
			console.log(error);
		}
		
	});
	
}