<%-- 
    Document   : admin
    Created on : Dec 11, 2013, 2:00:17 PM
    Author     : Nhan
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.StatictisQuantity"%>
<%@page import="dao.StatictisDao"%>
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
<script src="js/ckeditor/ckeditor.js" type="text/javascript"></script>
<script src="script/textarea.js" type="text/javascript"></script>

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

.style1 {
	border-style: solid;
	border-width: 1px;
}
.style2 {
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: x-large;
	color: #FFFFFF;
	border-style: solid;
	border-color: #FF0000;
	background-color: #FF0000;
}
.style3 {
	font-family: Arial, Helvetica, sans-serif;
}
.style4 {
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	color: #FFFFFF;
	border-style: solid;
	border-color: #FF0000;
	background-color: #FF0000;
}


</style>
</head>

<body>
<!--HEADRER-->
<jsp:include page="adminHeader.jsp"/>
<!--END-HEADRER-->


<!--MAINBODY-->

<div align="center">
     <%
        String message = (String)request.getAttribute("message");
        if(message!=null){
            out.print("<strong style='color: green'>"+message+"</strong>");
        }
   %>

  
<form action="" method="post">
	<table class="style1" style="width: 80%">
		<tr>
			<td class="style2" colspan="2"><strong>Statistic Form</strong></td>
		</tr>
		<tr>
			<td><span class="style3"><strong>Statistic </strong></span>:</td>
			<td><select name="statistic" style="width: 228px">
			<option></option>
			<option selected="selected" value="0">Status of all product</option>
			<option value="1">Status of product which sell in current day
			</option>
			<option value="2">Status of product which sell in specific day
			</option>
			<option value="3">Status of product which sell in specific month
			</option>
			<option value="4">Status of Product which sell in specific year
			</option>
			<option value="5">Status of product which sell in 7 days</option>
			<option value="6">The total of income in current day</option>
			<option value="7">The total income in a week</option>
			<option value="8">The total income in specific month</option>
			<option value="9">The total income in specific year</option>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp; Day:
			<input name="day" style="width: 36px" type="text" />&nbsp;&nbsp;&nbsp; 
			Month:&nbsp; <input name="month" style="width: 36px" type="text" /> 
			Year: <input name="year" style="width: 36px" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="searchButton" type="submit" value="Search" /></td>

		</tr>
		<tr>
			<td colspan="2">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="2">
			<table class="style1" style="width: 100%" border="1px">
				<tr>
					<td class="style4">STT</td>
					<td class="style4">Name</td>
					<td class="style4">Original Quantity</td>
					<td class="style4">Current Quantity</td>
				</tr>
<%
        String searchButton = request.getParameter("searchButton");
        String statistic = request.getParameter("statistic");
        StatictisDao statictisDao = new StatictisDao();
        List<StatictisQuantity> listStatictisQuantity = new ArrayList<StatictisQuantity>();
        if(searchButton!=null){
            String day = request.getParameter("day");
            String month = request.getParameter("month");
            String year = request.getParameter("year");
            if(statistic.equals("0")){
            listStatictisQuantity = statictisDao.getStatusAllProduct();
            }
            else if(statistic.equals("1")){
            listStatictisQuantity = statictisDao.getStatusProductSellCurrentDay();
            }
            else if(statistic.equals("2")){
            listStatictisQuantity = statictisDao.getStatusProductSellBySpecificDate(year+"-"+month+"-"+day);
            }
            
            
            
            
            
            int num=0;
            for(StatictisQuantity each: listStatictisQuantity){
                
                 num++;
            
            
        
%>                            
                            
                            
                            
                            
				<tr>
					<td>&nbsp;<%=num%></td>
					<td>&nbsp;<%=each.getProName()%></td>
					<td>&nbsp;<%=each.getOrginialQuantity()%></td>
					<td>&nbsp;<%=each.getCurrentQuantity()%></td>
				</tr>
<%
            }
        }
%>


			</table>
			</td>
		</tr>
	</table>
</form>


</div>
<!--END-FOOTER-->



</body>
</html>

