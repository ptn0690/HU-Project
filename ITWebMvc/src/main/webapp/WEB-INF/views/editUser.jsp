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
</head>

<body>
<!--HEADRER-->
<jsp:include page="adminHeader.jsp"/>
<!--END-HEADRER-->


<!--MAINBODY-->

<div style="margin-left: 30%">
<%
    if(request.getAttribute("user")!=null){
        Userz userz = (Userz) request.getAttribute("user");
%>
    		<form action="${pageContext.request.contextPath}/user/addProcess" method="post" enctype="application/x-www-form-urlencoded">
			<table style="width: 75%">
                            <input type="hidden" name="id" value="<%=userz.getId()%>"/>
				<tr style="width: 20%">
                                    <td>Username:</td> 
                                    <td> <input type="text" name="usernametxt" value="<%=userz.getUserName()%>"/></td>
                                </tr>
                                <tr>
                                    <td>Password:</td> 
                                    <td> <input type="password" name="passwordtxt" value="<%=userz.getPass()%>"/></td>
                                </tr>
                                <tr>
                                    <td>First Name:</td> 
                                    <td> <input type="text" name="firstnametxt" value="<%=userz.getFirstName()%>"/></td>
                                </tr>
                                <tr>
                                    <td>Last Name:</td> 
                                    <td> <input type="text" name="lastnametxt" value="<%=userz.getLastName()%>"/></td>
                                </tr>
                                <tr>
                                    <td>Phone number:</td> 
                                    <td> <input type="text" name="phonetxt" value="<%=userz.getPhoneNumber()%>"/></td>
                                </tr>
                                <tr>
                                    <td>Address:</td> 
                                    <td> <input type="text" name="addresstxt" value="<%=userz.getAddress()%>"/></td>
                                </tr>
                                <tr>
                                    <td>Email: </td> 
                                    <td> <input type="text" name="emailtxt" value="<%=userz.getEmail()%>"/></td>                                    
				</tr>
                            <tr>
                                <td>Role:</td>
                                <td>
                                    <select name="role">
                                    
                                     <%
                                      if(userz.getIsAdmin() == 1){
                                                out.println("<option selected value =" + userz.getIsAdmin() + ">Administrator</option>");
                                                 out.println("<option value =" + 0 + ">Normal</option>");
                                      } else {
                                          out.println("<option selected value =" + userz.getIsAdmin() + ">Normal</option>");
                                          out.println("<option value =" + 1 + ">Administrator</option>");
                                      }
                                     %>
                                    </select> 
                                </td>                                       
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
