<%@page import="java.util.List"%>
<%@page import="com.it.spring.model.Category"%>
<%@page import="com.it.spring.dao.CategoryDAO"%>
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
<script>
	function addNewCategory(){
		var contextPath = "${pageContext.request.contextPath}";
		window.location = contextPath + "/category/add";
		
	}
</script>
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
 
    		<form action="${pageContext.request.contextPath}/category/delete" method="post" enctype="application/x-www-form-urlencoded">
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                <input type="button" value="Tạo mới" name="add" onclick="addNewCategory()"/>
                <table width="60%" align="center" border="1px">
					<tr bgcolor="red" style="color:white">
						<th class="auto-style1">STT</th>
						<th class="auto-style1">Name</th>
                                                <th width="10%"><input name="deleteButton" type="submit" value="Delete" /></th>
					</tr>
                                                    <%
                        List<Category> categorys = (List<Category>) request.getAttribute("listOfCategorys");
                        int i = 0;
                       
                        for (Category each : categorys) {
                            i++;
                         
                    %>
                    <tr align="center">
                 
                        <td class="auto-style1" align="center"><%=i%></td>
                                                <td class="auto-style1"><a href="${pageContext.request.contextPath}/category/detail/<%=each.getCat_id()%>"><%=each.getCat_name()%></a></td>
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
