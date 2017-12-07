<%-- 
    Document   : editProductType
    Created on : Dec 11, 2013, 2:02:10 PM
    Author     : Nhan
--%>

<%@page import="java.util.List"%>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%>
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
.dropbox{
	
	display:block;
}
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
 <div class="productDetail">
 <!--Product detail-->
 
    		<form action="CategoryDeleteServlet" method="post">
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                <input type="button" value="Add new" name="add"/>
                <table width="60%" align="center" border="1px">
					<tr bgcolor="red" style="color:white">
						<th class="auto-style1">STT</th>
						<th class="auto-style1">Name</th>
                                                <th width="10%"><input name="deleteButton" type="submit" value="Delete" /></th>
					</tr>
                                                    <%
                        CategoryDAO categoryDAO = new CategoryDAO();
                        List<Category> categorys = categoryDAO.findALl();
                        int i = 0;
                       
                        for (Category each : categorys) {
                            i++;
                         
                    %>
                    <tr align="center">
                 
                        <td class="auto-style1" align="center"><%=i%></td>
                                                <td class="auto-style1"><a href="productTypeInfo.jsp?id=<%=each.getCat_id()%>"><%=each.getCat_name()%></a></td>
                                                <td><input name="deleteCheckBox" type="checkbox" value="<%=each.getCat_id()%>" /></td>
					</tr>
                                                   <%                        
                        }
                    %> 
				</table>
			</form>
 <!--produc detail-->
</div>
<!--END-FOOTER-->



</body>
</html>
