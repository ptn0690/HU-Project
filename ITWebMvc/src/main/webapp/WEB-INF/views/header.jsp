
<%@page import="com.it.spring.model.Users"%>
<%
Users userz = null;
    if((Users)session.getAttribute("users")!=null){
         userz = (Users)session.getAttribute("users");
   
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
                
                <li><a href="login">Login</a></li>
               
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
                    <li class="active">
                    <a href="index.jsp">Home</a>
                    </li>
                    <li><a href="laptop.jsp">Mobile</a></li>
                    
                    <li><a href="aboutUs.jsp">About Us </a></li>
                    
                    <li><a href="news.jsp">News</a></li>
                    
                    <li><a href="contact.jsp">Contact </a></li>
                    
                    <li><a href="#">Help </a></li>                   
                </ul>
             </div>
        </div>
    </div>

</div>