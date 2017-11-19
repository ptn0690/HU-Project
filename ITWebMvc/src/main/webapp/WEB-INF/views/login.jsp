<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mobile Service Center</title>
<link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/bootraps/bootstrap.css" />
<link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/bootraps/bootstrap-responsive.css" />
<link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/style.css" />
<script src="${pageContext.request.contextPath}/resources/js/bootraps/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootraps/bootstrap.min.js"></script>

<style type="text/css">
.auto-style1 {
	text-align: center;
	font-size: xx-large;
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
    	<div class="left-area w220px left-fl">
        	<div class="block menu-list branch-mobile "><h4 class="pd5x10"> Danh mục</h4>
            	<ul class="nav nav-list w190px bs-docs-sidenav ">
            	<!--product type in here(start)-->
                	<li class="active">
                        <a href="#" >
                    		<span class="branch-mobile">Apple</span>
                            <span class="branch-mobile-logo"></span>
                        </a>
                                           </li>
                    <li><a href="#">
                    		<span class="branch-mobile">Sony</span>
                            <span class="branch-mobile-logo"></span>
                        </a>
                                           </li>
                    <li ><a href="#" >
                    		<span class="branch-mobile">Acer</span>
                            <span class="branch-mobile-logo"></span>
                        </a>
                                           </li>
                    <li><a href="#" >
                    		<span class="branch-mobile">HP</span>
                            <span class="branch-mobile-logo"></span>
                        </a>
                    </li>
                    <!--product type in here(end)-->
                </ul>
            </div>
            
                      
            <div class="block menu-list supportlive"><h4 class="pd5x10 ">Hỗ trợ trực tuyến</h4>
            	<ul class="nav nav-list w190px ">
                	<li><a href="">
                    Kinh doanh 1:
                    <img id="lvhelp_stt" src="">
                    </a></li>
                    <li><a href="">
                    Kinh doanh 2:
                    <img id="lvhelp_stt" src="">
                    </a></li>
                    <li><a href="">
                    Kinh doanh 3:
                    <img id="lvhelp_stt" src="">
                    </a></li>
                    <li><a href="">
                    Kinh doanh 4:
                    <img id="lvhelp_stt" src="">
                    </a></li>
                </ul>
            </div>
            
            
            <div class="block bannerw220"><!--Chi lay anh trong banner, Tai phan minh hoa dang lay trong phan logo-->
            	<ul class="clean">
                	<li><a href="#">
                    	<img src="${pageContext.request.contextPath}/resources/images/banner/banner1.png" />
                    	</a>
                    </li>
                    <li><a href="#">
                    	<img src="${pageContext.request.contextPath}/resources/images/banner/banner2.png" />
                    	</a>
                    </li>
                    <li><a href="#">
                    	<img src="${pageContext.request.contextPath}/resources/images/product/Image 33.png" />
                    	</a>
                    </li>
                    <li><a href="#">
                    	<img src="${pageContext.request.contextPath}/resources/images/product/Image 32.png" />
                    	</a>
                    </li>
                </ul>
            </div>
        </div>
        
        <!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai-->
        <div class="right-area w775px left-fl pd10" style="background-image:url('${pageContext.request.contextPath}/resources/images/default/bg_all.gif')">
        	
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
              <!--Vung ben phai-->
             <form:form action="login" method="post" modelAttribute="users">
    		<br><br><br><br><br>
    		<div style="background-color:white;width:60%;margin-left:30%;height:300px">
    		<br><br><br>
				<table style="width: 71%; margin-left:50px" bgcolor="white">
				<form:hidden path="id"/>
					<tr>
						<td class="auto-style1" colspan="2">Login
						</td>
					</tr>
					<tr>
						<td class="auto-style1" colspan="2">&nbsp;
						</td>
					</tr>

					<tr>
						<td class="text-right">Username:</td>
						<td class="text-left" style="width: 406px"><form:input path="username"/></td>
					</tr>
					<tr>
						<td class="text-right">Password:</td>
						<td class="text-left" style="width: 406px"><form:input type = "password" path="password"/></td>
					</tr>
					<tr>
						<td class="text-center" colspan="2">
						<input name="loginButton" type="submit" value="Login" />
						<input name="Cancel" type="reset" value="Cancel" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="forgetPass.jsp" >Quên mật khẩu ?</a> 
						</td>
					</tr>
				</table>
                                          <%
            String message = (String) request.getAttribute("message");
            if (message != null) {
                out.print("<strong>" + message + "</strong>");
            }

        %>
				</div>
			</form:form>

    </div>
</div>
</div>


<!--END-MAINBODY-->


<!--FOOTER-->
<jsp:include page="footer.jsp"/>
<!--END-FOOTER-->



</body>
</html>
