

<%@page import="java.util.List"%>
<%-- <%@page import="dao.UserzDao"%>
<%@page import="model.Userz"%> --%>
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

    		<form action="DeleteUsersServlet" method="post">
                    <a href="addNewUser.jsp">Add new </a>
				<table style="width: 100%; text-align: center">
					<tr bgcolor="red" style="color:white">
						<th class="auto-style1">No.</th>
						<th class="auto-style1">Username</th>
						<th class="auto-style1">Password</th>
						<th class="auto-style1">First Name</th>
                                                <th class="auto-style1">Last Name</th>
                                                <th class="auto-style1">Phone number</th>
						<th class="auto-style1">Address</th>
						<th class="auto-style1">Email</th>
                                                <th class="auto-style1">Role</th>
						<th class="auto-style1">
                                                    <input name="delete" type="submit" value="Delete" />
                                                </th>
					</tr>
<%-- <%
    UserzDao userzDao = new UserzDao();
    List<Userz> users = userzDao.getAllUsers();
    int number = 0;
    for(Userz each : users){
        number++;    
%>  --%>                                   

</div>
<!--END-FOOTER-->



</body>
</html>
