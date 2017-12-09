$(function (){
    
             $("#frm").submit(function() {
                  alert('Test javaScript');
    
            });
            
            
	    $("#frm").validate({
		
		rules:{
			fullname: {
				required : true,
				minlength: 6
			},
                        
                        phoneNumber: {
				required: true,
				min: 100000000,
				max: 9999999999
			},
	
			email: {
				required : true,
				email: true
			},
			
			address: {
				required : true,
				
			},
			message: {
				required : true,
				minlength: 6
			},
			
		},
		messages:{
			fullname: {
				required : "Required",
				minlength: "At least 6 letters required"
			},
                        
                        phoneNumber: {
				requierd: "Required",
				min: "Must be a 10 to 11 - digit number",
				max: "Must be a 10 to 11 - digit number"
			},
                        
			email: {
				required : "Required",
				email: "Email address is invalid"
			},
			
                        address: {
				required : "Required",
				minlength: "At least 6 letters required"
			},
			message: {
				required : "Required",
				minlength: "At least 6 letters required"
			}
		}
	});

});
