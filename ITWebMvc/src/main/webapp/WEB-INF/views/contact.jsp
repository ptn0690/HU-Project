

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mobile Service Center</title>
<link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/bootraps/bootstrap.css" />
<link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/bootraps/bootstrap-responsive.css" />
<link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/main.css" />
<link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/style.css" />
<script src="${pageContext.request.contextPath}/resources/js/bootraps/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootraps/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/contactUs.js"></script>

</head>

<body>
<!--HEADRER-->
<jsp:include page="header.jsp"/>
<!--END-HEADRER-->


<!--MAINBODY-->
<div class="mainbody left-fl">
	   <div class="mainbody-content w1020px marginauto">
                <jsp:include page="${request.contextPath}/category/leftpanel"></jsp:include>
       </div>
        
        <!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai-->
        <div class="right-area w775px left-fl pd10">
        	
	<!-- Start WOWSlider.com HEAD section -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/wowhome.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/wowslider/jquery.js"></script>
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
                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1232245675747!2d106.71257741409211!3d10.80187319230425!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528baead708e3%3A0xcee4d142f6409e4b!2sHutech+University!5e0!3m2!1svi!2s!4v1512861117135" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
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
