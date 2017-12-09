

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mobile Service Center</title>
<link rel="stylesheet" media="screen" href="css/bootraps/bootstrap.css" />
<link rel="stylesheet" media="screen" href="css/bootraps/bootstrap-responsive.css" />
<link rel="stylesheet" media="screen" href="main.css" />
<link rel="stylesheet" media="screen" href="css/style.css" />
<script src="js/bootraps/bootstrap.js"></script>
<script src="js/bootraps/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="script/contactUs.js"></script>

</head>

<body>
<!--HEADRER-->
<jsp:include page="header.jsp"/>
<!--END-HEADRER-->


<!--MAINBODY-->
<div class="mainbody left-fl">
	   <div class="mainbody-content w1020px marginauto">
           <jsp:include page="leftpanel.jsp"/>    
            </div>
        
        <!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai-->
        <div class="right-area w775px left-fl pd10">
        	
	<!-- Start WOWSlider.com HEAD section -->
	<link rel="stylesheet" type="text/css" href="css/wowhome.css" />
	<script type="text/javascript" src="js/wowslider/jquery.js"></script>
	<!-- End WOWSlider.com HEAD section -->


	<!-- Start WOWSlider.com BODY section -->
		<!-- End WOWSlider.com BODY section -->
            
            <!--MainProduct-->
            <!--div class="group group-Product left-fl wp100">
            	<ul> 
                	<li><a href="#"><img src="images/banner/group-iphone.jpg" /></a></li>
                    <li><a href="#"><img src="images/banner/group-htc.jpg" /></a></li>
                    <li><a href="#"><img src="images/banner/group-samsung.jpg" /></a></li>
                </ul>
            </div-->
        	<!--END=Product-->
            
            <!--MainAccessories-->
                    	<!--END=Accessories-->
                        
             <div class="box">
                <div class="inside png">
                <h2>Contact Us</h2>
                <p>You must fill in the form below !</p>
                
                <%
                    String result = (String)request.getAttribute("result");
                    if(result!=null){
                        out.print("<p>"+result+"</p>");
                    }
                %>
                
                
                <form id="frm" name="frm" action="ContactServlet" >
                        <fieldset>
                        <div class="field">
                        <label>Full name:</label>
                        <input type="text" name="fullname" id="fullname"/>
                        </div>
                        <div class="field">
                        <label>Phone Number:</label>
                        <input class="required" type="text" name="phoneNumber" id="phoneNumber"/>
                        </div>

                        <div class="field">
                        <label>Email:</label>
                        <input class="required" type="text" name="email" id="email"/>
                        </div>
                        <div class="field">
                        <label>Address:</label>
                        <input class="required" type="text" name="address" id="address"/>
                        </div>
                        <div class="field">
                        <label>Message:</label>
                        <textarea class="required" name="message" id="message" cols="" rows=""></textarea>
                        </div>
                        
                        <div align="right" >

                            <input  style="width: 100px"type="submit" value="Send Message" name="button"/>
         
                        </div>
                       
                        </fieldset>
                    </form>
                </div>
                 <iframe id="map" width="700" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=cong+vien+phan+mem+quang+trung&amp;ie=UTF8&amp;hq=cong+vien+phan+mem+quang+trung&amp;hnear=&amp;ll=10.858195,106.630425&amp;spn=0.011843,0.01929&amp;t=m&amp;output=embed"></iframe>
            </div>
          
            
      
        <!--Vung ben phai-->
    </div>
</div>
</div>
<!--END-MAINBODY-->


<!--FOOTER-->
<jsp:include page="footer.jsp"/>
<!--END-FOOTER-->



</body>
</html>
