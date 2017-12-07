
<%@page import="com.it.spring.dao.ProductDAO"%>
<%@page import="com.it.spring.model.Product"%>
<%@page import="com.it.spring.model.Supplier"%>
<%@page import="java.util.List"%>
<%@page import="com.it.spring.model.Category"%>
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

    </head>
    <%

        List<Category> listOfCategory = (List<Category>) request.getAttribute("listCategories");
        List<Supplier> listOfSupplier = (List<Supplier>) request.getAttribute("listSuppliers");
        Product product = (Product)request.getAttribute("product");

    %>
 <script>
 function addCart() {
	 var quantityOfBuyPro = document.getElementById("quantityOfBuyPro").value;
	 var productId = document.getElementById("productId").value;
	 var contextPath = "${pageContext.request.contextPath}";
	 var url  =  contextPath+ "/cart/add"+"?productId=" + productId + "&" + "quantityOfBuyPro=" + quantityOfBuyPro;
	 window.location = url;
 }
 </script>
 

    <body>
        <!--HEADRER-->
        <jsp:include page="header.jsp"/>
        <!--END-HEADRER-->


        <!--MAINBODY-->
        <div class="mainbody left-fl">
           <div class="mainbody-content w1020px marginauto">
                <jsp:include page="${request.contextPath}/category/leftpanel"></jsp:include>
            </div>

                <!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai--><!--Vung ben phai-->
                <div class="right-area w775px left-fl pd10">

                    <!-- Start WOWSlider.com HEAD section -->
                    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/wowhome.css" />
                    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/wowslider/jquery.js"></script>
                    <!-- End WOWSlider.com HEAD section -->

                    <!-- Start WOWSlider.com BODY section -->
                    <div id="wowslider-container1">
                        <div class="ws_images"><ul>
                                <li><img src="${pageContext.request.contextPath}/resources/images/slider/1.jpg" alt="c13f72f237d765fc0e69e35ba7eb9dd9" title="c13f72f237d765fc0e69e35ba7eb9dd9" id="wows1_0"/></li>
                                <li><img src="${pageContext.request.contextPath}/resources/images/slider/2.jpg" alt="a8235d1055e66c22d61373e942096745" title="a8235d1055e66c22d61373e942096745" id="wows1_1"/></li>
                            </ul></div>
                        <div class="ws_bullets"><div>
                                <a href="#" title="c13f72f237d765fc0e69e35ba7eb9dd9">1</a>
                                <a href="#" title="a8235d1055e66c22d61373e942096745">2</a>
                            </div></div>
                        <span class="wsl"><a href="#">Carousel Plugin</a> by WOWSlider.com v4.3</span>
                        <div class="ws_shadow"></div>
                    </div>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/wowslider/wowslider.js"></script>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/wowslider/script.js"></script>	   
                    <!--END=GridProduct-->
                </div> 
                

                <form name="frm" action="AddToCart" method="post">  

                    <input type="hidden" name="id" id ="productId" value="<%=product.getId()%>">
                           <div class="productDetail">
                            <!--Product detail-->
                            <div style="float:left" >
                                <table>
                                    <tr>
                                        <td align="right" rowspan="13"><img height="200px" width="400px" src="${pageContext.request.contextPath}/resources/images/<%= product.getPro_largeImage()%>"/> </td>
                                        <td align="right" style="width: 50px">Name;</td>
                                        <td><%= product.getName()%></td>
                                    </tr>
                                    <tr >
                                        <td align="right">OS;</td>
                                        <td><%= product.getPro_os()%></td>
                                    </tr>
                                    <tr>
                                        <td align="right">CPU;</td>
                                        <td ><%= product.getPro_cpu()%></td>
                                    </tr>
                                    <tr>
                                        <td align="right">RAM;</td>
                                        <td><%= product.getPro_ram()%></td>
                                    </tr>
                                    <tr>
                                        <td align="right">Graphic;</td>
                                        <td><%= product.getPro_graphic()%></td>
                                    </tr>
                                    <tr>
                                        <td align="right">Monitor;</td>
                                        <td><%= product.getPro_monitor()%></td>
                                    </tr>
                                    <tr>
                                        <td align="right">Battery:</td>
                                        <td><%= product.getPro_battery()%></td>
                                    </tr>
                                    <tr>
                                        <td align="right">Size</td>
                                        <td><%= product.getPro_size()%></td>
                                    </tr>
                                    <tr>
                                        <td align="right">Camera:</td>
                                        <td><%= product.getPro_camera()%></td>
                                    </tr>
                                    <tr>
                                        <td align="right">Price</td>
                                        <td><%= product.getPrice()%></td>
                                    </tr>


                                    <tr>

                                        <td colspan="2"><input width="10px" type="text" id="quantityOfBuyPro"  name="quantityOfBuyPro"/><input type="button" value="Add to Cart" name="button" onclick = "addCart()"/></td>
                                    </tr>
                                </table>
                         </form>       
                                <div class="block wp100">

                                    <!--Selector-TabPanels-->
                                    <script src="${pageContext.request.contextPath}/resources/SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
                                    <link href="${pageContext.request.contextPath}/resources/SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />    <!--Selector-TabPanels-->      
                                    <div id="TabbedPanels1" class="TabbedPanels">
                                        <ul class="TabbedPanelsTabGroup">
                                            <li class="TabbedPanelsTab" tabindex="0">Tính năng</li>
                                            <li class="TabbedPanelsTab" tabindex="0">Phụ kiên tương thích</li>
                                            <li class="TabbedPanelsTab" tabindex="0">Địa chỉ Bảo hành</li>
                                            <li class="TabbedPanelsTab" tabindex="0">Hướng dẫn sử dụng</li>
                                            <li class="TabbedPanelsTab" tabindex="0">Đánh giá Khách hàng</li>
                                        </ul>
                                        <div class="TabbedPanelsContentGroup">
                                            <div class="TabbedPanelsContent">
                                                <div class="tabs-details" id="tabs-0">

                                                    
                                                    
                                                    
                                                </div>
                                            </div>


                                            <div class="TabbedPanelsContent">
                                                <p class="title">Phụ kiện tương thích</p>
                                                <p class="description">Danh sách tin tức liên quan đến điện thoại: Nokia Lumia 625</p>
                                                <ul class="list-details"> </ul>

                                            </div>


                                            <div class="TabbedPanelsContent">
                                                <ul class="list-details">
                                                    <li class="group1"><span><b>Hà nội</b></span></li>
                                                    <li class="group2"><span><b>Quận Đống Đa <i>(1)</i></b></span></li>
                                                    <li class="item">
                                                        <p><strong>Trung tâm bảo hành ĐTDĐ Nokia</strong></p>
                                                        <p>Điện thoại: 04-377 59655</p>
                                                        <p>Địa chỉ: 76 Nguyễn Chí Thanh, P.Láng Thượng, Đống Đa</p>
                                                        <p>Giờ làm việc: 8h30</p>
                                                    </li>
                                                </ul>
                                            </div>


                                            <div class="TabbedPanelsContent">
                                                <p class="title">Tin tức liên quan</p>
                                                <p class="description">Danh sách tin tức liên quan đến điện thoại: Nokia Lumia 625</p>
                                                <ul class="list-details"> </ul>
                                            </div>


                                            <div class="TabbedPanelsContent">
                                                <p class="title">Bình luận, đánh giá</p>
                                                <span style="float:right;" id="btncomment" class=" btn" role="button">
                                                    <span class="ui-button-icon-primary ui-icon ui-icon-circle-check"></span>
                                                    <span class="ui-button-text">Gửi đánh giá</span></span>
                                                <script type="text/javascript">
                                                    $(document).ready(function () {
                        
                                                        $("#btncomment").button({
                                                            icons: { primary: 'ui-icon-circle-check' },
                                                            text: true
                                                        }).click(function () {
                                                            $.get(encodeURI("/HomeMobile.aspx/AddReview?mobileid=1256"), function (data) {
                                                                $("#comment-form").html(data);
                                                            });
                                                        });
                        
                                                        $.post("/HomeMobile.aspx/ListComment?mobileid=1256&amp;page=1", function (data) {
                                                            $("#comment-container").html(data);
                                                        });
                                                    });
                                                </script>
                                                <div style="display: inline-block;width: 100%;" id="comment-form"></div>

                                                <div id="comment-container">
                                                    <span style="color:red; font-weight:bold; text-align:center; font-size:15px; display:block; padding:15px;">Hiện tại chưa có đánh giá nào được gửi.</span>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>


                        </div>
                        <div>

                            <!-- tableaaaaaaaaaaaaaaaaaaa -->


                            <!-- tableeeeeeeeeeeeeeeeeeee -->
                        </div>

                        <!--produc detail-->
                        </div>

                </form>            

                <!--END-MAINBODY-->
            </div>
        </div>

        <!--FOOTER-->
        <jsp:include page="footer.jsp"/>
        <!--END-FOOTER-->



    </body>
</html>

