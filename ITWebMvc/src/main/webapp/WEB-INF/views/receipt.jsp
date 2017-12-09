<%@page import="com.it.spring.model.ReceiptInformation"%>
<%@page import="java.util.Date"%>
<%@page import="com.it.spring.model.Receipt"%>
<%@page import="java.util.List"%>
<%@page import="com.it.spring.model.Userz"%>
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
	margin-left: 174;
}
.auto-style3 {
	font-size: x-large;
}
.auto-style4 {
	font-size: x-large;
	text-align: right;
}

.style5 {
	border-style: solid;
	border-width: 1px;
	background-color: #FFFFFF;
}
.style6 {
	color: #FF0000;
	font-size: x-large;
}
.style7 {
	font-size: medium;
	color: #000000;
}       
.style9 {
	text-align: center;
	font-size: xx-large;
	color: #FF0000;
	border-style: solid;
	border-color: #00FF00;
	background-color: #00FF00;
}
.style10 {
	text-align: right;


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
        <div class="right-area w775px left-fl pd10" style="height:1000px">
        	
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
        Date cuDate = new Date();
        Userz userz = (Userz) session.getAttribute("users");
        List<Receipt> listOfReceipt = (List<Receipt>) request.getAttribute("listOfReceipts");
        ReceiptInformation receiptInformation = (ReceiptInformation) request.getAttribute("receiptInformation");
                %>                
                   
                   
    		<form action="" method="post">
    		<table style="width: 728px" >
    		<tr align="center">
                       <table style="width: 728px">
    		<table class="style5" style="width: 100%">
                <tr>
		<td rowspan="4" style="width: 29px">
		<img alt="" height="129" src="${pageContext.request.contextPath}/resources/images/images/photo.jpg" width="204" /></td>
		<td class="style6"><strong>Gia Phát Joint Stock Company</strong></td>
                </tr>
                    
                <tr>
		<td class="style7"><strong>174 - 176 - 178 Bui Thi Xuan, Ward Pham Ngu 
		Lao, Q1, TP.HCM</strong></td>
                </tr>
                <tr>
		<td><strong>www.giaphatcorp.com</strong></td>
                </tr>
                <tr>
		<td><span style="color: rgb(0, 0, 0);"><strong>Hotline: 1900 6078</strong></span></td>
                </tr>
                   
                <tr>
		<td class="style9" colspan="2"><strong>Receipt</strong></td>

                </tr>
                <tr>
		<td class="style10" colspan="2"><strong>Date: <%=receiptInformation.getOrderDate()%></strong></td>

                </tr>
                <tr>
		<td colspan="2"><strong>Customer Name: </strong> <%=receiptInformation.getCustomerName()%> </td>

                </tr>
                <tr>
		<td colspan="2"><strong>Method Payment:<%=receiptInformation.getPaymentMethod()%> </strong></td>

                </tr>
                
                <tr>
		<td colspan="2"><strong>Method Shipping:<%=receiptInformation.getShippingMethod()%> </strong></td>

                </tr>
                <tr>
		<td colspan="2"><strong>Receiving Address : <%=receiptInformation.getReceivingAddress()%></strong></td>

                </tr>
            </table>
          </table>  

                </tr>

	     
    		</table>
				<table style="width: 100%" border="1px">
					<tr bgcolor="red" style="color:white">
						<th class="auto-style1">STT</th>
						<th class="auto-style1">Sản phẩm</th>
						<th class="auto-style1">Số lượng</th>
						<th class="auto-style1">Giá</th>
						<th class="auto-style1">Tổng cộng</th>

						&nbsp;</th>
					</tr>
                        <%
                            int num = 0;
                            double total = 0.0;
                            for (Receipt each : listOfReceipt) {
                                num++;
                                total += each.getTotalOfEach();
                        %>                                     
					<tr>
						<td class="auto-style1">&nbsp;<%=num%></td>
						<td class="auto-style1">&nbsp;<%=each.getProduct().getName()%></td>
						<td class="auto-style1">&nbsp;<%=each.getQuantity()%></td>
                                                <td class="auto-style1">&nbsp;<%=each.getPriceOfEach()%></td>
						<td class="auto-style1">&nbsp;<%=each.getTotalOfEach()%></td>
						
						
					</tr>
					
                                        
                                        <%
                            }
                                        %>
                                        <tr>
						<td class="auto-style4" colspan="6">
						Tổng Trả: <%=total%></td>
					</tr>
				</table>
			</form>
    </div>
</div>
</div>
<!--END-MAINBODY-->


<!--FOOTER-->
<jsp:include page="footer.jsp"/>
<!--END-FOOTER-->



</body>
</html>
