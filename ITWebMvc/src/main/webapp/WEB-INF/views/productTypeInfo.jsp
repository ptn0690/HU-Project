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
	function turnBack(){
		var contextPath = "${pageContext.request.contextPath}";
		window.location = contextPath + "/category/edit";
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
<%
	Category category = null;
	if (request.getAttribute("category") != null) {
		category = (Category)request.getAttribute("category");
	} else
		out.print("");
%>
<body>
<!--HEADRER-->
<jsp:include page="adminHeader.jsp"/>
<!--END-HEADRER-->


<!--MAINBODY-->
 <div class="productDetail">
 <!--Product detail-->
 
    		<form action="${pageContext.request.contextPath}/category/addProcess" method="post" enctype="application/x-www-form-urlencoded">
                    <input type="hidden" value="<%= category != null ? category.getCat_id() : ""%>"name="cat_id"/>
                    <table align="center">
                        <tr align="center">
                            <td>Name:<input type="text" name="cat_name" value="<%= category != null ? category.getCat_name() : ""%>"/></td>
                        </tr>
                        <tr align="center">
                            <td ><input type="submit" name="updateButton" value="<%= category != null ? "Cập Nhật" : "Tạo Mới"%>"/>
                                <input type="button" name="backButton" value="Quay Lại" onlick = "turnBack()"/></td>
                        </tr>
                    </table>
			</form>
 <!--produc detail-->
</div>
<!--END-FOOTER-->



</body>
</html>
