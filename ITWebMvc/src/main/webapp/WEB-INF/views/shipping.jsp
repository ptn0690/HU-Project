<%@page import="com.it.spring.model.ShippingMethod"%>
<%@page import="java.util.List"%>
<%@page import="com.it.spring.model.PaymentMethod"%>
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
                <jsp:include page="${request.contextPath}/category/leftpanel"></jsp:include>  
            </div>
        
        <!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai-->
        <div class="right-area w775px left-fl pd10" >
        	
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
              
              
              <%
                  List<PaymentMethod> listPaymentMethods = (List<PaymentMethod>) request.getAttribute("listPaymentMethods");
                  List<ShippingMethod> listShippingMethods = (List<ShippingMethod>) request.getAttribute("listShippingMethods");
              %>
               <div class="box">
                <div class="inside png">
                <h2>Payment</h2>
                <p>Bạn có cần phải điền thông tin liên lạc trong mẫu dưới.</p>
                <form action="ReceiptServlet" method="post">
                        <fieldset>
                        <div class="field">
                        <label>Full name:</label>
                        <input type="text" value="">
                        </div>
                        <div class="field">
                        <label>Phone:</label>
                        <input type="text" value="">
                        </div>
						<div class="field">
                        <label>Address:</label>
                        <input type="text" value="">
                        </div>
                        <div class="field">
                        <label>City:</label>
                        <input type="text" value="">
                        </div>

                        <div class="field">
                        <label>Receiving address:<span style="color:red">*</span></label>
                        <input type="text"  name="receivingAddress"/>
                        </div>
                        <div class="field">
                        <label>Payment method:<span style="color:red">*</span></label>
                        <select name="paymentMethod">
                            <%
                                 for(PaymentMethod each:listPaymentMethods){
                                     
                                
                            %>
                            <option value="<%=each.getId()%>"><%=each.getMethod()%></option>
                            <% } %>                    
						</select>
                        </div>
                        <div class="field">
                        <label>Delivery method:<span style="color:red">*</span></label>
                        <select name="shippingMethod">
			<%
                                 for(ShippingMethod each:listShippingMethods){
                                     
                                
                            %>
                            <option value="<%=each.getId()%>"><%=each.getMethod()%></option>
                            <% } %>    
						</select>
                        </div>

                        <div>                     
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                     
                        <input type="submit" value="Buying" name="receiptButton" style="width: 84px">
                        <input type="reset" value="Cancel" style="width: 98px">
                        </div>

                         </fieldset>
                    </form>
                </div>
            </div>

    		    </div>
</div>
</div>
<!--END-MAINBODY-->


<!--FOOTER-->
<jsp:include page="footer.jsp"/>
<!--END-FOOTER-->



</body>
</html>
