

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

    		<form action="" method="post">
    		<input type="submit" value="Add new" name="add"/>
				<table style="width: 100%">
					<tr bgcolor="red" style="color:white">
						<th class="auto-style1">STT</th>
						<th class="auto-style1">Username</th>
						<th class="auto-style1">Total Price</th>
						<th class="auto-style1">Satatus</th>

						<th class="auto-style1">
						<input name="delete" type="submit" value="Delete" /></th>
					</tr>
					<tr>
						<td class="auto-style1">&nbsp;</td>
						<td class="auto-style1">&nbsp;</td>
						<td class="auto-style1">&nbsp;</td>

						<td class="auto-style1">&nbsp;</td>
						<td class="auto-style1">
						<input name="Checkbox1" type="checkbox" /></td>
					</tr>
				</table>
			</form>

</div>
<!--END-FOOTER-->



</body>
</html>
