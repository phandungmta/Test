<%-- 
    Document   : header
    Created on : Jun 20, 2019, 10:28:12 PM
    Author     : MINAT0
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.png"/>">
	<title>Prokennex shop</title>
	<link href="<c:url value="/resources/css/bootstrap.css"/>" rel='stylesheet' type='text/css'/>
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
	<link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet">
	<link rel="stylesheet" href="<c:url value="/resources/css/flexslider.css"/>" type="text/css" media="screen" />
	<link href="<c:url value="/resources/css/sequence-looptheme.css"/>" rel="stylesheet" media="all" />
	<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
	<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.~/template/js/1.3.0/respond.min.js"></script><![endif]-->
</head>
<body id="home">
	<div class="wrapper">
		<div class="header">
			<div class="container">
				<div class="row">
					<div class="col-md-2 col-sm-2">
						<div class="logo"><a href="${pageContext.request.contextPath}/home.html"><img src="<c:url value="/resources/images/logo1.png"/>"></a></div>
					</div>
					<div class="col-md-10 col-sm-10">
						<div class="header_top">
							<div class="row">
								<div class="col-md-3">  </div>
								<div class="col-md-6">
									<ul class="topmenu">
										<li><a href="/Test/news">Tin tức</a></li>
										<li><a href="/Test/contact">Liên hệ</a></li>
									</ul>
								</div>
								<div class="col-md-3">
									<ul class="usermenu">
										
                                                                                <c:set var = "i" scope = "session" value = "${sessionScope.id}"/>
                                                                                <c:if test = "${i == 0}">
                                                                              
										
											<li><a href="${pageContext.request.contextPath}/Account/Login.html" class="log">Đăng nhập</a></li>
											<li><a href="${pageContext.request.contextPath}/Account/Register" class="reg">Đăng ký</a></li>
                                                                                </c:if>
                                                                                <c:if test = "${i != 0}">
										
											<li><a href="#" class="log">${sessionScope.account.username}</a></li>
											<li><a href="${pageContext.request.contextPath}/Account/Logout.html" class="log">Đăng xuất</a></li>
                                                                                </c:if>
									</ul>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="header_bottom">
							<ul class="option">
								<li id="search" class="search">
									
								
										<form method="get" action="search"><input class="search-submit" type="submit" value=""><input class="search-input" placeholder="Enter your search term..." type="text" name = "name"></form>							
                                                                	
								</li>
								<li class="option-cart">
									<a href="/Test/cart" class="cart-icon">cart <span class="cart_no"></span></a>
									
								</li>
							</ul>
							<div class="navbar-header"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button></div>
							<div class="navbar-collapse collapse">
                                                            <ul class="nav navbar-nav">
                                                                <li><a href="${pageContext.request.contextPath}/home.html">Trang chủ</a></li>
                                                                    
                                                                    <c:forEach var="item" items="${listCategory}" >
                                                                    
                                                                            <li class="dropdown">
                                                                                   <a href="${pageContext.request.contextPath}/category/${item.id}.html"> ${item.name} cầu lông</a>
                                                                            
                                                                                    <div class="dropdown-menu">
                                                                                            <ul class="mega-menu-links">
                                                                                                <c:forEach var="jtem" items="${listProducer}" varStatus="status">
                                                                                                    
                                                                                                    <li> <a href="${pageContext.request.contextPath}/product/category?categoryid=${item.id}&producerid=${listProducer[status.index].id} ">  ${item.name}  ${listProducer[status.index].name} </a></li>   
                                                                                             </c:forEach> 
                                                                                            </ul>
                                                                                     </div>
                                                                                                                                                
                                                                            </li>
                                                                    </c:forEach>
                                                            </ul>
                                                                    
                                                                           
                                                                   
                                                            
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.10.2.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.easing.1.3.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.sequence-min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.carouFredSel-6.2.1-packed.js"/>"></script>
	<script defer src="<c:url value="/resources/js/jquery.flexslider.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/script.min.js"/>"></script>

</body>
</html>

