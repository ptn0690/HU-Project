<%@page import="java.util.ArrayList"%>
<%@page import="com.it.spring.model.Product"%>
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
		<link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/main.css" />
		<link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/style.css" />
		<script src="${pageContext.request.contextPath}/resources/js/bootraps/bootstrap.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootraps/bootstrap.min.js"></script>
		
		<style type="text/css">
		.auto-style1 {
		text-align: center;
		font-size: xx-large;
		}
		</style>

    </head>

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
                <!-- End WOWSlider.com BODY section -->

                <!--MainProduct-->
                <!--div class="group group-Product left-fl wp100">
                    <ul> 
                            <li><a href="#"><img src="images/banner/group-iphone.jpg" /></a></li>
                        <li><a href="#"><img src="images/banner/group-htc.jpg" /></a></li>
                        <li><a href="#"><img src="images/banner/group-samsung.jpg" /></a></li>
                    </ul>
                </div-->
                <!--END=Product-->

                <!--MainAccessories-->
                <!--END=Accessories-->
                <div class="clear wp100"></div>
                <!--GridProduct-->

                <!--GridProduct-->
                <!--Nhom san pham-->
                <div class="group product clearfix">
                    <!--title-->
                    <div class="header2">
                        <span class="title">
                            <span>
                                <a href="/dien-thoai/maxfone-22.aspx">Hot Laptop</a>
                            </span>
                        </span>
                    </div>
                    <!--end--title-->
                    <%
                        //ProductDAO productDAO = new ProductDAO();
                        //List<Product> products = productDAO.ishot();
						List<Product> hotProducts = (List<Product>) request.getAttribute("listHotProducts");
                        for (Product each : hotProducts) {
                    %>
                    <div class="grid w255px  left-fl mg-top5 gachbottom" >

                        <div class="left-fl imgProduct w110px">
                            <a href="#"><span class="imgProduct">
                                    <img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/<%=each.getPro_largeImage()%>" />
                                </span></a>
                        </div>

                        <div class="left-fl desProduct w130px">
                            <ul class="desProduct clean">
                                <h6><%=each.getName()%></h6>
                                <li><b>Xuất sứ:</b> Chính hãng</li>
                                <li><b>Bảo hành:</b> 12 Tháng</li>
                                <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                                <li><b>Tình trạng:</b><%=each.getPro_ishot()==1?" Hot":""%></li>
                                <li><b>Trạng thái:</b> Còn hàng</li>
                                <li class="gift"> Khuyến mại</li>
                            </ul>
                        </div>
                        <div class="clear mg-left30 " style="padding-top: 40px">
                            <span class="btn btn-info ">$<%=each.getPrice()%></span>
                            <span class="btn btn-inverse "><a href="${pageContext.request.contextPath}/product/<%=each.getId()%>">Chi tiết</a></span>
                        </div>
                    </div>
                  <%                        
                        }
                    %>              
                </div>
                <!--END=GridProduct-->
                <div class="clea "></div>

                <!--Nhom san pham-->
                <div class="group product clearfix">
                    <!--title-->
                    <div class="header2">
                        <span class="title">
                            <span>
                                <a href="/dien-thoai/maxfone-22.aspx">New Laptop</a></span>
                        </span>
                    </div>
                    <!--end--title-->
  <%
                        //List<Product> newProducts = productDAO.isnew();
  						List<Product> newProducts = (List<Product>) request.getAttribute("listNewProducts");
                        for (Product each : newProducts) {
                    %>
                    <div class="grid w255px  left-fl mg-top5 gachbottom" >      
                        <div class="left-fl imgProduct w110px">
                            <a href="#"><span class="imgProduct">
                                    <img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/<%=each.getPro_largeImage()%>" />
                                </span></a>
                        </div>

                        <div class="left-fl desProduct w130px">
                            <ul class="desProduct clean">
                                <h6><%=each.getName()%></h6>
                                <li><b>Xuất sứ:</b> Chính hãng</li>
                                <li><b>Bảo hành:</b> 12 Tháng</li>
                                <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                                <li><b>Tình trạng:</b><%=each.getPro_isnew()==1?" New":""%></li>
                                <li><b>Trạng thái:</b> Còn hàng</li>
                                <li class="gift"> Khuyến mại</li>
                            </ul>
                        </div>
                                <div class="clear mg-left30 " style="padding-top: 40px">
                            <span class="btn btn-info "><%=each.getPrice()%></span>
                            <span class="btn btn-inverse "><a href="${pageContext.request.contextPath}/product/<%=each.getId()%>">Chi tiết</a></span>
                        </div>
                    </div>
                <%                        
                        }
                    %> 
                </div>
                <!--END=GridProduct-->
                <div class="clear"></div> 

                <!--GridProduct-->
                <!--Nhom san pham-->

                <!--END=GridProduct-->
                <div class="clear "></div>
                <!--GridProduct-->
                <!--Nhom san pham-->
                <div class="group product clearfix">
                    <!--title-->
                    <!--end--title-->
                    <!--END=HelpBanner-->      
                </div>
                <!--Vung ben phai-->
            </div>
        </div>
        </div>
        <!--END-MAINBODY-->


        <!--FOOTER-->
        <jsp:include page="footer.jsp"/>
        <!--END-FOOTER-->



    </body>
</html>
