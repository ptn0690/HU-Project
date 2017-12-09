<%@page import="com.it.spring.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.it.spring.dao.ProductDAO"%>
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
        <script language="javascript">
            function addProduct(){
                window.location = "product/add";
            }
        </script>
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
            <input type="button" value="Add new" name="addButton" onclick="addProduct()"/>
            <form action="product/delete" method="post" enctype="application/x-www-form-urlencoded">

                <table style="width: 100%">
                    <tr bgcolor="red" style="color:white">
                        <th class="auto-style1">STT</th>
                        <th class="auto-style1">Hình ảnh</th>
                        <th class="auto-style1">Sản phẩm</th>
                        <th class="auto-style1">Số lượng</th>
                        <th class="auto-style1">Giá</th>

                        <th><input name="deleteButton" type="submit" value="Delete" /></th>
                    </tr>
                    <%
                        List<Product> products = (List<Product>) request.getAttribute("listOfProducts");
                        int i = 0;

                        for (Product each : products) {
                            i++;

                    %>
                    <tr align="center">

                        <td class="auto-style1"><%=i%></td>
                        <td class="auto-style1" >&nbsp;<a href="${pageContext.request.contextPath}/resources/images/<%=each.getPro_largeImage()%>"><img width="100px" src="${pageContext.request.contextPath}/resources/images/<%=each.getPro_smallImage()%>"/></a></td>
                        <td class="auto-style1"><a href="${pageContext.request.contextPath}/admin/product/<%=each.getId()%>"><%=each.getName()%></a></td>
                        <td class="auto-style1">100</td>
                        <td class="auto-style1">$<%=each.getPrice()%></td>
                        <td><input name="deleteCheckBox" type="checkbox" value="<%=each.getId()%>" /></td>
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

