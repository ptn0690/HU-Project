
<%@page import="java.util.List"%>
<%@page import="com.it.spring.dao.UserzDAO"%>
<%@page import="com.it.spring.model.Userz"%>
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
<div style="margin-left: 30%">

    		<form action="AddOrUpdateShipping" method="post">
			<table style="width: 75%">
				<tr style="width: 20%">
                                    <td>Method name: <span style="color: red">*</span></td> 
                                    <td> <input type="text" name="shipmethodtxt"/></td>
                                </tr>
                            <tr>
                                <td>
                                    <input type="submit" name="button" value="Add"/>
                                    <input type="reset" name="cancel" value="Cancel"/>
                                </td>
                            </tr>
			</table>
			</form>
    <%
             String message = (String)request.getAttribute("msg");
                if(message!=null){
                    out.print("<strong>"+message+"</strong>");
                    
                }
          %>  

</div>
<!--END-FOOTER-->



</body>
</html>
