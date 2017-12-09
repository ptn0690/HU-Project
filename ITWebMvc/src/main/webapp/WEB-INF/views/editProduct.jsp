<%@page import="com.it.spring.model.Supplier"%>
<%@page import="java.util.List"%>
<%@page import="com.it.spring.model.Category"%>
<%@page import="com.it.spring.model.Product"%>
<%@page import="com.it.spring.model.Product"%>
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
       /*  CategoryDAO categoryDAO = new CategoryDAO();
        List<Category> listOfCategory = categoryDAO.findALl();
        SupplierDAO supplierDAO = new SupplierDAO();
        List<Supplier> listOfSupplier = supplierDAO.findALl(); */
        //Product product = null;
       /*  String pro_id = request.getParameter("id");
        if (pro_id != null) {
            ProductDAO productDAO = new ProductDAO();
            //product = productDAO.findProductByID(Integer.parseInt(pro_id));
       // } */
        
        List<Category> listOfCategory = (List<Category>) request.getAttribute("listCategories");
        List<Supplier> listOfSupplier = (List<Supplier>) request.getAttribute("listSuppliers");
        Product product = (Product)request.getAttribute("product");

    %>
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
                <form method="post" action="updateProduct" id="frmUpdate" name="frmUpdate" enctype="application/x-www-form-urlencoded">
                    <input type="hidden" value="<%=product.getId()%>"name="pro_id"/>
                    <table>
                        <tr>
                            <td rowspan="17"><img width="600px" height="600px" src="${pageContext.request.contextPath}/resources/images/<%= product.getPro_largeImage()%>"/></td><br/>
                           
                            <td>Name;</td>
                            <td><input name="pro_name" type="text" value="<%= product != null ? product.getName() : ""%>" /></td>
                        </tr>
                        <tr>
                            <td>Supplier;</td>
                            <td><select name="sup_id">

                                <%
                                    if (product != null) {
                                        for (Supplier each : listOfSupplier) {
                                            if (product.getSupplier().getSup_id() == each.getSup_id()) {
                                                System.out.println("aaaaaaaaaaaaaaa"+product.getSupplier().getSup_id());
                                            
                                                out.println("<option selected value=" + each.getSup_id() + ">" + each.getSup_name() + "</option>");
                                            } else {
                                                out.println("<option value=" + each.getSup_id() + ">" + each.getSup_name() + "</option>");
                                            }
                                        }
                                    } 
                                %>
                            </select></td>
                        </tr>
                        <tr>
                            <td>Category;</td>
                            <td><select name="cat_id">

                                <%
                                    if (product != null) {
                                        for (Category each : listOfCategory) {
                                            if (product.getCategory().getCat_id() == each.getCat_id()) {
                                                System.out.println("aaaaaaaaaaaaaaa"+product.getCategory().getCat_id());
                                            
                                                out.println("<option selected value=" + each.getCat_id() + ">" + each.getCat_name() + "</option>");
                                            } else {
                                                out.println("<option value=" + each.getCat_id() + ">" + each.getCat_name() + "</option>");
                                            }
                                        }
                                    } 
                                %>
                            </select></td>
                        </tr>
                        <tr>
                            <td>OS;</td>
                            <td><input name="pro_os" type="text" value="<%= product != null ? product.getPro_os() : ""%>" /></td>
                        </tr>
                        <tr>
                            <td>CPU;</td>
                            <td><input name="pro_cpu" type="text" value="<%= product != null ? product.getPro_cpu() : ""%>" /></td>
                        </tr>
                        <tr>
                            <td>RAM;</td>
                            <td><input name="pro_ram" type="text" value="<%= product != null ? product.getPro_ram() : ""%>" /></td>
                        </tr>
                        <tr>
                            <td>Graphic;</td>
                            <td><input name="pro_graphic" type="text" value="<%= product != null ? product.getPro_graphic() : ""%>" /></td>
                        </tr>
                        <tr>
                            <td>Monitor;</td>
                            <td><input name="pro_monitor" type="text" value="<%= product != null ? product.getPro_monitor() : ""%>" /></td>
                        </tr>
                        <tr>
                            <td>Battery:</td>
                            <td><input name="pro_battery" type="text" value="<%= product != null ? product.getPro_battery() : ""%>" /></td>
                        </tr>
                        <tr>
                            <td>Size</td>
                            <td><input name="pro_size" type="text" value="<%= product != null ? product.getPro_size() : ""%>" /></td>
                        </tr>
                        <tr>
                            <td>Camera:</td>
                            <td><input name="pro_camera" type="text" value="<%= product != null ? product.getPro_camera() : ""%>" /></td>
                        </tr>
                        <tr>
                            <td>Price</td>
                            <td><input name="pro_price" type="text" value="<%= product != null ? product.getPrice() : ""%>" /></td>
                        </tr>
                        <tr>
                            <td>New</td>
                            <td><input name="pro_isnew" type="text" value="<%= product != null ? product.getPro_isnew() : ""%>" /></td>
                        </tr>
                        <tr>
                            <td>Hot</td>
                            <td><input name="pro_ishot" type="text" value="<%= product != null ? product.getPro_ishot() : ""%>" /></td>
                        </tr>
                        <tr>
                            <td>Small Images</td>
                            <td><input name="pro_smallfile"  type="file" value="<%= product != null ? product.getPro_smallImage() : ""%>"/></td>
                        </tr>
                        <tr>
                            <td>Large Images</td>
                            <td><input name="pro_largefile"  type="file" value="<%= product != null ? product.getPro_largeImage() : ""%>"/></td>
                        </tr>
                        <tr>
                            <td><input name="button" type="submit" value="Update" /></td>
                            <td><input type="submit" name="back" value="Back"/></td>
                        </tr>
                    </table>

                    
                </form>
            </div>

            <!--produc detail-->
        </div>
        <!--END-FOOTER-->
    </body>
</html>

