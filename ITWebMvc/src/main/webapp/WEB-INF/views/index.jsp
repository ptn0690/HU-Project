
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

</head>

<body>
<!--HEADRER-->
<jsp:include page="header.jsp"/>
<!--END-HEADRER-->


<!--MAINBODY-->
<div class="mainbody left-fl">
	<div class="mainbody-content w1020px marginauto">
    	<div class="left-area w220px left-fl">
        	<div class="block menu-list branch-mobile "><h4 class="pd5x10"> Danh mục</h4>
            	<ul class="nav nav-list w190px bs-docs-sidenav ">
            	<!--product type in here(start)-->
                	<li class="active">
                        <a href="#" >
                    		<span class="branch-mobile">Apple</span>
                            <span class="branch-mobile-logo"></span>
                        </a>
                                           </li>
                    <li><a href="#">
                    		<span class="branch-mobile">Sony</span>
                            <span class="branch-mobile-logo"></span>
                        </a>
                                           </li>
                    <li ><a href="#" >
                    		<span class="branch-mobile">Acer</span>
                            <span class="branch-mobile-logo"></span>
                        </a>
                                           </li>
                    <li><a href="#" >
                    		<span class="branch-mobile">HP</span>
                            <span class="branch-mobile-logo"></span>
                        </a>
                    </li>
                    <!--product type in here(end)-->
                </ul>
            </div>
            
                      
            <div class="block menu-list supportlive"><h4 class="pd5x10 ">Hỗ trợ trực tuyến</h4>
            	<ul class="nav nav-list w190px ">
                	<li><a href="ymsgr:SendIM?myphamhoakim1">
                    Kinh doanh 1:
                    <img id="lvhelp_stt" src="http://opi.yahoo.com/online?u=myphamhoakim1&m=g&t=1">
                    </a></li>
                    <li><a href="ymsgr:SendIM?myphamhoakim1">
                    Kinh doanh 2:
                    <img id="lvhelp_stt" src="http://opi.yahoo.com/online?u=myphamhoakim1&m=g&t=1">
                    </a></li>
                    <li><a href="ymsgr:SendIM?myphamhoakim1">
                    Kinh doanh 3:
                    <img id="lvhelp_stt" src="http://opi.yahoo.com/online?u=myphamhoakim1&m=g&t=1">
                    </a></li>
                    <li><a href="ymsgr:SendIM?myphamhoakim1">
                    Kinh doanh 4:
                    <img id="lvhelp_stt" src="http://opi.yahoo.com/online?u=myphamhoakim1&m=g&t=1">
                    </a></li>
                </ul>
            </div>
            
            
            <div class="block bannerw220"><!--Chi lay anh trong banner, Tai phan minh hoa dang lay trong phan logo-->
            	<ul class="clean">
                	<li><a href="#">
                    	<img src="${pageContext.request.contextPath}/resources/images/banner/banner1.png" />
                    	</a>
                    </li>
                    <li><a href="#">
                    	<img src="${pageContext.request.contextPath}/resources/images/banner/banner2.png" />
                    	</a>
                    </li>
                    <li><a href="#">
                    	<img src="${pageContext.request.contextPath}/resources/images/product/Image 33.png" />
                    	</a>
                    </li>
                    <li><a href="#">
                    	<img src="${pageContext.request.contextPath}/resources/images/product/Image 32.png" />
                    	</a>
                    </li>
                </ul>
            </div>
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
<li><img src="${pageContext.request.contextPath}/resources/images/slider/1.jpg" alt="" title="Sam Sung" id="wows1_0"/></li>
<li><img src="${pageContext.request.contextPath}/resources/images/slider/2.jpg" alt="" title="Ipad" id="wows1_1"/></li>

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
            	<div class="grid w255px  left-fl mg-top5 gachbottom" >
                
                	<div class="left-fl imgProduct w110px">
                    	<a href="#"><span class="imgProduct">
                    	<img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/product/201306201731053300_find-piano_OPPO.png" />
                        </span></a>
                    </div>
                    
                    <div class="left-fl desProduct w130px">
                    	<ul class="desProduct clean">
                        	<h6>Màn hình Iphone $S</h6>
                        	<li><b>Xuất sứ:</b> Chính hãng</li>
                            <li><b>Bảo hành:</b> 12 Tháng</li>
                            <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                            <li><b>Tình trạng:</b> BrandNew</li>
                            <li><b>Trạng thái:</b> Còn hàng</li>
                            <li class="gift"> Khuyến mại</li>
                        </ul>
                    </div>
                    <div class="clear mg-left30 ">
                    	<span class="btn btn-info ">3.500.000</span>
                    	<span class="btn btn-inverse ">Chi tiết</span>
                    </div>
                    
                </div>
                <div class="grid w255px  left-fl mg-top5 gachbottom" >
               
                	<div class="left-fl imgProduct w110px">
                    	<a href="#"><span class="imgProduct">
                    	<img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/product/201307091643208514_oppo-find-5.png" />
                        </span></a>
                    </div>
                    
                    <div class="left-fl desProduct w130px">
                    	<ul class="desProduct clean">
                        	<h6>Thay màn Ipad</h6>
                        	<li><b>Xuất sứ:</b> Chính hãng</li>
                            <li><b>Bảo hành:</b> 12 Tháng</li>
                            <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                            <li><b>Tình trạng:</b> BrandNew</li>
                            <li><b>Trạng thái:</b> Còn hàng</li>
                            <li class="gift"> Khuyến mại</li>
                        </ul>
                    </div>
                    <div class="clear mg-left30 ">
                    	<span class="btn btn-info ">5.000.000</span>
                    	<span class="btn btn-inverse ">Chi tiết</span>
                    </div>
                </div>
                <div class="grid w255px  left-fl mg-top5 gachbottom" >
                
                	<div class="left-fl imgProduct w110px">
                    	<a href="#"><span class="imgProduct">
                    	<img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/product/201307091643209450_find_clover.png" />
                        </span></a>
                    </div>
                    
                    <div class="left-fl desProduct w130px">
                    	<ul class="desProduct clean">
                        	<h6>Ipad Mini 16GB</h6>
                        	<li><b>Xuất sứ:</b> Chính hãng</b></li>
                            <li><b>Bảo hành:</b> 12 Tháng</li>
                            <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                            <li><b>Tình trạng:</b> BrandNew</li>
                            <li><b>Trạng thái:</b> Còn hàng</li>
                            <li class="gift"> Khuyến mại</li>
                        </ul>
                    </div>
                    <div class="clear mg-left30 ">
                    	<span class="btn btn-info ">13.000.000</span>
                    	<span class="btn btn-inverse ">Chi tiết</span>
                    </div>
                </div>
                
            </div>
            <!--END=GridProduct-->
            <div class="clea "></div>
            
