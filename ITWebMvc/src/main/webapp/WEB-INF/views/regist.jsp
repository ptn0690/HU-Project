

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

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.1.7.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/registration.js"></script>

<style type="text/css">
.auto-style1 {
	margin-left: 174;
}
</style>

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
                <h2>Registration</h2>
                <p>Bạn có cần phải điền thông tin liên lạc trong mẫu dưới.</p>
                <form action="registerProcess" id="contacts-form" method="post" name="contacts-form" enctype="application/x-www-form-urlencoded">
                        <fieldset>
                        <div class="field">
                        <label>Username:</label>
                        <input type="text"  name="username">
                        </div>
                        <div class="field">
                        <label>Password:</label>
                        <input type="text"  name="password">
                        </div>
			<div class="field">
                        <label>First name:</label>
                        <input type="text" name="firstname">
                        </div>
                            
                        <div class="field">
                        <label>Last name:</label>
                        <input type="text" name="lastname">
                        </div>
                            
                        <div class="field">
                        <label>Số điện thoại:</label>
                        <input type="text" value="" name="phonenumber">
                        </div>

                        <div class="field">
                        <label>Địa chỉ email:</label>
                        <input type="text" value="" name="email">
                        </div>
                        <div class="field">
                        <label>Địa chỉ:</label>
                        <input type="text" value="" name="address">
                        </div>
                        <div>                     
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                     
                        <input type="submit" value="Regist" name="registButton" class="auto-style1" style="width: 84px">
                        <input type="reset" value="Clear" style="width: 98px">
                        </div>

                         </fieldset>
                    </form>
                </div>
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
