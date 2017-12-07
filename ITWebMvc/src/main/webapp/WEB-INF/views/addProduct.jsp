
<%-- <%@page import="model.Supplier"%>
<%@page import="dao.SupplierDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%>
<%@page import="dao.ProductDAO"%>
<%@page import="model.Product"%>
<%@page import="model.Product"%> --%>
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
<%--     <%
        Product product = null;
        String pro_id = request.getParameter("id");
        if (pro_id != null) {
            ProductDAO productDAO = new ProductDAO();
            product = productDAO.findProductByID(Integer.parseInt(pro_id));
        } else {
            out.print("");
        }

    %> --%>
    <body>
        <!--HEADRER-->
        <jsp:include page="adminHeader.jsp"/>
        <!--END-HEADRER-->


        <!--MAINBODY-->
        <div class="productDetail">
            <!--Product detail-->
            <div style="float:left" >
            </div>
            <div align="center"> 
                <form method="post" action="ProductAddServlet" enctype="multipart/form-data">
                    <input type="hidden" value="<%-- <%=pro_id%> --%>"name="pro_id"/>

                    <table>
                        <tr>
                            <td rowspan="17">&nbsp;</td>
                            <td>Name;</td>
                            <td><input name="pro_name" type="text" value="<%-- <%= product != null ? product.getName() : ""%> --%>" /></td>
                        </tr>
                        <tr>
                            <td>Supplier;</td>
                            <td><select name="sup_id">


                              <%--       <%
                                        SupplierDAO supplierDAO = new SupplierDAO();
                                        List<Supplier> suppliers = supplierDAO.findALl();
                                        for (Supplier each : suppliers) {
                                    %>
                                    <option value="<%=each.getSup_id()%>"><%=each.getSup_name()%></option>
                                    <%
                                        }
                                    %> --%>
                                </select></td>
                        </tr>
                        <tr>
                            <td>Category;</td>
                            <td><select name="cat_id">

                                  <%--   <%
                                        CategoryDAO categoryDAO = new CategoryDAO();
                                        List<Category> categorys = categoryDAO.findALl();
                                        for (Category each : categorys) {
                                    %>
                                    <option  value="<%=each.getCat_id()%>"><%=each.getCat_name()%></option>
                                    <%
                                        }
                                    %> --%>
                                </select></td>
                        </tr>
                        <tr>
                            <td>OS;</td>
                            <td><input name="pro_os" type="text" /></td>
                        </tr>
                        <tr>
                            <td>CPU;</td>
                            <td><input name="pro_cpu" type="text"  /></td>
                        </tr>
                        <tr>
                            <td>RAM;</td>
                            <td><input name="pro_ram" type="text"  /></td>
                        </tr>
                        <tr>
                            <td>Graphic;</td>
                            <td><input name="pro_graphic" type="text"  /></td>
                        </tr>
                        <tr>
                            <td>Monitor;</td>
                            <td><input name="pro_monitor" type="text" /></td>
                        </tr>
                        <tr>
                            <td>Battery:</td>
                            <td><input name="pro_battery" type="text"  /></td>
                        </tr>
                        <tr>
                            <td>Size</td>
                            <td><input name="pro_size" type="text"  /></td>
                        </tr>
                        <tr>
                            <td>Camera:</td>
                            <td><input name="pro_camera" type="text"  /></td>
                        </tr>
                        <tr>
                            <td>Price</td>
                            <td><input name="pro_price" type="text"  /></td>
                        </tr>
                        <tr>
                            <td>New</td>
                            <td><input name="pro_isnew" type="text"  /></td>
                        </tr>
                        <tr>
                            <td>Hot</td>
                            <td><input name="pro_ishot" type="text" /></td>
                        </tr>
                        <tr>
                            <td>Small Images</td>
                            <td><input name="pro_smallfile"  type="file" /></td>
                        </tr>
                        <tr>
                            <td>Large Images</td>
                            <td><input name="pro_largefile"  type="file" /></td>
                        </tr>
                        <tr>
                            <td><input name="button" type="submit" value="Add" /></td>
                            <td><input type="reset" name="clear" value="Clear"/></td>
                        </tr>
                    </table>

                </form>
            </div>

            <!--produc detail-->
        </div>
        <!--END-FOOTER-->
    </body>
</html>

