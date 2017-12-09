<%-- 
    Document   : users
    Created on : Dec 11, 2013, 2:10:05 PM
    Author     : Nhan
--%>

<%@page import="model.QAndA"%>
<%@page import="dao.QandADAO"%>
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
<div align="center">
    		<form action="DeleteQAndAServlet" method="post">
                    <a href="addNewQAndA.jsp">Add new </a>
				<table style="width: 80%; text-align: center" border= "1px">
					<tr bgcolor="red" style="color:white">
						<th class="auto-style1">No.</th>
						<th class="auto-style1">Question: </th>
                                                <th class="auto-style1">Answer:  </th>
						<th class="auto-style1">
                                                    <input name="delete" type="submit" value="Delete" />
                                                </th>
					</tr>
<%
    QandADAO qandADAO = new QandADAO();
    List<QAndA> qAndAs = qandADAO.listOfQandA();
    int number = 0;
    for(QAndA each : qAndAs){
        number++;    
%>                                    
					<tr>
						<td class="auto-style1"><%=number%></td>
                                                <td class="auto-style1"><a href="editQAndA.jsp?id=<%=each.getQandaid()%>"><%=each.getQuestion()%></a></td>
                                                <td class="auto-style1"><%=each.getAnswer()%></td>
						<td class="auto-style1">
                                                    <input name="delCheckbox" type="checkbox" value="<%=each.getQandaid()%>"/>
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
