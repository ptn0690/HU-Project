<%-- 
    Document   : users
    Created on : Dec 11, 2013, 2:10:05 PM
    Author     : Nhan
--%>

<%@page import="model.PaymentMethod"%>
<%@page import="dao.PaymentMethodDao"%>
<%@page import="java.util.List"%>
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
<div>

    		<form action="DeletePaymentServlet" method="post">
                    <a href="addNewPayment.jsp">Add new </a>
				<table style="width: 100%; text-align: center">
					<tr bgcolor="red" style="color:white">
						<th class="auto-style1">No.</th>
						<th class="auto-style1">Shipping Method: </th>
						<th class="auto-style1">
                                                    <input name="delete" type="submit" value="Delete" />
                                                </th>
					</tr>
<%
    PaymentMethodDao paymentDAO = new PaymentMethodDao();
    List<PaymentMethod> payments = paymentDAO.getAllPayment();
    int number = 0;
    for(PaymentMethod each : payments){
        number++;    
%>                                    
					<tr>
						<td class="auto-style1"><%=number%></td>
                                                <td class="auto-style1"><a href="editPayment.jsp?id=<%=each.getId()%>"><%=each.getMethod()%></a></td>
						<td class="auto-style1">
                                                    <input name="delCheckbox" type="checkbox" value="<%=each.getId()%>"/>
                                                </td>
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
