
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
                <a href="myAccount.jsp">My account</a>
                </li>
               
                <li><a href="shoppingCart.jsp">Shopping cart</a></li>
                
                <li><a href="LogoutServlet">Logout</a></li>
                
                 <li><a href="regist.jsp"><%=userz!=null?"<b style='color:blue'>Welcome "+userz.getFirstName()+"</b>":""%></a></li>
                
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
                <a href="myAccount.jsp">My account</a>
                </li>
               
                <li><a href="shoppingCart.jsp">Shopping cart</a></li>
                
                <li><a href="adminLogin.jsp">Login</a></li>
               
                <li><a href="regist.jsp">Sign in</a></li>

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
                    <li>
                    <a href="admin.jsp">Product</a>
                    <ul>
                    	<li><a href="admin.jsp">Edit Product &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                    	<li><a href="${pageContext.request.contextPath}/category/edit">Edit Product type</a></li>
                    </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/admin/order">Orders</a></li>
                    
                    <li><a href="${pageContext.request.contextPath}/user/edit">User</a></li>
                    
                    <li><a href="adminStatisticPage.jsp">Stastitic</a></li>
                    
                    <li><a href="adminPromotion.jsp">Promotion </a></li>
                                     
                </ul>
             </div>
        </div>
    </div>

</div>