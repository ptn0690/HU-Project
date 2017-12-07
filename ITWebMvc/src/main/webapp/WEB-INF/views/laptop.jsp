<%@page import="java.util.ArrayList"%>
<%@page import="com.it.spring.model.Category"%>
<%@page import="com.it.spring.dao.CategoryDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.it.spring.model.Product"%>
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
        
        <!--Vung ben phai-->
        <div class="right-area w775px left-fl pd10">
          <div class="banner-group wp100 clear">
           <img class="banner-group" src="${pageContext.request.contextPath}/resources/images/banner/banner-01.jpg" />
          </div>
          
          <!--Danh sach SanPham-->
          <div class="group product clearfix">
            <!--title-->
            <div class="header2">
                <span class="title">
                <span>
                	<a href="/dien-thoai/maxfone-22.aspx">Laptop</a>
                	<div style="float:right">
                            <form action="SearchServlet" method="post" name="frm">
                		 <select name="search" style="width: 125px" onchange="javascript:document.frm.submit()">
                <option selected value="0">All</option>
                <option value="1">Small price to hight price</option>
                <option value="2">Hight price to small price</option>        

            </select>
                        </form>
						</div>
                </span>
                </span>
            </div>
            <!--end--title-->
            	  <%
                   List<Product> products = new ArrayList<Product>();                  
                  if(request.getAttribute("listProducts")!=null){                 
                  products = (List<Product>) request.getAttribute("listProducts");
                   
                  }
                    int num =  0;
                    for (Product each : products) {
                        num++;
                %>
                    <div class="grid w255px  left-fl mg-top5 gachbottom" style="clear: right">
                
                	<div class="left-fl imgProduct w100px">
                    	<a href="#"><span class="imgProduct">
                    	<img class="resizeP-Home" src="${pageContext.request.contextPath}/resources/images/<%=each.getPro_largeImage()%>" />
                        </span></a>
                    </div>
                    
                        <div class="left-fl desProductList w155px">
                    	<ul class="desProductList clean">
                        	<h6><%=each.getName()%></h6>
                        	<li><b>Xuất sứ:</b> Chính hãng</li>
                            <li><b>Bảo hành:</b> 12 tháng tại Cửa hàng. đổi một trong 1 tuần đầu</li>
                            <li><b>Màu sắc:</b> Xanh, Đỏ, Tím, Trắng</li>
                            
                            <li><b>Trạng thái:</b>
                            <span class="pd2x3 btn-success">Còn hàng</span>
                            </li>
                            <li><b>Phụ kiện:</b>Fullbox</li>

                        </ul>
                    </div>
                                <div class="clear mg-left30 " >
                    	<span class="btn btn-info "><%=each.getPrice()%></span>
                    	<span class="btn btn-danger "><a href="${pageContext.request.contextPath}/product/<%=each.getId()%>">Chi tiết</a></span>
                    </div>
                </div>
                  <%                        
                        }
                                       
                    %>  
            </div><!--END=Danh sach SanPham-->
            <div class="pagination pull-right">
                <ul>
                <li><a href="#">Prev</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">Next</a></li>
                </ul>
            </div>
            <!--HelpBanner-->
            <div class="clear mg-top10">
            	<a href="#"> <img src="${pageContext.request.contextPath}/resources/images/icon-logo/help2.png" /></a>
                <a href="#"> <img src="${pageContext.request.contextPath}/resources/images/icon-logo/help3.png" /></a>
                <a href="#"> <img src="${pageContext.request.contextPath}/resources/images/icon-logo/help4.png" /></a>
            </div>
            <!--END=HelpBanner-->
            
        </div>
        <!--Vung ben phai-->
    </div>
</div>
<!--END-MAINBODY-->


<!--FOOTER-->
<jsp:include page="footer.jsp"/>
<!--END-FOOTER-->



</body>
</html>
