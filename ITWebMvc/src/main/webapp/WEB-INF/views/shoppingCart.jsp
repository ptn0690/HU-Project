<%@page import="java.util.List"%>
<%@page import="com.it.spring.model.Product"%>
<%-- <%@page import="com.it.spring.dao.Userz"%> --%>
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
}
.auto-style2 {
	text-align: right;
}
</style>

<script language="javascript">

			var contextPath = "${pageContext.request.contextPath}";

            function continueBuying(){
            	
                 window.location = contextPath + "/product";
            }
            
             function shipping(){
                 window.location = contextPath + "/order/payment";
            }
</script> 

</head>
    
     <%-- <%
        Userz userz = new Userz();
        if (session.getAttribute("users") != null) {
            userz = (Userz) session.getAttribute("users");
        } else {
            response.sendRedirect("index.jsp");
        }



    %> --%>

<body>
<!--HEADRER-->
<jsp:include page="header.jsp"/>
<!--END-HEADRER-->


<!--MAINBODY-->
<div class="mainbody left-fl">
	<div class="mainbody-content w1020px marginauto">
    	<div class="mainbody-content w1020px marginauto">
                <jsp:include page="${request.contextPath}/category/leftpanel"></jsp:include>  
        </div>
        
        <!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai-->
        <div class="right-area w775px left-fl pd10">
        	
	<!-- Start WOWSlider.com HEAD section -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/wowhome.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/wowslider/jquery.js"></script>
	<!-- End WOWSlider.com HEAD section -->

    		<form action="DeleteToCart" method="post">
				<table style="width: 100%" border="1px">
					<tr bgcolor="red" style="color:white">
						<th class="auto-style1">STT</th>
						<th class="auto-style1">Laptop</th>
                                                <th class="auto-style1">Producer</th>
						<th class="auto-style1">Quantity</th>
						<th class="auto-style1">SubTotal</th>
						
						<th class="auto-style1">
						<input name="deleteButton" type="submit" value="Delete" /></th>
					</tr>
             <%
                    List<Product> listOfProductInCard = (List<Product>) request.getAttribute("listOfProductInCard");
                    int num = 0;
                    double cartTotal=0.0;

                    for (Product each : listOfProductInCard) {
                        num++;
                        cartTotal+=each.getPrice();



                %>  
					<tr>
						<td class="auto-style1">&nbsp;<%=num%></td>
						<td class="auto-style1">&nbsp;<%=each.getName()%></td>
                                                <td class="auto-style1">&nbsp;<%=each.getProducer()%></td>
                                                <td class="auto-style1">&nbsp;<input type="text" name="CartQuantity<%=each.getId()%>" value="<%=each.getCar_quantity().getCartQuantity()%>"/></td>
                                                <input type="hidden" name="updateQuantity" value="<%=each.getId()%>"/>
                                                <td class="auto-style1">&nbsp;<%=each.getPrice()%></td>
						
						<td class="auto-style1">
                                                    <input name="checkBoxDelete" type="checkbox" value="<%=each.getId()%>" /></td>
					</tr>
                                        
                    <%

                    }


                    %>                      
					<tr>
						<td class="auto-style2" colspan="6">
                                                    <strong>Total payment: </strong> <%=cartTotal%></td>
					</tr>
					<tr>
						<td class="text-center" colspan="6">
                                                <input type="button" value="Continue Buying" name="conBuyingButton"  onclick="continueBuying()"/>
                                                &nbsp;
                                                &nbsp;
                                                &nbsp;
                                                &nbsp;
						<input name="payment" type="button" value="Payment" onclick="shipping()" />
                                                
                                                
                                                
                                                &nbsp;
                                                &nbsp;
                                                &nbsp;
                                                &nbsp;
						<input name="update" type="submit" value="Update"  /></td>
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

