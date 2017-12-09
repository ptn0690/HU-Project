
<%@page import="com.it.spring.model.Userz"%>
<%
Userz userz = null;
    if((Userz)session.getAttribute("users")!=null){
         userz = (Userz)session.getAttribute("users");
   
%>
<div class="header">
	<div class="topheader">
    	<div class="topheader-inner w1020px marginauto">	
        	<ul class="pull-right">
            <li>
                <a href="${pageContext.request.contextPath}/account">Tài khoản</a>
                </li>
               
                <li><a href="${pageContext.request.contextPath}/cart/">Giỏ hàng</a></li>
                
                <li><a href="${pageContext.request.contextPath}/logout">Đăng xuất</a></li>
                
                 <li><a href="${pageContext.request.contextPath}/regist"><%=userz!=null?"<b style='color:blue'>Welcome "+userz.getFirstName()+"</b>":""%></a></li>
                
            </ul>
            
        </div>
    </div>
  <%
    }else{
  %>
  
  <div class="header">
	<div class="topheader">
    	<div class="topheader-inner w1020px marginauto">	
        	<ul class="pull-right">
            <li>
                <a href="${pageContext.request.contextPath}/account">Tài khoản</a>
                </li>
               
                <li><a href="${pageContext.request.contextPath}/cart/">Giỏ hàng</a></li>
                
                <li><a href="${pageContext.request.contextPath}/login">Đăng nhập</a></li>
               
                <li><a href="${pageContext.request.contextPath}/regist">Đăng ký</a></li>

            </ul>
            
        </div>
    </div>
<%
    }
%>
    
    <div class="branch">
    	<div class="w1020px marginauto">
			<div class="pull-left">
            <img src="${pageContext.request.contextPath}/resources/images/icon-logo/logo-260x90.png" />
            </div>
            <div class="pull-right">
            <img src="${pageContext.request.contextPath}/resources/images/icon-logo/banner-top.png" />
            </div>
        </div>
    </div>
    
    <div class="navbar">
    	<div class="navbar-inner">
        	<div class="w1020px marginauto">
            	<ul class="nav " id="header" style="width:100%">
                    <li class="active">
                    <a href="${pageContext.request.contextPath}">Trang chủ</a>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/product">Sản phẩm</a></li>
                    
                    <li><a href="${pageContext.request.contextPath}/aboutUs">Về chúng tôi </a></li>
                    
                    <li><a href="${pageContext.request.contextPath}/news">Tin tức</a></li>
                    
                    <li><a href="${pageContext.request.contextPath}/contact">Liên hệ</a></li>
                    
                    <li><a href="${pageContext.request.contextPath}/help">Q&A</a></li>                
                </ul>
             </div>
        </div>
    </div>

</div>