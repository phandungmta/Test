
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="clearfix"></div>
		<div class="hom-slider">			
			<div class="container">
				<div id="sequence">
					<div class="sequence-prev"><i class="fa fa-angle-left"></i></div>
					<div class="sequence-next"><i class="fa fa-angle-right"></i></div>
					<ul class="sequence-canvas">
						<li class="animate-in">
							<div class="flat-caption caption1 formLeft delay300 text-center"><span class="suphead">Prokenex shop</span></div>
							
							<div class="flat-caption caption3 formLeft delay500 text-center">
								<p>Giới hạn nào cho niềm đam mê!<br>Xách vợt lên và đi với đầy đủ phụ kiện được cung cấp bởi Prokennex shop</p>
							</div>
					
                                                        <div class="flat-image formBottom delay200" data-duration="5" data-bottom="true"><img src="<c:url value="/resources/images/slider_mogensen.png"/>" alt=""></div>
						</li>
						<li>
							<div class="flat-caption caption1 formLeft delay400 text-center">
								<h1>Sản phẩm chính hãng</h1>
							</div>
							<div class="flat-caption caption3 formLeft delay400 text-center">
								<h2>Sự hài lòng của khách hàng là tiêu chí hàng đầu<br>Bạn có thể hoàn toàn yên tâm khi lựa chọn sản phẩm của chúng tôi !</h2>
							</div>
                                                    <div class="flat-image formBottom delay200" data-bottom="true"><img src="<c:url value="/resources/images/slider_lee.gif"/>" alt=""></div>
						</li>
						<li>
							<div class="flat-caption caption1 formLeft delay400 text-center">
								<h1>Giao hàng tiện lợi</h1>
							</div>
							<div class="flat-caption caption3 formLeft delay500 text-center">
								<p>Chỉ với một cú click chuột <br>Sản phẩm sẽ đến tay người dùng nhanh nhất có thể</p>
							</div>
                                                    <div class="flat-image formBottom delay200" data-bottom="true"><img src="<c:url value="/resources/images/slider_lindan.png"/>" alt=""></div>
						</li>
					</ul>
				</div>
			</div>
			<div class="promotion-banner">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-sm-4 col-xs-4">
                                                    <div class="promo-box"><img src="<c:url value="/resources/images/anhphu1.jpg"/>" alt=""></div>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-4">
                                                    <div class="promo-box"><img src="<c:url value="/resources/images/anhphu2.jpg"/>" alt=""></div>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-4">
                                                    <div class="promo-box"><img src="<c:url value="/resources/images/anhphu3.jpg"/>" alt=""></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="container_fullwidth">
			<div class="container">
				<div class="hot-products">
					<h3 class="title"><strong>Sản phẩm</strong> Hot</h3>
					<div class="control"><a id="prev_hot" class="prev" href="#">&lt;</a><a id="next_hot" class="next" href="#">&gt;</a></div>
					<ul id="hot">
						<li>
							<div class="row">
                                                            <c:forEach var="item" items="${listProductHot}">
                                                            
                                                                    <div class="col-md-3 col-sm-6">
                                                                            <div class="products">
                                                                                    <div class="offer">Hot</div>
                                                                                    <div class="thumbnail">
                                                                                            <a href="${pageContext.request.contextPath}/product/${item.id}.html">
                                                                                                    <img width="150" height="220" src="${pageContext.request.contextPath}/resources${item.img}" />
                                                                                            </a>
                                                                                    </div>
                                                                                    <div class="productname"> <a href="${pageContext.request.contextPath}/product/${item.id}.html">${item.name}</a></div>
                                                                                    <h4 class="price">${item.price}</h4>
                                                                                    <div class="button_group"><a href="${pageContext.request.contextPath}/cart/add/${item.id}.html" class="btn btn-success">Add To Cart</a></div>
                                                                            </div>
                                                                    </div>
                                                            </c:forEach>
							</div>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
				<div class="featured-products">
					<h3 class="title"><strong>Sản phẩm</strong> Mới</h3>
					<div class="control"><a id="prev_featured" class="prev" href="#">&lt;</a><a id="next_featured" class="next" href="#">&gt;</a></div>
					<ul id="featured">
						<li>
							<div class="row">
                                                            <c:forEach var="item" items="${listProductNew}">
                                                            
                                                                    <div class="col-md-3 col-sm-6">
                                                                            <div class="products">
                                                                                    <div class="offer">New</div>
                                                                                    <div class="thumbnail">
                                                                                            <a href="${pageContext.request.contextPath}/product/${item.id}.html">
                                                                                                    <img width="150" height="220" src="${pageContext.request.contextPath}/resources${item.img}" />
                                                                                            </a>
                                                                                    </div>
                                                                                    <div class="productname">${item.name}</div>
                                                                                    <h4 class="price">${item.price}</h4>
                                                                                    <div class="button_group"><a href="${pageContext.request.contextPath}/cart/add/${item.id}.html" class="btn btn-success">Add To Cart</a></div>
                                                                            </div>
                                                                    </div>
                                                            </c:forEach>
							</div>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
				
			</div>
		</div>
		<div class="clearfix"></div>

    </body>
</html>
