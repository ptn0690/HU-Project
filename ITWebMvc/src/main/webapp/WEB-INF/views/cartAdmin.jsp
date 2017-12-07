<%-- 
    Document   : admin
    Created on : Dec 11, 2013, 2:00:17 PM
    Author     : Nhan
--%>

<%@page import="model.Order"%>
<%@page import="java.util.List"%>
<%@page import="dao.OrderDao"%>
<%@page import="dao.CartDao"%>
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
<style>
ul {
	list-style:none
}
ul.nav{
	
	float:left;
	background-color:#DF0000
}
ul li ul {
	display:none;
}
ul li:hover ul{
color:black;
	display:block;
	position:absolute;
	background:#DF0000;
}
ul li {
	display:inline;
	position:relative;
}
ul li ul a{
	text-decoration:none;
	color:white
}
</style>
</head>

<body>
<!--HEADRER-->
<jsp:include page="adminHeader.jsp"/>
<!--END-HEADRER-->


<!--MAINBODY-->
<div align="center">

    		<form action="" method="post">
    		
				<table style="width: 80%" border="1px">
					<tr bgcolor="red" style="color:white">
						<th class="auto-style1">STT</th>
						<th class="auto-style1">Order Date</th>
						<th class="auto-style1">Shipping Method</th>
						<th class="auto-style1">Payment Method</th>
						<th class="auto-style1">Receiving Address</th>
                                                <th class="auto-style1">Quantity</th>
                                                <th class="auto-style1">Price</th>
                                                <th class="auto-style1">Status</th>
						<th class="auto-style1">
						<input name="delete" type="submit" value="Finish" /></th>
					</tr>
                                    <%
                                        OrderDao orderDao = new OrderDao();
                                        List<Order> orders = orderDao.showAllOrder();
                                        
                                        int num=0;
                                        for(Order each:orders){
                                          num++;    
                                        
                                    %>
                                    
                                    
                                    
                                    
					<tr>
						<td class="auto-style1">&nbsp;<%=num%></td>
                                                <td class="auto-style1">&nbsp;<a href="adminOrderDetail.jsp?id=<%=each.getId()%>"><%=each.getOrderDate()%></a></td>
						<td class="auto-style1">&nbsp;<%=each.getShippingMethod().getMethod()%></td>
						<td class="auto-style1">&nbsp;<%=each.getPaymentMethod().getMethod()%></td>
						<td class="auto-style1">&nbsp;<%=each.getReceivingAddress()%></td>
                                                <td class="auto-style1">&nbsp;<%=each.getOrderQuantity()%></td>
                                                <td class="auto-style1">&nbsp;<%=each.getOrderPrice()%></td>
                                                <td class="auto-style1" style="<%=(each.getOrderStatus())==1? "background-color: #00FF00":"background-color: white"%>">&nbsp;</td>
						<td class="auto-style1">&nbsp;
						<input name="Checkbox1" type="checkbox" /></td>
					</tr>
                                    
                                    <%
                                    }
                                    %>
				</table>
			</form>

</div>
<!--END-FOOTER-->



</body>
</html>

