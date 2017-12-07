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
	color: #FFFFFF;
	font-family: Arial, Helvetica, sans-serif;
	font-size: large;
	border-style: solid;
	border-color: #FF0000;
	background-color: #FF0000;
}
.style3 {
	text-align: right;
	font-family: Arial, Helvetica, sans-serif;
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

    		<form action="PromotionServlet" method="post">
                    <table class="style1" style="width: 80%">
		<tr>
			<td class="style2" colspan="2"><strong>Promotion Form</strong></td>
		</tr>
		<tr>
			<td class="style3" style="height: 26px"><strong>Customer:</strong></td>
			<td style="height: 26px">
			<select name="customerSelected" style="width: 270px">
			
                        <option selected="selected" value="0">All</option>
                        <option value="1">The top ten of Vip Customer</option>
                        <option value="2">Customer who has the receipt greater than ten thousand dollars
			</option>
			<option value="3">Customer Who has the sum of receipt greater than fifty million
			</option>
			
			
			</select></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><textarea id="txtMessage" class="ckeditor" name="txtMessage"></textarea></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><input name="sendMailButton" type="submit" value="Send" />&nbsp;
			<input name="reset" type="reset" value="Reset" /></td>
		</tr>
	</table>

    		        
				
	        </form>
    
   

</div>
<!--END-FOOTER-->



</body>
</html>

