<%@page import="java.util.List"%>
<%@page import="com.it.spring.model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="left-area w220px left-fl">
                    <div class="block menu-list branch-mobile "><h4 class="pd5x10"> Danh mục</h4>
                        <ul class="nav nav-list w190px bs-docs-sidenav ">
                            <!--product type in here(start)-->
                            <%
                                List<Category> categories = (List<Category>) request.getAttribute("listCategories");

                                for (Category each : categories) {
                            %>
                            <li class="active">
                                <a href="#" >
                                    <span class="branch-mobile"><%=each.getCat_name()%></span>
                                    <!-- <span class="branch-mobile-logo"><img src="#" /></span> -->
                                </a>
                            </li>
<%         
        }   
%>
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