$(function (){


        $("#frm").validate({
		
		rules:{
			username: {
				required : true,
				minlength: 4
			},
			
			password: {
				required : true,
				minlength: 6
			},
			
			firstname: {
				required : true
				
			},
			
			lastname: {
				required : true
				
			},
			
			phonenumber: {
				required: true,
				min: 100000000,
				max: 9999999999
			},
	
			email: {
				required : true,
				email: true
			},
			
			
			address: {
				required: true
			},
			
			
		},
		messages:{
			username: {
				required : "Required",
				minlength: "At least 6 letters required"
			},
			
			password: {
				required : "Required",
				minlength: "At least 6 letters required"
			},
			
			firstname: {
				required : "Required",
				
			},
			
			lastname: {
				required : "Required",
				
			},
			
			
			
			email: {
				required : "Required",
				email: "Email address is invalid"
			},
			phonenumber: {
				requierd: "Required",
				min: "Must be a 10 to 11 - digit number",
				max: "Must be a 10 to 11 - digit number"
			},
			
			address: {
				required : "Required",
				
			}
            
			
		}
	});
});