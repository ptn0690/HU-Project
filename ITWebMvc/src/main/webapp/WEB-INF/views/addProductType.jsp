
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
<%  
    Category category = null;
    String cat_id = request.getParameter("id");
    if(cat_id!=null){
    CategoryDAO  categoryDAO = new CategoryDAO();
    category = categoryDAO.findCategoryByID(Integer.parseInt(cat_id));
    }
    else out.print("");

%>
<body>
<!--HEADRER-->
<jsp:include page="adminHeader.jsp"/>
<!--END-HEADRER-->


<!--MAINBODY-->
 <div class="productDetail">
 <!--Product detail-->
 
    		<form action="CategoryAddServlet" method="post">
                    <input type="hidden" value="<%=cat_id%>"name="cat_id"/>
                    <table align="center">
                        <tr>
                            <td>Name:<input type="text" name="cat_name" /></td>
                        </tr>
                        <tr>
                            <td><input type="submit" name="addButton" value="Add"/>
                                <input type="reset" name="reset" value="Reset"/></td>
                        </tr>
                    </table>
			</form>
 <!--produc detail-->
</div>
<!--END-FOOTER-->



</body>
</html>