<!--Nhom san pham-->
    <div class="group product clearfix">
    <!--title-->
    <div class="header2">
        <span class="title">
        <span>
            <a href="/dien-thoai/maxfone-22.aspx">New Mobiles</a></span>
        </span>
    </div>
    <!--end--title-->
        <div class="grid w255px  left-fl mg-top5 gachbottom" >      
            <div class="left-fl imgProduct w110px">
                <a href="#"><span class="imgProduct">
                <img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/product/201209130941192978_iphone5_hoanghamobile3.jpg" />
                </span></a>
            </div>
            
            <div class="left-fl desProduct w130px">
                <ul class="desProduct clean">
                    <h6>Iphone 4S 16Gb</h6>
                    <li><b>Xuất sứ:</b> Chính hãng</li>
                    <li><b>Bảo hành:</b> 12 Tháng</li>
                    <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                    <li><b>Tình trạng:</b> BrandNew</li>
                    <li><b>Trạng thái:</b> Còn hàng</li>
                    <li class="gift"> Khuyến mại</li>
                </ul>
            </div>
            <div class="clear mg-left30 ">
                <span class="btn btn-info ">13.000.000</span>
                <span class="btn btn-inverse ">Chi tiết</span>
            </div>
        </div>
        <div class="grid w255px  left-fl mg-top5 gachbottom" >
       
            <div class="left-fl imgProduct w110px">
                <a href="#"><span class="imgProduct">
                <img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/product/201211051040239600_ipad4_1.png" />
                </span></a>
            </div>
            
            <div class="left-fl desProduct w130px">
                <ul class="desProduct clean">
                    <h6>Ipad 4 16GB</h6>
                    <li><b>Xuất sứ:</b> Chính hãng</li>
                    <li><b>Bảo hành:</b> 12 Tháng</li>
                    <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                    <li><b>Tình trạng:</b> BrandNew</li>
                    <li><b>Trạng thái:</b> Còn hàng</li>
                    <li class="gift"> Khuyến mại</li>
                </ul>
            </div>
            <div class="clear mg-left30 ">
                <span class="btn btn-info ">13.000.000</span>
                <span class="btn btn-inverse ">Chi tiết</span>
            </div>
        </div>
        <div class="grid w255px  left-fl mg-top5 gachbottom" >
        
            <div class="left-fl imgProduct w110px">
                <a href="#"><span class="imgProduct">
                <img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/product/201211261731532076_ipad_mini_white.png" />
                </span></a>
            </div>
            
            <div class="left-fl desProduct w130px">
                <ul class="desProduct clean">
                    <h6>Ipad Mini 16GB</h6>
                    <li><b>Xuất sứ:</b> Chính hãng</b></li>
                    <li><b>Bảo hành:</b> 12 Tháng</li>
                    <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                    <li><b>Tình trạng:</b> BrandNew</li>
                    <li><b>Trạng thái:</b> Còn hàng</li>
                    <li class="gift"> Khuyến mại</li>
                </ul>
            </div>
            <div class="clear mg-left30 ">
                <span class="btn btn-info ">13.000.000</span>
                <span class="btn btn-inverse ">Chi tiết</span>
            </div>
        </div>
        <div class="grid w255px  left-fl mg-top5 gachbottom" >
        
            <div class="left-fl imgProduct w110px">
                <a href="#"><span class="imgProduct">
                <img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/product/201303151506133450_one v.jpg" />
                </span></a>
            </div>
            
            <div class="left-fl desProduct w130px">
                <ul class="desProduct clean">
                    <h6>Ipad Mini 16GB</h6>
                    <li><b>Xuất sứ:</b> Chính hãng</b></li>
                    <li><b>Bảo hành:</b> 12 Tháng</li>
                    <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                    <li><b>Tình trạng:</b> BrandNew</li>
                    <li><b>Trạng thái:</b> Còn hàng</li>
                    <li class="gift"> Khuyến mại</li>
                </ul>
            </div>
            <div class="clear mg-left30 ">
                <span class="btn btn-info ">13.000.000</span>
                <span class="btn btn-inverse ">Chi tiết</span>
            </div>
            
        </div>
        <div class="grid w255px  left-fl mg-top5 gachbottom" >
        
            <div class="left-fl imgProduct w110px">
                <a href="#"><span class="imgProduct">
                <img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/product/201210031523066780_dien-thoai-di-dong-samsung-galaxy-noteii-n7100-hoanghamobile.com-9.jpg" />
                </span></a>
            </div>
            
            <div class="left-fl desProduct w130px">
                <ul class="desProduct clean">
                    <h6>Iphone 4S 16Gb</h6>
                    <li><b>Xuất sứ:</b> Chính hãng</li>
                    <li><b>Bảo hành:</b> 12 Tháng</li>
                    <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                    <li><b>Tình trạng:</b> BrandNew</li>
                    <li><b>Trạng thái:</b> Còn hàng</li>
                    <li class="gift"> Khuyến mại</li>
                </ul>
            </div>
            <div class="clear mg-left30 ">
                <span class="btn btn-info ">13.000.000</span>
                <span class="btn btn-inverse ">Chi tiết</span>
            </div>
            
        </div>
        <div class="grid w255px  left-fl mg-top5 gachbottom" >
       
            <div class="left-fl imgProduct w110px">
                <a href="#"><span class="imgProduct">
                <img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/product/201306261547156936_samsung_galaxy_mega_5.8_duo.png" />
                </span></a>
            </div>
            
            <div class="left-fl desProduct w130px">
                <ul class="desProduct clean">
                    <h6>Ipad 4 16GB</h6>
                    <li><b>Xuất sứ:</b> Chính hãng</li>
                    <li><b>Bảo hành:</b> 12 Tháng</li>
                    <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                    <li><b>Tình trạng:</b> BrandNew</li>
                    <li><b>Trạng thái:</b> Còn hàng</li>
                    <li class="gift"> Khuyến mại</li>
                </ul>
            </div>
            <div class="clear mg-left30 ">
                <span class="btn btn-info ">13.000.000</span>
                <span class="btn btn-inverse ">Chi tiết</span>
            </div>
        </div>
        <div class="grid w255px  left-fl mg-top5 gachbottom" >
       
            <div class="left-fl imgProduct w110px">
                <a href="#"><span class="imgProduct">
                <img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/product/1.png" />
                </span></a>
            </div>
            
            <div class="left-fl desProduct w130px">
                <ul class="desProduct clean">
                    <h6>Ipad 4 16GB</h6>
                    <li><b>Xuất sứ:</b> Chính hãng</li>
                    <li><b>Bảo hành:</b> 12 Tháng</li>
                    <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                    <li><b>Tình trạng:</b> BrandNew</li>
                    <li><b>Trạng thái:</b> Còn hàng</li>
                    <li class="gift"> Khuyến mại</li>
                </ul>
            </div>
            <div class="clear mg-left30 ">
                <span class="btn btn-info ">13.000.000</span>
                <span class="btn btn-inverse ">Chi tiết</span>
            </div>
        </div>
        <div class="grid w255px  left-fl mg-top5 gachbottom" >
       
            <div class="left-fl imgProduct w110px">
                <a href="#"><span class="imgProduct">
                <img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/product/2.png" />
                </span></a>
            </div>
            
            <div class="left-fl desProduct w130px">
                <ul class="desProduct clean">
                    <h6>Ipad 4 16GB</h6>
                    <li><b>Xuất sứ:</b> Chính hãng</li>
                    <li><b>Bảo hành:</b> 12 Tháng</li>
                    <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                    <li><b>Tình trạng:</b> BrandNew</li>
                    <li><b>Trạng thái:</b> Còn hàng</li>
                    <li class="gift"> Khuyến mại</li>
                </ul>
            </div>
            <div class="clear mg-left30 ">
                <span class="btn btn-info ">13.000.000</span>
                <span class="btn btn-inverse ">Chi tiết</span>
            </div>
        </div>
        <div class="grid w255px  left-fl mg-top5 gachbottom" >
       
            <div class="left-fl imgProduct w110px">
                <a href="#"><span class="imgProduct">
                <img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/product/3.png" />
                </span></a>
            </div>
            
            <div class="left-fl desProduct w130px">
                <ul class="desProduct clean">
                    <h6>Ipad 4 16GB</h6>
                    <li><b>Xuất sứ:</b> Chính hãng</li>
                    <li><b>Bảo hành:</b> 12 Tháng</li>
                    <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                    <li><b>Tình trạng:</b> BrandNew</li>
                    <li><b>Trạng thái:</b> Còn hàng</li>
                    <li class="gift"> Khuyến mại</li>
                </ul>
            </div>
            <div class="clear mg-left30 ">
                <span class="btn btn-info ">13.000.000</span>
                <span class="btn btn-inverse ">Chi tiết</span>
            </div>
        </div>
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
