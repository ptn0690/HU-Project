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
<script>
	function addNewUser(){
		var contextPath = "${pageContext.request.contextPath}";
		window.location = contextPath + "/user/add";
		
	}
</script>
</head>

<body>
<!--HEADRER-->
<jsp:include page="adminHeader.jsp"/>
<!--END-HEADRER-->


<!--MAINBODY-->
<div>

    		<form action="${pageContext.request.contextPath}/user/delete" method="post" enctype="application/x-www-form-urlencoded">
                <input type="button" value="Tạo mới" name="add" onclick="addNewUser()"/>
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
<%
    List<Userz> users = (List<Userz>) request.getAttribute("users");
    int number = 0;
    for(Userz each : users){
        number++;    
%>                                    
					<tr>
						<td class="auto-style1"><%=number%></td>
                                                <td class="auto-style1"><a href="${pageContext.request.contextPath}/user/detail/<%=each.getId()%>"><%=each.getUserName()%></a></td>
						<td class="auto-style1"><%=each.getPass()%></td>
						<td class="auto-style1"><%=each.getFirstName()%></td>
                                                <td class="auto-style1"><%=each.getLastName()%></td>
                                                <td class="auto-style1"><%=each.getPhoneNumber()%></td>
						<td class="auto-style1"><%=each.getAddress()%></td>
						<td class="auto-style1"><%=each.getEmail()%></td>
                                                <td class="auto-style1"><%=each.getIsAdmin()==1?"Administrator":"Normal"%></td>
                                                
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
