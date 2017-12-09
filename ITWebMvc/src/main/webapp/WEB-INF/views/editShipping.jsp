<%-- 
    Document   : users
    Created on : Dec 11, 2013, 2:10:05 PM
    Author     : Nhan
--%>

<%@page import="model.ShippingMethod"%>
<%@page import="dao.ShippingMethodDao"%>
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

<div style="margin-left: 30%; width: 80%">
<%
    String id = request.getParameter("id");
    if(id!=null){
        ShippingMethodDao shippingDao = new ShippingMethodDao();
        ShippingMethod shipping = shippingDao.findShippingById(Integer.parseInt(id));
%>
    		<form action="AddOrUpdateShipping" method="post">
			<table style="width: 75%">
                            <input type="hidden" name="id" value="<%=id%>"/>
				<tr style="width: 20%">
                                    <td>Method Name: </td> 
                                    <td> <input type="text" name="shipmethodtxt" value="<%=shipping.getMethod()%>"/></td>
                                </tr>
                            <tr>
                                <td>
                                    <input type="submit" name="button" value="Update"/>
                                </td>
                            </tr>
			</table>
			</form>
<%}%>
</div>
<!--END-FOOTER-->


</body>
</html>
