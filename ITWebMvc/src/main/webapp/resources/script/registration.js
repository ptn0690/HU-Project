$(function (){
	$("#contacts-form").validate({
		
		rules:{
			username: {
				required : true,
				minlength: 6
			},
			
			password: "required",
			
			lastname: "required",
			firstname: "required",
			email: {
				required : true,
				email: true
			},
			agree: "required"
		},
		messages:{
			username: {
				required : "Rquired",
				minlength: "At least 6 letters required"
			},
			
			password: "Required",
			passwordrety: "Required",
			lastname: "Required",
			firstname: "Required",
			birthday: {
				requierd: "Rquired",
				min: "Must be a 2-digit number",
				max: "Must be a 2-digit number, and less than 31"
			},
			birthmonth: {
				requierd: "Rquired",
				min: "Must be a 2-digit number",
				max: "Must be a 4-digit number, and less thang 12"
			},
			birthyear: {
				requierd: "Rquired",
				min: "Must be a 4-digit number",
				max: "Must be a 4-digit number"
			},
			
			gender: "Required",
			email: {
				required : "Required",
				email: "Email address is invalid"
			},
			agree: "You have to check this box"
		}
	});
});



